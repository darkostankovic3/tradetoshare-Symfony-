/*
Rocket Chat Real Time API Custom Client


even though this code works great I don't know what exactly each event we listen for is doing
you can go back to rocket chat real time api for further declarations

we were able to write this code after we test real normal use case of livechat in a web page
and we listen for WebSocket connection inside the browser Network tab(by filtering ws(WebSocket) connections)
*/

let dst = null;
let need_to_start_video = false;
let need_to_start_audio = false;
var media_data = null;

window.addEventListener('message', (e) => {

  console.log(e.data.eventName);

  if(e.data.eventName == "startup") {
    console.log('startup event is received');
    var iframes = document.querySelectorAll('iframe');
    for(var i in iframes) {
      if(typeof(iframes[i]) == 'object') {
        messagesframeloaded(iframes[i]);
      }
    }
  }

  if(e.data.eventName == "room-opened") {

    var iframes = document.querySelectorAll('iframe');
    var iframe = iframes[iframes.length - 1];

	var id = iframe.getAttribute('id');
        var uname = id.substring(13, id.indexOf('-iframe'));

	if(need_to_start_video) {
        	setTimeout(function() {
        		receive_call(uname, "video", media_data);
        	}, 100);
        } else if(need_to_start_audio) {
        	setTimeout(function() {
        		receive_call(uname, "audio", media_data);
        	}, 100);
        }
	}
});

function start_video_call(uname) {
	var iframe = document.getElementById('chat-content-' + uname + '-iframe');
	var w = iframe.contentWindow || iframe.contentDocument;

	w.postMessage({
		event: "start-video-call",
	}, "*"); // rocket.chat's URL
}

function start_audio_call(uname) {
	var iframe = document.getElementById('chat-content-' + uname + '-iframe');
	var w = iframe.contentWindow || iframe.contentDocument;

	w.postMessage({
		event: "start-audio-call",
	}, "*"); // rocket.chat's URL
}

function receive_call(uname, type, data) {

	var iframe = document.getElementById('chat-content-' + uname + '-iframe');
	var w = iframe.contentWindow || iframe.contentDocument;

	need_to_start_audio = need_to_start_video = false;

        w.postMessage({
                externalCommand: "go",
                path: "/direct/" + data.room 
        }, "*");

	w.postMessage({
		event: "receive-" + type + "-call",
		data: data
	}, "*"); // rocket.chat's URL
}

function messagesframeloaded(iframe) {
	var w = iframe.contentWindow || iframe.contentDocument;

	if(iframe.initialized) return;
	iframe.initialized = true;

	console.log('iframe init callback');

	w.postMessage({
		externalCommand: "login-with-token",
		token: authToken
	}, "*"); // rocket.chat's URL

	var id = iframe.getAttribute('id');
	var uname = iframe.getAttribute('data-room_id');
	if(uname == undefined) {
	    uname = id.substring(13, id.indexOf('-iframe'));
    }

	w.postMessage({
		externalCommand: "go",
        path: "/direct/" + uname
    }, "*");

}

let socket = new WebSocket('wss://' + rocketChatIP + ':' + rocketChatPort + '/websocket');

function update_user_presense(presense) {
	let UserPresence = {
  		msg: 'method',
  		method: 'UserPresence:setDefaultStatus',
  		params: [ presense ],
  		id:String(messagesCount++),
	}

    socket.send(JSON.stringify(UserPresence));
}

//note messageCount is incremented with every message
//but it can works even if you didn't change it
let messagesCount = 1;

let user_id = null;

var statuses = ['offline', 'online', 'away', 'busy', 'invisible'];

// listen to messages passed to this socket
socket.onmessage = function(e) {

	let response = JSON.parse(e.data);
//  console.log('response', response);

    if(response.server_id) {
		// 1 connect
		let connectObject = {
    		msg: 'connect', 
    		version: '1', 
    		support: ['1','pre2','pre1']
		}

    	socket.send(JSON.stringify(connectObject));
    	return;
    }

    if(response.msg == 'connected') {
		// 2 loginByToken
		let loginByToken = {
  			msg:'method',
  			method:'login',
  			params:[
  				{ "resume": String(authToken) }
  			],
  			id:String(messagesCount++),
		}

		socket.send(JSON.stringify(loginByToken));
    	return;
    }

	// you have to pong back if you need to keep the connection alive
	// each ping from server need a 'pong' back
	if(response.msg == 'ping') {
		// 3 ping-pong
//		console.log('pong!');
		socket.send(JSON.stringify({msg: 'pong'}));
		return;
	}

    if(response.msg == 'added') {
    	user_id = response.id;
    }

	if(response.msg == 'updated') {

		let eventSub1 = {
  			msg: 'sub',
  			id: String(messagesCount++),
  			name: 'stream-room-messages',
  			params:[
    			'__my_messages__',
    			false
  			]		
		};

    	socket.send(JSON.stringify(eventSub1));

		let eventSub2 = {
  			msg: 'sub',
  			id: String(messagesCount++),
  			name: 'stream-notify-user',
  			params: [
    			user_id + '/webrtc',
    			false
  			]
		};

    	socket.send(JSON.stringify(eventSub2));

		let eventSub3 = {
  			msg: 'sub',
  			id: String(messagesCount++),
  			name: 'stream-notify-logged',
  			params: [
    			'user-status',
    			false
  			]
		};

    	socket.send(JSON.stringify(eventSub3));
	}
/*
	if(response.msg == 'result' && response.result && response.result.records) {
		for(i in response.result.records) {
			if(typeof(response.result.records[i]) == 'function') {
				continue;
			}
			if(response.result.records[i]._id == dst) {
				response.msg = 'changed';
				response.collection = 'stream-room-messages';
				response.fields = {args: [{u: response.result.records[i]}]};
			}
		}
	}
*/
	if(response.msg === 'changed' && response.collection === 'stream-notify-user' && response.fields.args[0] == 'call') {
//		console.log('user (' +  response.fields.args[1].from + ') started the webrtc call');

		ion.sound.play("door_bell");

		if(response.fields.args[1].media.video) {
			need_to_start_video = true;
		} else {
			need_to_start_audio = true;
		}

		media_data = response.fields.args[1];

		console.log(media_data);

		dst = response.fields.args[1].from;

		$.ajax({
			type: 'POST',
			url: 'https://tradetoshare.com/user/info',
			data: {
				"id": dst
			},
			success: function(data) {

				response.collection = 'stream-room-messages';
				response.fields = {args: [[{u: { name: data.name, username: data.username }, ts: {}, rid: media_data.room }]]};

				let event = {
				  data: JSON.stringify(response)
				};

				socket.onmessage(event);
			}
		});
/*
		let data = {
  			msg: 'method',
  			id: String(messagesCount++),
  			method: 'getUsersOfRoom',
  			params: [
    			 response.fields.args[1].room,
    			 true
  			]
		};

    	socket.send(JSON.stringify(data));

		return;
		
*/
	}

	// here you receive messages from server //notive the event name is: 'stream-room-messages'
	if(response.msg === 'changed' && response.collection === 'stream-room-messages') {
//		console.log('msg received ' ,response.fields.args[0].msg, 'timestamp ', response.fields.args[0].ts.$date, 'from ' + response.fields.args[0].u.username);

		var uname = response.fields.args[0][0].u.username;
		var room_id = response.fields.args[0][0].rid;

		var me = "u" + document.querySelector('.mdl-navigation__link').getAttribute('href').substring(15);

		if(uname == me) {
		  return;
		}

		var dialog = document.getElementById("chat-window-" + uname);

		if(typeof(dialog) == 'undefined' || dialog == null) {

			var el = $("<dialog/>");
			el.attr("id", "chat-window-" + uname);
			el.addClass("mdl-dialog");
			el.attr("style", "width: 600px; height: 600px; max-width: 100%; max-height: 100%;");

			$("body").append(el);

			dialog = document.getElementById("chat-window-" + uname);
			dialogPolyfill.registerDialog(dialog);

		} else {
			if(typeof(dialog.showModal) == 'function') {
				if(!dialog.hasAttribute('open')) {
					dialog.showModal();
				}
			}
			need_to_start_video = false;
			need_to_start_audio = false;

			var iframe = document.getElementById("chat-content-" + uname + "-iframe");
                        var w = iframe.contentWindow || iframe.contentDocument;

		        w.postMessage({
                		externalCommand: "go",
       			 	path: "/direct/" + room_id 
    			}, "*");

			return;
		}

		dialog.showModal();
		dialog.addEventListener('click', function (event) {
    		var rect = dialog.getBoundingClientRect();
    		var isInDialog=(rect.top <= event.clientY && event.clientY <= rect.top + rect.height && rect.left <= event.clientX && event.clientX <= rect.left + rect.width);
    		if (!isInDialog) {
        		dialog.close();
    		}
		});
		dialog.addEventListener('close', function (event) {
         	$(dialog).remove();
 		});

		$(dialog).addClass('chat-content').html("<div class=\"mdl-list\" style=\"text-align: left; padding-bottom: 0; padding-top: 0; padding-right: 0; background-color: #fff; border-bottom: 1px solid #ddd;\">\
\
					  <div class=\"mdl-list__item mdl-list__item--two-line\" style=\"padding-right: 10px; padding-top: 10px; padding-bottom: 10px\">\
					    <a class=\"mdl-list__item-primary-content\">\
					       <span class=\"user-presense-" + uname.substring(1) + " presense\"></span>\
					       <img class=\"mdl-list__item-avatar\" src=\"/user/avatar/" + uname.substring(1) + "\">\
					       <span><strong>" + response.fields.args[0][0].u.name + "</strong></span>\
					       <span class=\"mdl-list__item-sub-title\"></span>\
					    </a>\
					    <div class=\"mdl-list__item-secondary-action\">\
\
							<button onclick=\"start_audio_call('" + uname + "')\" class=\"mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-color-text--blue-600\" style=\"box-shadow: none; background-color: transparent; \">\
			  					<i class=\"material-icons\">call</i>\
							</button>\
\
							<button onclick=\"start_video_call('" + uname + "')\" class=\"mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-color-text--blue-600\" style=\"box-shadow: none; background-color: transparent;\">\
			  					<i class=\"material-icons\">videocam</i>\
							</button>\
\						</div>\
					</div>\
\
					</div><iframe data-room_id=\"" + room_id + "\" allowfullscreen id=\"chat-content-" + uname + "-iframe\" allow=\"geolocation; microphone; camera; fullscreen\" style=\"height: calc(100% - 73px)\" src=\"https://tradetoshare.com:8080/account/profile?layout=embedded\"></iframe>");


       	$.ajax({
           	url: '/user/presense',
            data: {
             	id: uname.substring(1)
            },
            type: "POST",
            success: function(data) {
				$("span.user-presense-" + uname.substring(1)).removeClass('offline').removeClass('busy').removeClass('away').removeClass('online').removeClass('invisible').addClass(data.status);
				$("a.user-presense-" + uname.substring(1)).attr("data-presense", data.status);
            }
        });

		return;
	}

	if(response.msg === 'changed' && response.collection === 'stream-notify-logged' && response.fields.eventName == 'user-status') {
//		console.log('user (' +  response.fields.args[0][1] + ') changed their status to ' + statuses[response.fields.args[0][2]]);
		$("span.user-presense-" + response.fields.args[0][1].substring(1)).removeClass('offline').removeClass('busy').removeClass('away').removeClass('online').removeClass('invisible').addClass(statuses[response.fields.args[0][2]]);
		$("a.user-presense-" + response.fields.args[0][1].substring(1)).attr("data-presense", statuses[response.fields.args[0][2]]);
		return;
	}

	// receive all messages which will only succeed if you already have messages
	// in the room (or in case you send the first message immediately you can listen for history correctly)
//	if(response.msg === 'result' && response.result){
//		if(response.result.messages){
//			let allMsgs =  response.result.messages;
//			console.log('-----previous msgs---------------');
//			allMsgs.map(x => console.log(x))
//			console.log('---------------------------------')
//		}
//	}
}

//////////////////////////////////////////////
// steps to achieve the connection to the rocket chat real time api through WebSocket


//////////////////////////////////////////////


/*
//////////////////////////////////////////////

//2 getInitialData
let getInitialDataObject = {
    msg: 'method', 
    method: 'livechat:getInitialData', 
    params: [String(chatToken), null],
    id: String(messagesCount++),
}

setTimeout(()=>{
    socket.send(JSON.stringify(getInitialDataObject));
},2000)

//////////////////////////////////////////////

//3 loginByToken
let loginByToken = {
  msg:'method',
  method:'livechat:loginByToken',
  params:[String(chatToken)],
  id:String(messagesCount++),
}

setTimeout(()=>{
    socket.send(JSON.stringify(loginByToken));
},3000)

//////////////////////////////////////////////

//4 subscribtion 
let subObj = {
  msg:'sub',
  id:subId,
  name:'meteor.loginServiceConfiguration',
  params:[]
}

setTimeout(()=>{
    socket.send(JSON.stringify(subObj));
},4000)

//////////////////////////////////////////////

//5 register // you may skip this if you alredy registered
// or you can re use it even though you are registered.. no problems
// the crucial part is the `chatToken` and later on the `chatRoomId`

let registerObj = {
  msg:'method',
  method:'livechat:registerGuest',
  params:[{
    token:chatToken,
    name: name,
    email:email,'department':null
  }],
  id:String(messagesCount++),
};


setTimeout(()=>{
    socket.send(JSON.stringify(registerObj));
},5000)

//////////////////////////////////////////////////

//6 stream-notify-room

let streamNotifyObj = {
  msg:'method',
  method:'stream-notify-room',
  params:[
  'null/typing',
  guestName,true,{token:String(chatToken)}
  ],
  id:String(messagesCount++)
};

setTimeout(()=>{
    socket.send(JSON.stringify(streamNotifyObj));
},6000)

//////////////////////////////////////////////////

//7 send a msg //use the same method to send your own messages again when you are all connected
let myMsg = {
  msg:'method',
  method:'sendMessageLivechat',
  params:[{
    _id:String(generateHash(17)),
    rid:chatRoomId,
    msg:'first message',
    token:String(chatToken),
  },null],
  id:String(messagesCount++),
}


setTimeout(()=>{
    socket.send(JSON.stringify(myMsg));
},7000)

//////////////////////////////////////////////////

//8 send userPresence
let UserPresence = {
  msg:'method',
  method:'UserPresence:connect',
  params:[
    String(chatToken),
    {visitor:String(chatToken)}
  ],
  id:String(messagesCount++)
}

setTimeout(()=>{
    socket.send(JSON.stringify(UserPresence));
},8000)

/////////////////////////////////////////////////

//9 loadHistory of old messages 

let loadHistory = {
  msg:'method',
  method:'livechat:loadHistory',
  params:[{
    token:String(chatToken),
    rid:String(chatRoomId),
    ts:{ $date: new Date().getTime() }, //current point of time
    limit:50
  }],
  id:String(messagesCount++)
};

setTimeout(()=>{
    socket.send(JSON.stringify(loadHistory));
},9000)


/////////////////////////////////////////////////

// 10 stream-room-messages
// listen to all received messages


/////////////////////////////////////////////////

// 11 getAgentData
let getAgentData = {
  msg:'method',
  method:'livechat:getAgentData',
  params:[{
    roomId:String(chatRoomId),
    token:String(chatToken),
  }],
  id:String(messagesCount++)
}

setTimeout(()=>{
    socket.send(JSON.stringify(getAgentData));
},11000)

/////////////////////////////////////////////////

//12 stream-livechat-room
let streamLivechatRoom = {
  msg:'sub',
  id:String(streamLivechatchatRoomId),
  name:'stream-livechat-room',
  params:[
  String(chatRoomId),
  {
    useCollection:false,
    args:[{'visitorToken':String(chatToken)}]
  }]
}

setTimeout(()=>{
    socket.send(JSON.stringify(streamLivechatRoom));
},12000)

//////////////////////////////////////////

//13 stream-notify-room
let steamNotifyRoomSub = {
  msg:'sub',
  id:String(steamNotifyRoomSubId),
  name:'stream-notify-room',
  params:[
  `${String(chatRoomId)}/typing`,
  {
    useCollection:false,args:[{token:String(chatToken)}]
  }]
}

setTimeout(()=>{
    socket.send(JSON.stringify(steamNotifyRoomSub));
},13000)

//////////////////////////////////////

//14 userpresence 2
let UserPresence2 = {
  msg:'method',
  method:'UserPresence:online',
  params:[String(chatToken)],
  id:String(messagesCount++),
}

setTimeout(()=>{
    socket.send(JSON.stringify(UserPresence2));
},14000)


//////////////////////////////////////
*/

//use it to send new messages
function sendNewMsg(msg, messagesCount){

  let myMsg = {
    msg: 'method',
    method: 'sendMessageLivechat',
    params: [{
      _id: String(generateHash(17)),
      rid: chatRoomId,
      msg: String(msg),
      token: String(chatToken),
    },null],
    id:String(messagesCount++),
  }

  setTimeout(()=>{
      socket.send(JSON.stringify(myMsg));
  },500);

}


function generateHash(targetLength) {
  var text = '';
  var possible = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

  for (var i = 0; i < targetLength; i++)
    text += possible.charAt(Math.floor(Math.random() * possible.length));

  return text;
}

document.addEventListener('DOMContentLoaded', function() {

    $(".send-message").click(function (e) {
        e.preventDefault();

        var user_id = e.target.getAttribute('data-user-id');
        var user_name = e.target.getAttribute('data-user-name');

            let msg = {
  				msg: 'changed',
  				collection: 'stream-room-messages',
  				id: String(messagesCount++),
  				fields: {
  					args: [
  						[
  							{
  								u: {
  									username: 'u' + user_id,
  									name: user_name
  								},
  								rid: 'u' + user_id
  							}
  						]
  					]
  				}
			};

            socket.onmessage({
            	data: JSON.stringify(msg)
            });
        });

});





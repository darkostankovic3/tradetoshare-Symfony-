-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2019 at 07:59 AM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tradetoshare_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `allow_comments` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `post_id`, `text`, `created_at`, `updated_at`) VALUES
(1, 318, 10, 'asdasd', '2019-02-18 08:42:36', '2019-02-18 08:42:36'),
(2, 318, 10, 'asdsadsad', '2019-02-18 08:42:45', '2019-02-18 08:42:45'),
(3, 318, 10, 'asdasdasdasdasdfgrey47y6', '2019-02-18 08:42:52', '2019-02-18 08:42:52'),
(4, 284, 11, 'hi', '2019-02-26 03:27:25', '2019-02-26 03:27:25'),
(5, 285, 14, 'how are you?', '2019-04-05 02:23:17', '2019-04-05 02:23:17'),
(6, 285, 14, 'hei', '2019-04-11 00:45:18', '2019-04-11 00:45:18'),
(7, 295, 14, 'he', '2019-04-11 00:57:32', '2019-04-11 00:57:32'),
(8, 295, 19, 'hi there', '2019-08-05 11:03:59', '2019-08-05 11:03:59'),
(9, 370, 20, 'some comment is going here', '2019-09-24 13:30:06', '2019-09-24 13:30:06'),
(10, 370, 22, 'some comment is going here', '2019-09-24 13:30:13', '2019-09-24 13:30:13'),
(11, 285, 20, 'yes', '2019-09-27 12:27:35', '2019-09-27 12:27:35'),
(12, 287, 21, 'hi', '2019-11-02 21:58:37', '2019-11-02 21:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `yearFounded` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `industry` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `message`) VALUES
(1, 'Brooke Smith', 'brookecvsulsmith@aol.com', '(805) 372-1751', 'Hi,\r\n  You have a great website.  May I ask how your SEO is doing?\r\n\r\nDo you have enough people coming to your website?\r\n\r\nWe can help improve your SEO.  \r\n\r\nhttps://www.leadaccelerator.top/seo2?=tradetoshare.com\r\n\r\nRegards,\r\nBrooke\r\nSEO Expert\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding seo for your business, please remove yourself here: https://www.leadaccelerator.top/out.php/?site=tradetoshare.com'),
(2, 'Samual Parkhurst', 'meskerock@gmail.com', '077 6155 5755', 'Hi there\r\n\r\nAll Nike Shoes and Air Jordan are 49.95 dollars with free shipping.  Satisfaction Guaranteed.  Please visit our site: www.nikesales .us\r\n\r\nBest Wishes,\r\n\r\nAd Width Us - ShenBridge'),
(3, 'Brian Sherman', 'visitorsjanuary@email.com', '111-111-1111', 'Hi,\r\n\r\nWould you like 5,000 visitors coming to your website in one week?\r\nThese are people who are interested in seeing what you have to offer.\r\n\r\nVisitors come from online publications in your niche via\r\nfull page popups of your website. \r\n\r\nOur service is like no other.\r\n\r\nGet 5,000 interested visitors in 7 days for $54.99.\r\n\r\nLarger discounted packages available.\r\n\r\nFor more info please go to https://traffic-stampede.com\r\n\r\nHope to see you on our site.\r\n\r\nBest,\r\nBrian\r\nTS'),
(4, 'Hannah Martin', 'hannahqevz0martin@aol.com', '573-738-8918', 'Found your site today and I liked how good it looked.  However I do have a question, could your site handle more traffic?  \r\n\r\nWe can drive guaranteed targeted visitors to your site based multiple factors.\r\n\r\nIf you want more site visitors you can see more here:\r\n\r\nhttps://choicetraffic.icu/up?=tradetoshare.com\r\n\r\nHannah\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nNot the right commercial message for you?  All good, we don’t\' want to bother you, please opt out here:  https://choicetraffic.icu/unsubscribe.php?site=tradetoshare.com'),
(5, 'Charlotte', 'noreply@noboostnoglory.club', '06-83944365', 'Hi!\r\n\r\nI hope you are having an amazing day so far :) I just wanted to ask if you need any help with your Instagram growth. Would you like to grow your Instagram account organically with real, active followers? Our small and friendly agency www.noboostnoglory.com can help you! You will generate an organic following of real, genuine people who fit your target group.\r\n\r\nNo bots. No fake accounts. No spam behavior. \r\n\r\n\r\n*** HOW WE WORK\r\n\r\nAfter defining your target audience we will follow the most engaged users, who are commenting and liking recent posts in your niche. This will spark their curiosity and, if they like your feed, they will follow you back. After 3 to 4 days we will identify the accounts to unfollow. We will never unfollow someone you followed.\r\n\r\nYou can focus on creating a follow-worthy Instagram profile by publishing your content and engage with your current users. We will concentrate on targeting new users. \r\n\r\n*** OUR CLIENTS\r\n\r\nhttps://www.instagram.com/innsides I Interior I 1300 foll/month I Happy client for 2 years\r\nhttps://www.instagram.com/marievonbismarck I Interior  I 1200 foll/month I Happy client for 1,5 years\r\nhttps://www.instagram.com/niceguy.freddie I Ecommerce I 1100 foll/month I Most recent client \r\n \r\n\r\n*** OUR OFFER\r\n\r\nYou only pay $14 for your first 14 days. After the 14-day trail our monthly plan is 69$, for which you will gain 800 - 1600 new followers per month. \r\n\r\n\r\nIf you have any questions, just let me know, I\'m happy to help. You can contact me at hi@noboostnoglory.club\r\n\r\n\r\nHave a wonderful day,\r\n\r\nCharlotte van Mooi\r\n\r\nhttps://www.noboostnoglory.club\r\nhi@noboostnoglory.club'),
(6, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nYou have a website, right? \r\n  \r\nOf course you do. I found tradetoshare.com today.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says:\r\n-Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nOur software, Talk With Customer, makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to find out how.\r\n\r\nSincerely,\r\n\r\nEric Jones\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\n-EMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - Patrick MontesDeOca, Ema2Trade\r\n\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(7, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nYou have a website, right? \r\n  \r\nOf course you do. I found tradetoshare.com today.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says:\r\n-Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nOur software, Talk With Customer, makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to find out how.\r\n\r\nSincerely,\r\n\r\nEric Jones\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\n-EMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - Patrick MontesDeOca, Ema2Trade\r\n\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(8, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nYou have a website, right? \r\n  \r\nOf course you do. I found tradetoshare.com today.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says:\r\n-Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nOur software, Talk With Customer, makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to find out how.\r\n\r\nSincerely,\r\n\r\nEric Jones\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\n-EMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - Patrick MontesDeOca, Ema2Trade\r\n\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(9, 'Rachel Miller', 'cumdths@aol.com', '(805) 371-1837', 'Hey, this is really cool, helps get traffic and make dollars\r\n\r\nhttp://trafficstorm.top/st/?=tradetoshare.com\r\n\r\nKind of nice to have another option up my sleeve when it comes to making some more dollars.  Hope it helps you too.\r\n\r\nRachel M\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4 Long Shoals Rd\r\nSte B\r\nArden, NC 28704\r\n\r\nMy apologies if this commercial message was not relevant for you. To prevent any future correspondence please visit: http://trafficstorm.top/agone.php/?site=tradetoshare.com'),
(10, 'Hannah Martin', 'hannahqevz0martin@aol.com', '573-738-8918', 'Found your site today and I liked how good it looked.  However I do have a question, could your site handle more traffic?  \r\n\r\nWe can drive guaranteed targeted visitors to your site based multiple factors.\r\n\r\nIf you want more site visitors you can see more here:\r\n\r\nhttps://choicetraffic.icu/up?=tradetoshare.com\r\n\r\nHannah\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nNot the right commercial message for you?  All good, we don’t\' want to bother you, please opt out here:  https://choicetraffic.icu/unsubscribe.php?site=tradetoshare.com'),
(11, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nYou have a website, right? \r\n  \r\nOf course you do. I found tradetoshare.com today.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says:\r\n-Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nOur software, Talk With Customer, makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to find out how.\r\n\r\nSincerely,\r\n\r\nEric Jones\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\n-EMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - Patrick MontesDeOca, Ema2Trade\r\n\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(12, 'Slyvia Phillips', 's.phillips@stillmoreseats.xyz', '556-713-8456', 'Your RSVP link https://stillmoreseats.xyz/tl/?=tradetoshare.com\r\n\r\n    This will be a memory to remember and talk about forever...lol Not many people can say they got to meet and talk to Tony and Dean for an hour+ ... I already ran the tickets on my expense account ;-)\r\n\r\nSlyvia\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n4LongShoalsRd\r\nSuiteB433\r\nArdenNC28704\r\n\r\nNo worries if this type of messages isn\'t for you, you can avoid them here: https://stillmoreseats.xyz/agone.php/?site=tradetoshare.com'),
(13, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nYou know it’s true.\r\n\r\nYour competition just can’t hold a candle to the way you DELIVER real solutions to your customers at tradetoshare.com\r\n\r\nBut it’s a shame when good people who need what you have to offer wind up settling for second best or even worse.\r\n  \r\nNot only do they deserve better, you deserve to be at the top of their list.\r\n \r\nTalkWithCustomer can reliably turn your website into a serious, lead generating machine.\r\n \r\nWith TalkWithCustomer installed on your site, visitors can either call you immediately or schedule a call for you in the future.\r\n  \r\nAnd the difference to your business can be staggering – up to 100X more leads could be yours, just by giving TalkWithCustomer a FREE 14 Day Test Drive.\r\n \r\nThere’s absolutely NO risk to you, so CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now. \r\n \r\nTons more leads? You deserve it.\r\n\r\nSincerely,\r\nAndy\r\n\r\nPS:  Odds are, you won’t have long to wait before seeing results:\r\n-This service makes an immediate difference in getting people on the phone right away before they have a chance to turn around and surf off to a competitor’s website.- David Traylor, Traylor Law Firm\r\n  \r\nWhy wait any longer?  \r\n\r\nCLICK HERE http://www.talkwithcustomer.com to take the FREE 14-Day Test Drive and start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(14, 'Brooke Smith', 'brookecvsulsmith@aol.com', '(805) 372-1751', 'Hi,\r\n  You have a great website.  May I ask how your SEO is doing?\r\n\r\nDo you have enough people coming to your website?\r\n\r\nWe can help improve your SEO.  \r\n\r\nhttps://businessseo.top/wal/?=tradetoshare.com\r\n\r\nRegards,\r\nBrooke\r\nSEO Expert\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding seo for your business, please remove yourself here: https://www.businessseo.top/out.php/?site=tradetoshare.com'),
(15, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello,\r\n\r\nLet’s take a quick trip to Tomorrow-land.\r\n\r\nI’m not talking about a theme park, I’m talking about your business’s future…\r\n\r\nDon’t worry, we won’t even need a crystal ball.  \r\n\r\nJust imagine…\r\n\r\n… a future where the money you invest in driving traffic to your tradetoshare.com site pays off with tons of calls from qualified leads. \r\n\r\nAnd the difference between what you experienced in the past is staggering – you’re seeing 10X, 20X, 50X, even up to a 100X more leads coming from your tradetoshare.com website.  Leads that are already engaged with what you have to offer and are ready to learn more and even open their wallets.\r\n\r\nSeeing all this taking place in your business, you think back: \r\n\r\n“What did I do only a short time ago that made such a huge difference?”\r\n\r\nAnd then it hits you:  \r\n\r\nYou took advantage of a free 14 day Test Drive of TalkWithCustomer.\r\n\r\nYou installed TalkWithCustomer on your website – it was a snap.\r\n\r\nAnd practically overnight customers started engaging more regularly and calling your business. Like this:\r\n\r\n”EMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads.”  - Pat MontesDeOca\r\n\r\nSince you installed TalkWithCustomer it’s been great.\r\n\r\nIt’s fun to dream, but this isn’t just a dream. It could be your very real tomorrow. \r\n\r\nAll you have to do is CLICK HERE http://www.talkwithcustomer.com to sign up to try TalkWithCustomer today.\r\n\r\nNot tomorrow. Today.\r\n\r\nBecause there’s no better time than now to make your business work the way you’ve always wanted. \r\n\r\nSincerely,\r\nEric\r\n\r\nPS: Remember, there’s absolutely NO risk to you – if you’re 100% satisfied after the 14 days pass, there’s no obligation.  And even ONE more lead-turned-into-customer could be worth hundreds, even thousands to you over their lifetime. Don’t let the moment pass you by.  CLICK HERE http://www.talkwithcustomer.com to sign up for this free test drive now.  \r\n\r\nIf you\'d like to unsubscribe click here. http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(16, 'c7c6f2p3', 'ueeuzxkp@gmail.com', '85134626185', '<a href=\" https://writemyessayy.us/ \">please help me write my essay</a>, write my admission essay \r\ncan i get someone to write my essay - <a href=\" https://writemyessayy.us/ \">write my essay 4 me</a> \r\nhttps://writemyessayy.us/'),
(17, 'Hannah Martin', 'hannahqevz0martin@aol.com', '573-738-8918', 'You look like a solid company based on your site, I assume you do well. \r\n\r\nMy question for you is, do you have the infrastructure/sales/support in place to handle considerably more sales?\r\n\r\nWe find people that are interested in your niche and send them to you.  Find out how we can send you more potential leads:\r\n\r\nhttps://roipatron.icu/up?=tradetoshare.com\r\n\r\nHannah\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nNot the right marketing message for you?  If not, please opt out here:  https://roipatron.icu/unsubscribe.php?site=tradetoshare.com'),
(18, 'Stacey Hutton', 'a1.quality@tutanota.com', '000-000-0000', 'Hi,\r\n\r\nWould you like 5k to 12k interested visitors to your website fast?\r\n\r\nPeople wanting to see your site will come from online publications in your category.\r\nThis is real targeted traffic.\r\n \r\nGet 5,000 interested visitors in one week for $54.95.\r\nThis Weeks Sale - 12,000 for $74.95\r\n\r\nI hope to see you on our site.\r\n\r\nBest,\r\nStacey\r\nhttps://traffic-stampede.com'),
(19, 'Aly Chiman', 'aly1@alychidesigns.com', '462 1303', 'Hello there, My name is Aly and I would like to know if you would have any interest to have your website here at tradetoshare.com  promoted as a resource on our blog alychidesign.com ?\r\n\r\n We are  updating our do-follow broken link resources to include current and up to date resources for our readers. If you may be interested in being included as a resource on our blog, please let me know.\r\n\r\n Thanks, Aly'),
(20, 'Robert Harden', 'rob@consumermax.icu', '573-738-8918', 'Business is going well it seems, good job with that!  \r\n\r\nWe run a global advertising network that can drive more traffic for you.  \r\n\r\nDo you need more targeted traffic to your website?\r\n\r\nhttps://consumermax.icu/up?=tradetoshare.com\r\n\r\nRob\r\nconsumermax.icu\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nIf you wish not to receive future marketing messages about traffic, you can skip them here:  https://consumermax.icu/unsubscribe.php?site=tradetoshare.com'),
(21, 'Stacey Hutton', 'smartvisits1@tutanota.com', '111-111-1111', 'Hi,\r\n\r\nWe are having website visitors sale today. \r\n\r\nWould you like 6,000 to 12,000 interested visitors to your website fast?\r\nThese are people who want to see your site coming from online publications in your category.\r\nThis is real targeted traffic.\r\n \r\nToday through Sunday\r\nGet 5,000 interested visitors plus 1,000 free in one week for $54.95.\r\n\r\nWe look forward to sending new people to your website.\r\n\r\nBest,\r\nStacey\r\nhttps://traffic-stampede.com'),
(22, 'Eric', 'eric@talkwithcustomer.com', '416-385-3200', 'Hello tradetoshare.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve checked out your website tradetoshare.com.\r\n- NOT with a form letter style email that looks like it was written by a bot.\r\n- NOT with a robocall that could come at any time out of the blue.\r\n\r\nTalkWithCustomer connects you to that person within seconds of THEM asking to hear from YOU.\r\n\r\nThey kick off the conversation.\r\n\r\nThey take that first step.\r\n\r\nThey ask to hear from you regarding what you have to offer and how it can make their life better. \r\n\r\nAnd it happens almost immediately. In real time. While they’re still looking over your website tradetoshare.com, trying to make up their mind whether you are right for them.\r\n\r\nWhen you connect with them at that very moment it’s the ultimate in Perfect Timing – as one famous marketer put it, “you’re entering the conversation already going on in their mind.”\r\n\r\nYou can’t find a better opportunity than that.\r\n\r\nAnd you can’t find an easier way to seize that chance than TalkWithCustomer. \r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive and see what a difference “Perfect Timing” can make to your business.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS:  If you’re wondering whether NOW is the perfect time to try TalkWithCustomer, ask yourself this:\r\n“Will doing what I’m already doing now produce up to 100X more leads?”\r\nBecause those are the kinds of results we know TalkWithCustomer can deliver.  \r\nIt shouldn’t even be a question, especially since it will cost you ZERO to give it a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start your free 14-day test drive today.\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(23, 'George Martin', 'george1@georgemartinjr.com', '(02) 4036 7329', 'Would you be interested in submitting a guest post on georgemartjr.com or possibly allowing us to submit a post to tradetoshare.com ? Maybe you know by now that links are essential\r\nto building a brand online? If you are interested in submitting a post and obtaining a link to tradetoshare.com , let me know and we will get it published in a speedy manner to our blog.\r\n\r\nHope to hear from you soon\r\nGeorge'),
(24, 'Carmen Carries', 'carmenc@roivisitors.icu', '573-738-8918', 'Id like to introduce you to a service that connects you with people interested in your business.  This point and click service is simple and easy because we do all the work for you.  \r\n\r\nDiscover how you can get new customers today:\r\n\r\nhttps://roivisitors.icu/up/?=tradetoshare.com\r\n\r\nRegards\r\nCarmen\r\nTraffic Expert\r\nChoice Traffic\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Drive Suite #731 Jonesboro, AR 72401\r\n\r\nIf you did not like this marketing message you  may avoid future ones here:  https://roivisitors.icu/unsubscribe.php?site=tradetoshare.com'),
(25, 'Megan Rodriguez', 'megan.rodriguez@businessintsa.xyz', '(805) 372-1751', 'Hi,\r\nI had a look at your Instagram Instagram and it looks pretty good.  \r\n \r\nThe question I have is this, is your Instagram giving you the traffic and engagement that you deserve?  \r\n \r\nWe help people organically increase their followers and engagement.  Discover how we can help you get the genuine followers you deserve:\r\n\r\nhttps://businessintsa.xyz/wal/?=tradetoshare.com\r\n\r\nRegards,\r\nMegan\r\nInstagram Growth Specialist\r\nSEO Vale\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n500 Westover Dr #12733\r\nSanford, NC 27330\r\n\r\nIf you prefer not to receive commercial messages regarding Instagram for your website, please opt out here: https://www.businessintsa.xyz/out.php/?site=tradetoshare.com'),
(26, 'Robert McCabe', 'ds1@monemail.com', '555-555-1111', 'Hi,\r\n\r\nI came across your website and thought you may be interested.\r\n \r\nWe are the supplier of turnkey dropshipping websites.\r\nThe average markup on products is 300%\r\n\r\nYou keep all of the profit on every sale.\r\nNo stock, No headaches, all items are dropshipped direcly from the supplier.\r\n\r\nSocial media marketing materials included to help get you sales.\r\nThere are no monthly fees -  domain and hosting are also n/c.\r\n\r\nTo see our latest available dropship stores please visit us at https://dropshippingincome.com\r\n\r\nWe look forward to seing you there. \r\n\r\nRegards,\r\nRobert \r\nDSI'),
(27, 'Kathern', 'valda4@gmail.com', '86575574947', 'Hello there \r\n \r\nBuy all styles of Oakley & Ray Ban Sunglasses only 19.95 dollars.  Paypal Accepted. 100% Satisfaction Guaranteed. \r\n \r\nIf interested, please visit our site: www.raybanoutlets.online \r\n \r\n \r\nRegards, \r\n \r\nAd Width Us - ShenBridge - tradetoshare.com'),
(28, 'Katherine Brown', 'katherine.brown@greatconsumer.icu', '573-738-8918', 'After visiting your website, I will say its a pretty stunning site.  ;) \r\n\r\nHave you ever discovered it to be challenging to get a lot of traffic to your site?  \r\n\r\nDiscover how we can send you guaranteed people that are targeted to your niche.  \r\n\r\nhttps://greatconsumer.icu/boost?=tradetoshare.com\r\n\r\nIf you check out the trial we would love to hear what you think.  \r\n\r\nKatherine\r\nTraffic Expert\r\nChoice Visitors\r\n\r\n\r\n\r\n\r\n\r\n361 Southwest Dr Suite #731 Jonesboro, Arkansas 72401\r\n\r\nIf this commercial message isn\'t right for you, you can avoid future messages by going here:  https://greatconsumer.icu/unsubscribe.php?site=tradetoshare.com'),
(29, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-3200', 'Hey,\r\n\r\nYou have a website tradetoshare.com, right?\r\n\r\nOf course you do. I am looking at your website now.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says: Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nTalkWithCustomer makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive to find out how.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\nEMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - P MontesDeOca.\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(30, 'Ryan C', 'projobnetwork1@outlook.com', '000-000-0000', 'I came across your website and just wanted to reach\r\nout to see if you\'re hiring? \r\n\r\nIf so, I\'d like to extend an offer to post to top job sites like\r\nZipRecruiter, Glassdoor, TopUSAJobs, and more at no cost\r\nfor two weeks. \r\n\r\nHere are some of the key benefits: \r\n\r\n-- Post to top job sites with one click \r\n-- Manage all candidates in one place \r\n-- No cost for two weeks \r\n\r\nYou can post your job openings now by going to our website below: \r\n\r\n>> TryProJob [dot] com \r\n\r\n* Please use offer code 987FREE -- Expires Soon * \r\n\r\nThanks for your time, \r\nRyan C. \r\n\r\nPro Job Network \r\n10451 Twin Rivers Rd #279 \r\nColumbia, MD 21044 \r\n\r\nTo OPT OUT, please email ryanc [at] pjnmail [dot] com\r\nwith \"REMOVE tradetoshare.com\" in the subject line.'),
(31, 'Eric Jones', 'eric@talkwithcustomer.com', '416-385-3200', 'Hi,\r\n\r\nMy name is Eric and I was looking at a few different sites online and came across your site tradetoshare.com.  I must say - your website is very impressive.  I am seeing your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithCustomer is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot! Best feature of all, International Long Distance Calling is included!\r\n  \r\nTry TalkWithCustomer Live Demo now to see exactly how it works.  Visit http://www.talkwithcustomer.com\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We have a 14 days trial.  Visit http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nThanks and Best Regards,\r\nEric\r\n\r\nIf you\'d like to unsubscribe go to http://liveserveronline.com/talkwithcustomer.aspx?d=tradetoshare.com'),
(32, 'Johnson Schnaars', 'noreplymonkeydigital@gmai.com', '31-20-30-42', 'Get backlinks from websites which have Domain Authority above 50. Very rare and hard to get backlinks. Order today at a very low price, while the offer lasts.\r\n\r\nread more:\r\nhttps://www.monkeydigital.co/product/250-da-50-backlinks/\r\n\r\nthanks and regards\r\nMonkey Digital Team\r\nsupport@monkeydigital.co'),
(33, 'Ryan C', 'projobnetwork2@outlook.com', '000-000-0000', 'I came across your website (http://tradetoshare.com/feedback/new) and just wanted to reach\r\nout to see if you\'re hiring? \r\n\r\nIf so, I\'d like to extend an offer to post to top job sites like\r\nZipRecruiter, Glassdoor, TopUSAJobs, and more at no cost\r\nfor two weeks. \r\n\r\nHere are some of the key benefits: \r\n\r\n-- Post to top job sites with one click \r\n-- Manage all candidates in one place \r\n-- No cost for two weeks \r\n\r\nYou can post your job openings now by going to our website below: \r\n\r\n>> TryProJob [dot] com \r\n\r\n* Please use offer code 987FREE -- Expires Soon * \r\n\r\nThanks for your time, \r\nRyan C. \r\n\r\nPro Job Network \r\n10451 Twin Rivers Rd #279 \r\nColumbia, MD 21044 \r\n\r\nTo OPT OUT, please email ryanc [at] pjnmail [dot] com\r\nwith \"REMOVE tradetoshare.com\" in the subject line.'),
(34, 'Tina Strader', 'noreplygooglealexarank@gmail.com', '(03) 6255 4273', 'hi there\r\nWe all know there are no tricks with google anymore\r\nSo, instead of looking for ways to trick google, why not perform a whitehat results driven monthly SEO Plan for  tradetoshare.com instead.\r\n\r\nCheck out our plans\r\nhttps://googlealexarank.com/index.php/seo-packages/\r\n\r\nWe know how to get you into top safely, without risking your investment during google updates\r\n\r\nFor a free quote:\r\nhttps://www.googlealexarank.com/index.php/seo-quote/\r\n\r\nthanks and regards\r\nTop SEO Experts'),
(35, 'Ryan C', 'ryanc@pjnmail.com', '000-000-0000', 'Are you hiring?\r\n\r\nIf so, we can help you hire the right person, fast.\r\n\r\n- Top job sites with one submission\r\n- All candidates in one place\r\n- No charge for TWO WEEKS\r\n\r\nPost Jobs Now for FREE for Two Weeks:\r\n\r\nhttp://www.TryProJob.com\r\n\r\n* Use offer code 987FREE -- Expires Soon. *\r\n\r\nPro Job Network \r\n10451 Twin Rivers Rd #279 \r\nColumbia, MD 21044 \r\n\r\nTo OPT OUT, please email ryanc@pjnmail.com with \"REMOVE tradetoshare.com\" in the subject line.');

-- --------------------------------------------------------

--
-- Table structure for table `fos_group`
--

CREATE TABLE `fos_group` (
  `id` int(11) NOT NULL,
  `name` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `name`) VALUES
(1, 'IT'),
(2, 'Retail');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `name` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_id` int(11) DEFAULT NULL,
  `message` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `network`
--

CREATE TABLE `network` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `network`
--

INSERT INTO `network` (`id`, `user_id`, `from_user_id`, `status`) VALUES
(2, 293, 296, 'pending'),
(3, 294, 296, 'accepted'),
(4, 292, 296, 'pending'),
(5, 290, 284, 'pending'),
(6, 285, 295, 'accepted'),
(7, 288, 333, 'accepted'),
(8, 333, 285, 'pending'),
(10, 291, 333, 'accepted'),
(11, 333, 295, 'accepted'),
(12, 285, 288, 'accepted'),
(13, 317, 370, 'pending'),
(14, 370, 285, 'pending'),
(15, 288, 370, 'pending'),
(16, 333, 383, 'pending'),
(19, 285, 287, 'accepted'),
(20, 287, 383, 'accepted'),
(21, 370, 383, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `data`, `type`, `read_at`, `created_at`, `updated_at`) VALUES
(2, 293, '{\"connection_id\":2,\"user_id\":296,\"user_name\":\"id523926804\",\"user_avatar\":\"ava296.jpg\"}', 'pending', NULL, '2018-12-30 22:12:55', '2018-12-30 22:12:55'),
(4, 292, '{\"connection_id\":4,\"user_id\":296,\"user_name\":\"id523926804\",\"user_avatar\":\"ava296.jpg\"}', 'pending', NULL, '2018-12-30 22:13:18', '2018-12-30 22:13:18'),
(5, 294, '{\"connection_id\":3,\"user_id\":296,\"user_name\":\"id523926804\",\"user_avatar\":\"ava296.jpg\"}', 'accepted', NULL, '2018-12-30 22:50:41', '2018-12-30 22:50:41'),
(6, 296, '{\"connection_id\":3,\"user_id\":294,\"user_name\":\"Elena J\",\"user_avatar\":null}', 'confirmed', NULL, '2018-12-30 22:50:41', '2018-12-30 22:50:41'),
(7, 290, '{\"connection_id\":5,\"user_id\":284,\"user_name\":\" \",\"user_avatar\":\"ava284.jpg\"}', 'pending', NULL, '2019-04-10 15:28:53', '2019-04-10 15:28:53'),
(9, 285, '{\"connection_id\":6,\"user_id\":295,\"user_name\":\" \",\"user_avatar\":\"ava295.jpg\"}', 'accepted', NULL, '2019-04-11 00:48:34', '2019-04-11 00:48:34'),
(10, 295, '{\"connection_id\":6,\"user_id\":285,\"user_name\":\"Gansa Jeannette\",\"user_avatar\":\"ava285.jpg\"}', 'confirmed', NULL, '2019-04-11 00:48:34', '2019-04-11 00:48:34'),
(11, 285, '{\"post_id\":14,\"user_id\":295,\"user_name\":\" \"}', 'comment', NULL, '2019-04-11 00:57:32', '2019-04-11 00:57:32'),
(13, 333, '{\"connection_id\":8,\"user_id\":285,\"user_name\":\"Gansa Jeannette\",\"user_avatar\":\"ava285.jpg\"}', 'pending', NULL, '2019-05-20 11:45:21', '2019-05-20 11:45:21'),
(14, 291, '{\"connection_id\":9,\"user_id\":333,\"user_name\":\" \",\"user_avatar\":\"ava333.jpg\"}', 'pending', NULL, '2019-07-23 11:19:13', '2019-07-23 11:19:13'),
(17, 333, '{\"connection_id\":11,\"user_id\":295,\"user_name\":\" \",\"user_avatar\":\"ava295.jpg\"}', 'accepted', NULL, '2019-08-05 11:02:42', '2019-08-05 11:02:42'),
(18, 295, '{\"connection_id\":11,\"user_id\":333,\"user_name\":\" \",\"user_avatar\":\"ava333.jpg\"}', 'confirmed', NULL, '2019-08-05 11:02:42', '2019-08-05 11:02:42'),
(19, 333, '{\"post_id\":19,\"user_id\":295,\"user_name\":\" \"}', 'comment', NULL, '2019-08-05 11:03:59', '2019-08-05 11:03:59'),
(21, 288, '{\"connection_id\":7,\"user_id\":333,\"user_name\":\" \",\"user_avatar\":\"ava333.jpg\"}', 'accepted', NULL, '2019-09-22 20:13:39', '2019-09-22 20:13:39'),
(22, 333, '{\"connection_id\":7,\"user_id\":288,\"user_name\":\"Elena_Johnson10\",\"user_avatar\":\"ava288.jpg\"}', 'confirmed', NULL, '2019-09-22 20:13:39', '2019-09-22 20:13:39'),
(23, 285, '{\"connection_id\":12,\"user_id\":288,\"user_name\":\"Elena_Johnson10\",\"user_avatar\":\"ava288.jpg\"}', 'accepted', NULL, '2019-09-23 12:59:18', '2019-09-23 12:59:18'),
(24, 288, '{\"connection_id\":12,\"user_id\":285,\"user_name\":\"Gansa Jeannette\",\"user_avatar\":\"ava285.jpg\"}', 'confirmed', NULL, '2019-09-23 12:59:18', '2019-09-23 12:59:18'),
(25, 285, '{\"post_id\":20,\"user_id\":370,\"user_name\":\"Kostyantyn Bilous\"}', 'comment', NULL, '2019-09-24 13:30:06', '2019-09-24 13:30:06'),
(26, 288, '{\"post_id\":22,\"user_id\":370,\"user_name\":\"Kostyantyn Bilous\"}', 'comment', NULL, '2019-09-24 13:30:13', '2019-09-24 13:30:13'),
(27, 317, '{\"connection_id\":13,\"user_id\":370,\"user_name\":\"Kostyantyn Bilous\",\"user_avatar\":\"ava370.jpg\"}', 'pending', NULL, '2019-09-24 13:31:59', '2019-09-24 13:31:59'),
(28, 370, '{\"connection_id\":14,\"user_id\":285,\"user_name\":\"Gansa Jeannette\",\"user_avatar\":\"ava285.jpg\"}', 'pending', NULL, '2019-09-24 14:12:20', '2019-09-24 14:12:20'),
(29, 291, '{\"connection_id\":10,\"user_id\":333,\"user_name\":\" \",\"user_avatar\":\"ava333.jpg\"}', 'accepted', NULL, '2019-10-03 18:50:27', '2019-10-03 18:50:27'),
(30, 333, '{\"connection_id\":10,\"user_id\":291,\"user_name\":\"Charles Johnson\",\"user_avatar\":\"ava291.jpg\"}', 'confirmed', NULL, '2019-10-03 18:50:27', '2019-10-03 18:50:27'),
(31, 288, '{\"connection_id\":15,\"user_id\": 370}', 'pending', NULL, '2019-10-26 10:36:46', '2019-10-26 10:36:46'),
(32, 333, '{\"connection_id\":16,\"user_id\": 383}', 'pending', NULL, '2019-10-28 19:42:02', '2019-10-28 19:42:02'),
(35, 291, '[]', 'ignored', NULL, '2019-10-31 18:15:49', '2019-10-31 18:15:49'),
(37, 285, '{\"connection_id\":19,\"user_id\":287,\"user_name\":\"Olena Johnson\",\"user_avatar\":\"ava287.jpg\"}', 'accepted', NULL, '2019-11-02 21:32:45', '2019-11-02 21:32:45'),
(38, 287, '{\"connection_id\":19,\"user_id\":285,\"user_name\":\"Gansa Jeannette\",\"user_avatar\":\"ava285.jpg\"}', 'confirmed', NULL, '2019-11-02 21:32:45', '2019-11-02 21:32:45'),
(40, 291, '[]', 'ignored', NULL, '2019-11-02 21:35:52', '2019-11-02 21:35:52'),
(42, 285, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-09 08:49:57', '2019-11-09 08:49:57'),
(43, 383, '{\"post_id\":383}', 'vote_post', NULL, '2019-11-09 08:55:13', '2019-11-09 08:55:13'),
(44, 285, '{\"post_id\":285}', 'vote_post', NULL, '2019-11-09 09:12:06', '2019-11-09 09:12:06'),
(45, 288, '{\"post_id\":285}', 'vote_post', NULL, '2019-11-09 09:12:17', '2019-11-09 09:12:17'),
(46, 383, '{\"user_id\":285}', 'vote_user', NULL, '2019-11-09 09:12:56', '2019-11-09 09:12:56'),
(47, 287, '{\"user_id\":285}', 'vote_user', NULL, '2019-11-09 09:24:13', '2019-11-09 09:24:13'),
(48, 285, '{\"user_id\":287}', 'vote_user', NULL, '2019-11-09 18:13:37', '2019-11-09 18:13:37'),
(49, 295, '{\"user_id\":291}', 'vote_user', NULL, '2019-11-11 01:00:26', '2019-11-11 01:00:26'),
(50, 288, '{\"user_id\":285}', 'vote_user', NULL, '2019-11-11 09:19:39', '2019-11-11 09:19:39'),
(51, 291, '{\"user_id\":285}', 'vote_user', NULL, '2019-11-11 09:23:46', '2019-11-11 09:23:46'),
(52, 288, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 11:20:37', '2019-11-11 11:20:37'),
(53, 370, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 11:23:37', '2019-11-11 11:23:37'),
(54, 370, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 11:36:34', '2019-11-11 11:36:34'),
(55, 370, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 11:43:19', '2019-11-11 11:43:19'),
(56, 370, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 11:47:53', '2019-11-11 11:47:53'),
(57, 370, '{\"user_id\":383}', 'vote_user', NULL, '2019-11-11 12:00:48', '2019-11-11 12:00:48'),
(58, 370, '{\"connection_id\":21,\"user_id\":383}', 'pending', NULL, '2019-11-11 12:02:31', '2019-11-11 12:02:31'),
(59, 287, '{\"connection_id\":20,\"user_id\":383,\"user_name\":\"Kostyantyn Bilous\",\"user_avatar\":\"521e8462131967f79aea60c648d4276d.jpeg\"}', 'accepted', NULL, '2019-11-18 18:22:53', '2019-11-18 18:22:53'),
(60, 383, '{\"connection_id\":20,\"user_id\":287,\"user_name\":\"Olena Johnson\",\"user_avatar\":\"ava287.jpg\"}', 'confirmed', NULL, '2019-11-18 18:22:53', '2019-11-18 18:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `user_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 318, 'Test', 'Test', '0148226ec710f595e3fe7ade19975d66.jpeg', '2019-02-12 04:49:44', '2019-02-12 04:49:44'),
(2, 318, 'Some another test with long title', 'Some another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long titleSome another test with long title', '42667c4432749a61ee52eb1f4c011eda.jpeg', '2019-02-12 04:50:18', '2019-02-12 04:50:18'),
(3, 317, 'Это я', 'На Дружбе', '7b9e17f53cc26d80927cbea9554bf5fe.jpeg', '2019-02-12 06:19:09', '2019-02-12 06:19:09'),
(4, 317, 'Тоже я', 'Тоже на Дружбе', 'fb3bb571619eecc3252ab33c274e279e.jpeg', '2019-02-12 06:28:19', '2019-02-12 06:28:19'),
(5, 295, 'test', 'You have successfully registered an account with', '0af30d82ebab362845696717d42b01e7.jpeg', '2019-02-12 12:54:38', '2019-02-12 12:54:38'),
(6, 295, 'test1', 'Privacy\r\nGoogle Account', '083719ec90f9db736766de4e3b4f7404.jpeg', '2019-02-12 13:07:21', '2019-02-12 13:07:21'),
(7, 295, 'tes2', 'Privacy\r\nGoogle Account', 'a97d7dad06b9c3bbac794f3d5c269d20.jpeg', '2019-02-12 13:09:04', '2019-02-12 13:09:04'),
(8, 318, 'A', 'asd', '84167a9b61d8c82ded819b50b87b30bc.jpeg', '2019-02-13 06:10:42', '2019-02-13 06:10:42'),
(10, 317, 'Абрикоски', 'Вкусняшки', 'e3efe93e900400a38e8c4b7aaec5744b.jpeg', '2019-02-15 09:21:01', '2019-02-15 09:21:01'),
(12, 317, 'Абрикос', 'Наш ))', 'f5b4cc3dfc3249ee947fdb98ff7e85d0.jpeg', '2019-02-15 09:25:12', '2019-02-15 09:25:12'),
(13, 317, 'Ева', 'гнпгнп', '37ec0c2011d8b79ca1f96705d3da6b45.jpeg', '2019-02-15 09:55:34', '2019-02-15 09:55:34'),
(14, 319, '123', '123', '68bb36364614f0ed3f0f9d8c0fbd32f7.jpeg', '2019-03-01 04:55:13', '2019-03-01 04:55:13'),
(15, 328, 'Свадьба Анжелы и Валеры', 'Красивые!', '5ddda95e7e1561672e875dfb06d253b2.jpeg', '2019-04-18 06:52:25', '2019-04-18 06:52:25'),
(16, 328, 'Яна', 'лепестки )', '217ad43d2d70c58784907cbd992a697c.jpeg', '2019-04-18 07:12:48', '2019-04-18 07:12:48'),
(17, 333, 'My photo', '<p>My photo</p>', 'e45c2327e07b1b6a4337f09e579f6fb9.jpeg', '2019-07-19 12:10:41', '2019-07-19 12:10:41'),
(19, 333, 'Moon 1', '<p><span class=\"tlid-translation translation\" lang=\"en\"><span class=\"\" title=\"\">Moon 1</span></span></p>', '3bd118d2b603e12d7343c0ff3c8998fb.jpeg', '2019-07-24 11:22:33', '2019-07-24 11:22:33'),
(20, 333, 'Moon 2', '<p>Moon 2</p>', '8f76cd215d8ff53bfc21ca68b1941003.jpeg', '2019-07-24 11:22:50', '2019-07-24 11:22:50'),
(21, 333, 'Moon 3', '<p>Moon 3</p>', '6b86a49761fb011d8f3d30833ec3bf1f.jpeg', '2019-07-24 11:23:06', '2019-07-24 11:23:06'),
(22, 333, 'Moon 4', '<p>Moon 4</p>', 'c891d898b7385ab6256276547f07ded9.jpeg', '2019-07-24 11:23:22', '2019-07-24 11:23:22'),
(23, 333, 'Moon 5', '<p>Moon 5</p>', '938e5547757c04ea655604a40dcf74ef.jpeg', '2019-07-24 11:23:42', '2019-07-24 11:23:42'),
(24, 333, 'Moon 6', '<p>Moon 6</p>', 'ceb7e990a5a316114df0635eb1e86574.jpeg', '2019-07-24 11:24:05', '2019-07-24 11:24:05'),
(25, 295, 'twxr', '<p>fsfsvdsdvsdvsdvs\\\\vs\\</p>', '9251ff4143bc130681a2f915bab19e43.jpeg', '2019-08-01 16:42:35', '2019-08-01 16:42:35'),
(26, 287, 'Nature', '<p>Nature</p>', 'fc37ae3754b23984d6de09ae77219c30.jpeg', '2019-08-01 16:52:58', '2019-08-01 16:52:58'),
(28, 333, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<p>Donec id massa et nisi pretium aliquet ut vel risus. Phasellus dignissim turpis ut neque sollicitudin varius. Aenean sed nisl quis metus elementum maximus a a ipsum. Fusce in est ante. Integer accumsan ante non efficitur placerat. In volutpat congue lobortis.</p>\r\n<p>Quisque commodo risus at libero pulvinar, at pretium quam porta. Curabitur congue finibus dui, at mollis est mattis id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In elementum, mauris eu blandit fringilla, enim nisl luctus ligula, id luctus lorem purus eget nunc.</p>\r\n<p>Vivamus justo diam, dapibus ac malesuada at, scelerisque ut elit. Sed et elit nec nisl auctor vestibulum. Cras mattis tincidunt sagittis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse dapibus fringilla blandit. Curabitur semper gravida tincidunt.</p>', '8eaf9627a2b288da799e408af18e7ff1.jpeg', '2019-08-08 10:46:17', '2019-08-08 10:46:17'),
(29, 284, 'test', '<p>bvcvyyvkuj</p>', '05d433d53cf973cb2a0db290d54e7930.png', '2019-08-09 08:22:18', '2019-08-09 08:22:18'),
(30, 285, 'Test pict', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at mattis nisi. Vestibulum vestibulum quam augue, id gravida massa bibendum nec. Quisque eu risus ac nibh scelerisque condimentum eu non tortor. Phasellus tellus urna, dapibus id finibus nec, pulvinar at quam. Aliquam sit amet dolor fermentum, facilisis justo vehicula, hendrerit felis. In commodo turpis sit amet libero luctus, at accumsan augue scelerisque. Integer sodales ligula ligula, eu laoreet ipsum varius quis. Sed cursus molestie metus, a tristique metus faucibus quis. Quisque hendrerit, nibh at suscipit aliquam, diam ligula accumsan felis, eu dapibus eros ipsum vel felis. Nam lobortis mi luctus consequat pulvinar. Mauris faucibus sem libero, quis rhoncus lectus tristique sed. Nunc vel aliquam diam. Fusce vulputate turpis leo, nec ultrices odio pulvinar id.</p>', '5948153a01cf55a533fcf6e3574574d7.jpeg', '2019-08-13 13:07:13', '2019-08-13 13:07:13'),
(31, 285, 'Test pict', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at mattis nisi. Vestibulum vestibulum quam augue, id gravida massa bibendum nec. Quisque eu risus ac nibh scelerisque condimentum eu non tortor. Phasellus tellus urna, dapibus id finibus nec, pulvinar at quam. Aliquam sit amet dolor fermentum, facilisis justo vehicula, hendrerit felis. In commodo turpis sit amet libero luctus, at accumsan augue scelerisque. Integer sodales ligula ligula, eu laoreet ipsum varius quis. Sed cursus molestie metus, a tristique metus faucibus quis. Quisque hendrerit, nibh at suscipit aliquam, diam ligula accumsan felis, eu dapibus eros ipsum vel felis. Nam lobortis mi luctus consequat pulvinar. Mauris faucibus sem libero, quis rhoncus lectus tristique sed. Nunc vel aliquam diam. Fusce vulputate turpis leo, nec ultrices odio pulvinar id.</p>', 'fef55848c1ee881fc6c85ac8ce056a5f.jpeg', '2019-08-13 13:07:36', '2019-08-13 13:07:36'),
(32, 295, 'tasr', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at mattis nisi. Vestibulum vestibulum quam augue, id gravida massa bibendum nec. Quisque eu risus ac nibh scelerisque condimentum eu non tortor. Phasellus tellus urna, dapibus id finibus nec, pulvinar at quam. Aliquam sit amet dolor fermentum, facilisis justo vehicula, hendrerit felis. In commodo turpis sit amet libero luctus, at accumsan augue scelerisque. Integer sodales ligula ligula, eu laoreet ipsum varius quis. Sed cursus molestie metus, a tristique metus faucibus quis. Quisque hendrerit, nibh at suscipit aliquam, diam ligula accumsan felis, eu dapibus eros ipsum vel felis. Nam lobortis mi luctus consequat pulvinar. Mauris faucibus sem libero, quis rhoncus lectus tristique sed. Nunc vel aliquam diam. Fusce vulputate turpis leo, nec ultrices odio pulvinar id.</p>', 'e8e0191f00c750d53ef782831d2f643e.jpeg', '2019-08-13 13:08:33', '2019-08-13 13:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `origin_user_id` int(11) DEFAULT NULL,
  `tradeland_id` int(11) DEFAULT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `social_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `origin_user_id`, `tradeland_id`, `text`, `created_at`, `updated_at`, `social_provider`, `social_id`) VALUES
(2, 292, NULL, NULL, 'Hello', '2018-12-30 20:35:05', '2018-12-30 20:35:05', NULL, NULL),
(3, 292, NULL, NULL, 'hello from TTS', '2018-12-30 20:35:42', '2018-12-30 20:35:42', NULL, NULL),
(4, 292, NULL, NULL, 'hello from tts', '2018-12-30 20:37:34', '2018-12-30 20:37:34', NULL, NULL),
(5, 296, NULL, NULL, 'Hello TTS', '2018-12-30 22:25:28', '2018-12-30 22:25:28', NULL, NULL),
(6, 296, NULL, NULL, 'Hello TTS', '2018-12-30 22:26:19', '2018-12-30 22:26:19', NULL, NULL),
(7, 296, NULL, NULL, 'Hello TTS', '2018-12-30 22:26:40', '2018-12-30 22:26:40', NULL, NULL),
(8, 296, NULL, NULL, 'Hello TTS', '2018-12-30 22:26:56', '2018-12-30 22:26:56', NULL, NULL),
(9, 317, NULL, NULL, 'hi', '2019-02-05 05:17:51', '2019-02-05 05:17:51', NULL, NULL),
(10, 318, NULL, NULL, 'asdasdsad', '2019-02-18 08:35:04', '2019-02-18 08:35:03', NULL, NULL),
(11, 284, NULL, NULL, 'Hello', '2019-02-26 03:27:05', '2019-02-26 03:27:05', NULL, NULL),
(12, 321, NULL, NULL, 'r2e', '2019-03-26 23:31:02', '2019-03-26 23:31:02', NULL, NULL),
(13, 322, NULL, NULL, 'sfdfg', '2019-03-27 00:03:51', '2019-03-27 00:03:51', NULL, NULL),
(14, 285, NULL, NULL, 'text', '2019-04-05 02:22:56', '2019-04-05 02:22:56', NULL, NULL),
(15, 287, NULL, NULL, 'hello', '2019-04-10 14:52:11', '2019-04-10 14:52:11', NULL, NULL),
(16, 287, NULL, NULL, 'hello', '2019-04-10 14:52:12', '2019-04-10 14:52:12', NULL, NULL),
(17, 285, NULL, NULL, 'hello', '2019-04-10 15:07:07', '2019-04-10 15:07:07', NULL, NULL),
(18, 287, NULL, NULL, 'have a good day!!', '2019-04-10 15:12:46', '2019-04-10 15:12:46', NULL, NULL),
(19, 333, NULL, NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at mattis nisi. Vestibulum vestibulum quam augue, id gravida massa bibendum nec. Quisque eu risus ac nibh scelerisque condimentum eu non tortor. Phasellus tellus urna, dapibus id finibus nec, pulvinar at quam. Aliquam sit amet dolor fermentum, facilisis justo vehicula, hendrerit felis. In commodo turpis sit amet libero luctus, at accumsan augue scelerisque. Integer sodales ligula ligula, eu laoreet ipsum varius quis. Sed cursus molestie metus, a tristique metus faucibus quis. Quisque hendrerit, nibh at suscipit aliquam, diam ligula accumsan felis, eu dapibus eros ipsum vel felis. Nam lobortis mi luctus consequat pulvinar. Mauris faucibus sem libero, quis rhoncus lectus tristique sed. Nunc vel aliquam diam. Fusce vulputate turpis leo, nec ultrices odio pulvinar id.\r\n\r\nCras vulputate pharetra arcu, eu lobortis urna pulvinar vitae. Pellentesque ultrices scelerisque ornare. Maecenas bibendum, ex in feugiat scelerisque, elit libero pellentesque sapien, non feugiat eros tortor ut nulla. Sed congue nunc in ipsum feugiat ornare. Duis mollis molestie lectus vitae volutpat. Morbi ornare diam lectus, volutpat ultrices velit pharetra ut. In vel felis urna. Curabitur in nibh at mi lacinia mollis.\r\n\r\nVestibulum sit amet dignissim dolor. Proin placerat est sit amet nisl imperdiet, a rutrum enim cursus. Aenean eleifend, massa vel auctor posuere, mauris purus dictum arcu, sed sodales ante lectus sit amet augue. Phasellus non imperdiet augue. In hac habitasse platea dictumst. Suspendisse potenti. Nullam in accumsan tortor, sit amet ultricies enim. Fusce dignissim vulputate ipsum a cursus. In hac habitasse platea dictumst. Nullam vestibulum, nisi non scelerisque fringilla, mauris urna ornare felis, vel tincidunt tortor metus vehicula purus. Pellentesque molestie laoreet nisi id commodo. Nullam auctor sapien dolor, eget vestibulum lectus scelerisque a. Praesent gravida sed quam a auctor. In hac habitasse platea dictumst. Nulla tristique neque vitae aliquet sagittis.', '2019-07-23 11:23:53', '2019-07-23 11:23:53', NULL, NULL),
(20, 285, NULL, NULL, 'dvdhv z\\', '2019-08-02 17:54:21', '2019-08-02 17:54:21', NULL, NULL),
(21, 287, NULL, NULL, 'hshhssjj', '2019-08-07 03:00:45', '2019-08-07 03:00:45', NULL, NULL),
(22, 288, NULL, NULL, 'hello', '2019-09-21 22:25:42', '2019-09-21 22:25:42', NULL, NULL),
(23, 288, NULL, NULL, 'hi', '2019-09-21 22:26:49', '2019-09-21 22:26:49', NULL, NULL),
(24, 370, NULL, NULL, 'some info is going here', '2019-09-24 13:35:06', '2019-09-24 13:35:06', NULL, NULL),
(25, 370, NULL, NULL, 'Something is going here', '2019-09-24 13:51:11', '2019-09-24 13:51:11', NULL, NULL),
(26, 285, NULL, NULL, 'hi', '2019-10-11 18:27:02', '2019-10-11 18:27:02', NULL, NULL),
(27, 383, NULL, NULL, 'Here the post', '2019-11-09 15:55:08', '2019-11-09 15:55:07', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_votes`
--

CREATE TABLE `post_votes` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_votes`
--

INSERT INTO `post_votes` (`post_id`, `user_id`) VALUES
(23, 285),
(26, 285),
(27, 383);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` enum('facebook','google','twitter','vkontakte','instagram','pinterest','flickr','imgur','tumblr','foursquare','yahoo','odnoklassniki','wordpress','reddit','youtube') COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `user_id`, `name`, `provider_id`, `access_token`) VALUES
(248, 284, 'facebook', '10212582313945032', 'EAAKrzKdZBEgIBACI116CfCunx2miYSPlY8AdIN8RNXRwCeoWndviWupWZBzxaDnh0kRxLZAZA66MZAZAZBoGjygG7YAmlC6ZAURWNcfURptzQrUAv6YZCrpIAGl9jUuQ5iabDVrjQn5tmrHvofQVP6ZBj5HaPc0g2vm4EZD'),
(249, 285, 'facebook', '318118375440425', 'EAAKrzKdZBEgIBAHqHv9eouUOvcdZBEXbCAnDnSgxuDKTAyB6qjPvCYs0FB2ldMg3NVqp9ZBSdv3ZCWN0caPdYVLUmKR5FQ8ltKuI58fGGievhTpcAhBmYZCQ8pQVgz8Y4s4BbFZCTcJHqNKYt3ZBCb34VYYg8pLdqjwl1bfiXGWHwZDZD'),
(250, 286, 'google', '107279557881407049137', 'ya29.GlyDBryxBsFszRBOYo5sxVZppXPK_BFRu-FCHx2lwO9gEjMJjJBzbIvbOHue9GULkH3isx5qRS1bSC32OrrK3GpSALq6rZf-ECa_2JnxFlwIrLGzzPWaWgvD7GyuyQ'),
(251, 287, 'vkontakte', '1416075', 'd9380a7ff790c9d52d8a7ad564c3f61af685c6cae4ab396e33b6b4b098585a263a526e54c57c805063223'),
(252, 285, 'google', '109365625184166589005', 'ya29.ImaUB96wkaB49_ewFUohYNuYbuuCHis7goGnoSOSuOQT-cE44jhhngczWxLFn1XexYvujT5PjmgZn-66vvIpwekguqg5l_BynvuIp_fEorF9AmRYp2B6hNLjeI591JACYhmEZ4GduOk'),
(253, 288, 'twitter', '51991301', '51991301-XyRBsi6Wt048uyVWPbbWMESdWs4Tq6E0tdJ4S3Dnv'),
(254, 289, 'google', '100412754741625112018', 'ya29.GlyDBptWeFh0kV3hUZNj8SghLldzdGxDFzfZDRaCjeDE9EFcWBRc18Wh0dx6QsapKnkp0EL3DV8KrM6llY2Ra3K8SPp-BMjaPDXl6Yrf2f8lFJQKxXjMLUTS8wLwow'),
(255, 290, 'tumblr', 'elenka1010', 'Fk5eS6QR8b6pLQlvuhgpHpjOdYPgQ7DOEsA6MHfSqvTemEU3S8'),
(256, 285, 'tumblr', 'hellogreatbouquetduck', 'dhq9mMMhpAszMB7oQduaLUqAs1GrAi4xDaPP6pt2sIEuRJM1FV'),
(257, 291, 'facebook', '1976917399042323', 'EAAKrzKdZBEgIBAFGAhqETwKTq01r6HDqF62mVKZAzDmPuyLONBLVHTh4nfFLMXrLTpeUm9gyOfUVLZCrxYjLMWMZCHLBkF9aNE9FOWE536AlZBX6cJw0WJTAL4WjmhLtvbBqVzQL4AzgQcSrbfx0aZC7rkEHYIC39FVh79tONQtgZDZD'),
(258, 292, 'flickr', '146117864@N05', '72157679188190714-d1096847c9d99203'),
(259, 284, 'foursquare', '517607546', 'RVWLT4WN40MRV4N4TC43S22ZRJDYOZGEC3X45CH5V51KAT20'),
(260, 293, 'twitter', '2601029990', '2601029990-2U6pHdnE69NXsdH8uFyMvWmebs4PZbq0MFnIzIO'),
(261, 294, 'odnoklassniki', '147157866809', '-s-8rM91JrH2-u9MKr5jpUBNItp3qr6xMmHcjMA8sk3b-pvPza'),
(262, 295, 'facebook', '749905712018439', 'EAAKrzKdZBEgIBAEWZBxD3JNrqYFgWX9D2r4mA8MNxUZAFh3aet8cxjYvqOdqizHQn6YiHtm98AJ62bLCJZBiTKz4hAipfZCFwpYDT9HUYI5WAns1i4Rd5cjpuRMt1MjfU9JXlUXzqbvlbackWQ0CAbQZAMWRQcLfZBSjxNjMIea0wZDZD'),
(263, 296, 'vkontakte', '523926804', '6d6949846800706c093357b8d36398a22b4f9b6e598002cb80f3c55f37c0afa9a61793e1585188506db33'),
(264, 294, 'vkontakte', '1416075', '57184ee9022cb1fdcd5ef0869482aa165254f6caf7dc035b010562a65f5d62a5cc28ed232deb5bf273bae'),
(265, 294, 'foursquare', '517607546', 'RVWLT4WN40MRV4N4TC43S22ZRJDYOZGEC3X45CH5V51KAT20'),
(266, 294, 'google', '109365625184166589005', 'ya29.GmGDBuxi14qKJmlbxjzA4GAiZGeQ9DVthWVh3nE2AlQCl4S2tRIY1yTL9Fb5FAiN4rby98pJye0IAJRdT7GvEQR7eHoa9MhNiT7YjZA20m1epX3d_LqC69-0GTxdHb-U7uKX'),
(267, 294, 'twitter', '51991301', '51991301-XyRBsi6Wt048uyVWPbbWMESdWs4Tq6E0tdJ4S3Dnv'),
(268, 294, 'facebook', '10212582313945032', 'EAAKrzKdZBEgIBAHxKjzqe4elpKcxVIdzlFXY5nxA74PZBR1SZA7JOvvflwaNbUgXa0ePUsFviqEaMLDZC4MZAvZCAaR28CRHP1TalZC2K4AqyiagyV5a1BZCndXM0SxM0r01OSQjFu5H31kiS1KP21XbTXLqiw19z6QZD'),
(269, 294, 'tumblr', 'elenka1010', 'WkuV6tiIXMlfcV8BbmpeMFpb8tLfuF6gsNhVhgnEzwnR20E1sU'),
(271, 294, 'imgur', '40371139', 'c6627bc385e529af26d4803875bc299502f86d40'),
(272, 296, 'imgur', '58673213', 'a2f412d26fd7a0d447ab1df601b8d19c3426a3db'),
(280, 303, 'google', '117159350034260903648', 'ya29.GmGLBuv4q2ogNeeyWb90-u7ZkSLVmm_wn1jbd_9qSgjeb_TijH6Rcy0vrJtp0fqkA_SqNVZ4XB2xElxgvO5aju-SoiPXxfu0GG9_-wWOIC8ZDH6vaqHmfUyTn3P95mOpVrAU'),
(285, 308, 'facebook', '734735220220180', 'EAAKrzKdZBEgIBAP34HKVRbQrJQRekeQGgtU9yru0u3wXTGXn60bBqhzSWOAVuQeTDS7ADo67yzg0yRXDDPYgDJdtPv5ZBh9XWKekZCJw7XRoeuAqAqXYUfwdAutZAo164wMxPrViC7ShK9PgdCxKjIykpnqZCZAxOYdzPVGrN4JAZDZD'),
(286, 309, 'odnoklassniki', '589309931577', '-s-3Qr9xInu2Q-BMxnDaUq8-AoospqEKMY72vfxNHkG7YNd'),
(287, 310, 'google', '113140557174470281008', 'ya29.Gl2HBmopPXgSKVCJrzwOgmRNXefmherb1oh6WjvYm0Wmtt-rkSsqy8LWmCBX3jKFXvZvEJgHjB0vpePy9nVpF3Kc9lAqC7y93XINnA0OMDau342zjsyzbuWq-nH9J_A'),
(288, 310, 'twitter', '1052204057723629568', '1052204057723629568-EN7ZFxorhNh9Y8OHwiFmuvtbuA7o1v'),
(290, 312, 'google', '106258689894868776932', 'ya29.Gl2HBuUAHiaM8d506IeTKLdB_Mhe3BFUsKXblRmR68bPC-VfnHH8m7Lwj1KB0j_jFNiuwjc9hesvgJVojtHZGJEw9e3UFEErex5Pz289Zti0xJEg6Ql82I_PVf-8qlY'),
(293, 314, 'vkontakte', '512293341', 'ea29b2d96f04b3b66b81b1d32cf1e472a5e45eb46252fe8cea8a75181a91f6910946502da95df5719eca5'),
(294, 315, 'tumblr', 'codeproduction18', 'V1xMX51Lf0pWxugpJcOhVqOGEvc5aF5xf6wIE6u0fdKIIKNRCz'),
(295, 316, 'google', '107560518108794448767', 'ya29.Gl2UBv6r9D-oNMEsp3wPI4tvrdwoDIkBdi_toVmwF4-KLyQtefvfdJroFow7OjUe-RCZPawP7F3aR5BMoqNSiEO7HZl0ANZAaRX68u_0603UP2pqAjf64rvJC2P7juQ'),
(296, 317, 'google', '113177180795255644128', 'ya29.Gl2xBoXcTcmd2FVVA0AOCn1nQkXNc66PXae-chuLxEJ0HzJebVDBVseSjea7f0typd4K0A2t3hF01CP6gsrot0cR31ptnQ3StbVnypeE5stOVSC-h_mkY_rQxOqJoP4'),
(297, 318, 'google', '113028882046255013313', 'ya29.GlyoBguafIFHYm0IHXCGJdqicNM4068LAXvZp_3_43TacF-bnbL4n_vaafOQ3zAPlxeiHQzpVRxV8dEGt1cD_q42QM8iEpRVBEpMu6Lh933yz4R3bufo7fF1XQxbzw'),
(298, 316, 'facebook', '2034876856569157', 'EAAKrzKdZBEgIBAEtqb85TU2mwQm6yZC5EQPfqAouFZCyeEEEUH3EMb3gWqVGF7XZAwFpDmWVD0HuolLVwSZAsAtRmQZCPoEsJ2BlK97zRG6EVkmq5ZBZC9b5L3PHJGWQC3mXUfBwdoVHZAluKxFhPFdCxZCOF5gdcqKgC4eSKpBnt5kwZDZD'),
(299, 319, 'google', '110830049549970892390', 'ya29.Glu_Buw7QqtElbslb2lNDwzB165uAPBn9my9vO9wLTJuiIxd8s2VuxJAQnZkjZPqUAf8zDzA0b1nBt3zwlJfGLU8bO2QGuX1UQQ4LAlA3604UMby8Z7xsBN2-TRI'),
(300, 321, 'facebook', '10150060497485134', 'EAAKrzKdZBEgIBALbO8RMU81p5JB64owwgQTDVOR9t14AgU41V2eMERhKZAm456XK79g3QgGtraZAtMAFyCqDZCaUhD0oqIM3f7w5Yu9Q8u29GER7ztRj4Ej8YB6gdkZAeEvpiEHP7syvxhdVsd6H4jz22ZCNtXGhtaYEwWUVvAjG5ZBJTXHrZCZCO'),
(301, 322, 'facebook', '10150060498779631', 'EAAKrzKdZBEgIBAMzZCzepwKEzHzyP6zKcSiko7olaSFpGQ5DZC0vuJMfPOZA8NHnb4bchk6D73MRRhdLCnJXvrtz1ZAyEMlwnLM2qlHX2f3GQTxZCWEo0jZAVVxp9EJDEIx302RVbsNOeRPa77QIjRMsKrvF83onqsUJLj6Nq3uZAfx5LxO9qWY3'),
(302, 323, 'facebook', '10150060506310021', 'EAAKrzKdZBEgIBABmylzKhtijtojMMnGSZBamz39KFC7UQt2ewyLTPJxB0qRFhlpqtb64qJ5EABh1qRNg1P9KIhHWRIPYewUVzP1iu7bj5KY8KkqZB8mXop367zj44bSftQy8rRtaRLGSGZAjjIe2kwspZBMiJjhbUY5GzhDAyOEufA2nQwYr1'),
(303, 287, 'facebook', '10216435064662992', 'EAAKrzKdZBEgIBAAuN0YCKBUMvTXZBnkRHfcnEO3vZAjtZAU5qFlDoDKPui6pOk0PMcebZC4lJZCFikruGNJIieR9O6SVIOKDWjVDi0QUQry5q8mzEQZAZBrUlOxnwAM8zC0srXWO13JCG5gZAFmzJtqTrMxfHuETS2QZBzjQxO2hyWmgZDZD'),
(304, 324, 'google', '112011268038602348157', 'ya29.GlzmBp2T2bklE2NgQUY0zjxoqk-xn79XifXmFAFOiqKZAtSVf4yEJqG5PnShwx0_zt1DOv3NumOZNjk3dvinwI_pEnv7jJl15BQZbCeAbTcxdFUSkST2TeUwgO9Fpg'),
(306, 284, 'google', '113731736021753960048', 'ya29.ImaUBzEky4TLD5k8z-c-9IoffarVzOk3NSTdf0VBqsiygTUUM2A-8YCBZrGKG8h7SHN35o7XQ0-sA4foT88eSAvURht2lVmGARpzUmq6pM2MB5aI9C3PvnbpcrhavYfhe1mc7o5GcUg'),
(307, 295, 'google', '109411896604693427965', 'ya29.GmLoBlOYTjFH0LBnQZVm3k6PCqQNcRjDqN54lnE0fE32_kmdcIrSsxXeq19tpMYAN-7fGH8mdjOSs5br-_234i6_YGqZrPlkD8MqIkmnIBZHIwearGGpv-jZHIASxsNex-OrRw'),
(308, 328, 'facebook', '2213798928893811', 'EAAKrzKdZBEgIBAPtpjz6XDekBC2nEgZApjv8eKugyvJjj2ZAXyfipOwZARI33PSdl0p9oyoNWjp4Yp1kRTnOuzLVKJMOAx9CGjls0MZBxWeUuKYAAoxtZCqI2RgpsXNZAeGfyVU0Imnf6aT4zv97s20pA6v5GedRdwBGoRkJfsFRwZDZD'),
(309, 333, 'google', '103129163116468615605', 'ya29.ImGxBzBZCS9R8qCGXTGcpoUthrheXSjwdtc7hpODAFMOALEaE3OKwpi4tHN9b_RdZH9ZTgfPaYvjPWOnzS01ZllZ7H-o2f6GP5J2mQysfztFroOx_VRozpH7xIVx_G6X-fo2'),
(310, 370, 'facebook', '10213155577119064', 'EAAKrzKdZBEgIBAJiLW7uFdkNZCAhvt1TOcPJHUVR4MSz16DZAz49DZAMXT3DgWWStBEfGZBd1ymSMrZC9wMiaRj1NZBZBZBWZCFPfuJdsRb1E1yVdh67z6aO0yR2bCe1RuZAdUEXYH9l4XGIVGnS4oHJ1VEe9lZALhNKtch9gwnHYTwEHgZDZD'),
(311, 372, 'facebook', '318118375440425', 'EAAKrzKdZBEgIBALVFaxoNX7AnK6koW6bZCmu0QGmtuq1Mk0VI6LfzWbVCTWWVUnxsiZB8VuzS2z6ZCecpuxErPKoTO38y9yHNIxvRMFcX1mFnQwz1V0vCErpeMmXSZAvyRA1sZCJsaZCBbyj1T4oeGGXSBJbRM7y9CZBkpvdI5Wn0AZDZD'),
(312, 372, 'google', '115026367914905845788', 'ya29.Il-UB17EmXuA6qKYq2PYoIkzYETugZktz3hLAb2IU-KOb0g6mgnYg5MXKaAnfs7mF4-c1ov-Yymp1Wmg6I0rZg1mU38zHb0V2uWWJtlqASVE_KKJd1U0VYQzr5hTQjKZdA'),
(313, 373, 'facebook', '763593634090985', 'EAAKrzKdZBEgIBAJf4AUbfW9z6gVSWz6at48jOWxqwJTYEaKWfpMp8F9H9QDbvxTT6rqGadEMyQs3KhhPZCXmTi0PkKIfFDkdriA6VBUIFNJ8MK7QoQSTNEc6gxcAXdIMZBIlqHceaOix752Fv1LqFDWMErGZBYG7qtLISysxsQZDZD'),
(314, 333, 'facebook', '10219640875467925', 'EAAKrzKdZBEgIBAIgyPT6lythjXnjfCv9q9mOyEoyuDQRFuJtWXiYfwUNsfiEEDQCwX191cVSQFBJkOq7640Gt2ZAk1WMgdagnizjwW7eJr3j8rnsiIwbR9oISJQB4qG4ncB8BOaZAthqdEk5uyk2avbVES8VHsZD');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tradeland`
--

CREATE TABLE `tradeland` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastDiploma` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `educationYear` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8_unicode_ci,
  `status` enum('away','busy','invisible','online') COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `name`, `position`, `lastDiploma`, `organization`, `educationYear`, `location`, `link`, `avatar`, `about`, `status`, `cover_image`, `industry`) VALUES
(284, 'elenkabob@gmail.com', 'elenkabob@gmail.com', 'elenkabob@gmail.com', 'elenkabob@gmail.com', 1, NULL, '$2y$13$JbXS/FSiKH8eBedxlB85ZeEEt8MZN7eeyUloJmf89hXLAsb6bjlQi', '2019-10-05 15:52:14', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', ' ', NULL, NULL, NULL, NULL, NULL, NULL, 'ava284.jpg', NULL, 'online', NULL, NULL),
(285, 'support@trademydeals.ca', 'support@trademydeals.ca', 'support@trademydeals.ca', 'support@trademydeals.ca', 1, NULL, '$2y$13$nmijW5x/EFce6fgvHKcAbe1o4TmvQD8KHIFTrMqKg/tW/vDSdy2f6', '2019-11-19 06:00:25', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', 'Gansa Jeannette', 'Busniess', 'PHD', 'Trade My Deals', '2019', 'Canada', 'https://trademydeals.ca', 'ava285.jpg', 'not volunteering around the world, he still provides keynote speaking for some of the country’s most respected organizations. In his inspiring keynotes, Dean shares with companies the essential strategies to improve the customer experience, build loyalty, increase sales, improve morale and improve your staff’s mental wellness. Dean\'s powerful message will give your people the skills they need to go out and conquer their challenges and improve their life at work and at home.', 'online', '35ed797ed104583a04fee111fa7276d9.jpeg', 'Social Network'),
(286, 'trademydeal@gmail.com', 'trademydeal@gmail.com', 'trademydeal@gmail.com', 'trademydeal@gmail.com', 1, NULL, '107279557881407049137', '2018-12-30 19:57:01', NULL, NULL, 'a:0:{}', 'TradeMyDeals', NULL, NULL, NULL, NULL, NULL, NULL, 'ava286.jpg', NULL, 'online', NULL, NULL),
(287, 'elenkabob@yahoo.com', 'elenkabob@yahoo.com', 'elenkabob@yahoo.com', 'elenkabob@yahoo.com', 1, NULL, '10216435064662992', '2019-11-18 18:21:23', NULL, NULL, 'a:0:{}', 'Olena Johnson', 'QA', 'PHD', 'TTS Network', '2009', 'Canada, Ottawa ON', 'http://azucka.com', 'ava287.jpg', 'work together on different projects.\r\nSign up is free for Employer and Freelancer.\r\nEmployers post their Jobs.\r\nFreelancers create profiles and submit quotes to open jobs.\r\nEmployers review the quotes, and choose who they want to Hire and deposit the payment in Escrow\r\nYou can browse through the talent pool available on our site, and invite a freelancer instead.', 'online', '3d828a1ee0be0a7c66ee3637b3ead270.jpeg', 'Information Technologies'),
(288, '51991301@twitter.com', '51991301@twitter.com', '51991301@twitter.com', '51991301@twitter.com', 1, NULL, '51991301', '2019-09-21 22:24:48', NULL, NULL, 'a:0:{}', 'Elena_Johnson10', NULL, NULL, NULL, NULL, NULL, NULL, 'ava288.jpg', NULL, 'online', NULL, NULL),
(289, 'trademydeals@gmail.com', 'trademydeals@gmail.com', 'trademydeals@gmail.com', 'trademydeals@gmail.com', 1, NULL, '100412754741625112018', '2018-12-30 20:11:57', NULL, NULL, 'a:0:{}', ' ', NULL, NULL, NULL, NULL, NULL, NULL, 'ava289.jpg', NULL, 'online', NULL, NULL),
(290, 'elenka1010@tumblr.com', 'elenka1010@tumblr.com', 'elenka1010@tumblr.com', 'elenka1010@tumblr.com', 1, NULL, 'elenka1010', '2018-12-30 20:15:50', NULL, NULL, 'a:0:{}', 'elenka1010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(291, 'godbless_charles@yahoo.fr', 'godbless_charles@yahoo.fr', 'godbless_charles@yahoo.fr', 'godbless_charles@yahoo.fr', 1, NULL, '1976917399042323', '2019-11-13 05:44:23', NULL, NULL, 'a:0:{}', 'Charles Johnson', 'Business', 'PHD', 'TTS Network', '2019', 'Ottawa, Canada', 'https://tradetoshare.com', 'ava291.jpg', 'business person', 'online', NULL, NULL),
(292, '146117864@N05@flickr.com', '146117864@n05@flickr.com', '146117864@N05@flickr.com', '146117864@n05@flickr.com', 1, NULL, '146117864@N05', '2018-12-30 20:32:06', NULL, NULL, 'a:0:{}', 'elenkabob', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(293, '2601029990@twitter.com', '2601029990@twitter.com', '2601029990@twitter.com', '2601029990@twitter.com', 1, NULL, '2601029990', '2018-12-30 20:44:26', NULL, NULL, 'a:0:{}', 'trademydeals', NULL, NULL, NULL, NULL, NULL, NULL, 'ava293.jpg', NULL, 'online', NULL, NULL),
(294, '147157866809@odnoklassniki.com', '147157866809@odnoklassniki.com', '147157866809@odnoklassniki.com', '147157866809@odnoklassniki.com', 1, NULL, '147157866809', '2018-12-30 20:49:18', NULL, NULL, 'a:0:{}', 'Elena J', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(295, 'bandjcanadass@gmail.com', 'bandjcanadass@gmail.com', 'bandjcanadass@gmail.com', 'bandjcanadass@gmail.com', 1, NULL, '109411896604693427965', '2019-11-22 13:43:01', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', 'Ivan Bob', 'DeV', 'PHD', 'TTS Network', '1999', 'Canada', 'https://tradetoshare.com', 'ava295.jpg', 'A privacy policy is a statement or a legal document (in privacy law) that discloses some or all of the ways a party gathers, uses, discloses, and manages', 'online', NULL, 'Information Technology'),
(296, '523926804@vkontakte.com', '523926804@vkontakte.com', '523926804@vkontakte.com', '523926804@vkontakte.com', 1, NULL, '523926804', '2018-12-30 22:04:49', NULL, NULL, 'a:0:{}', 'id523926804', NULL, NULL, NULL, NULL, NULL, NULL, 'ava296.jpg', NULL, 'online', NULL, NULL),
(303, 'mar.radchenko@gmail.com', 'mar.radchenko@gmail.com', 'mar.radchenko@gmail.com', 'mar.radchenko@gmail.com', 1, NULL, '117159350034260903648', '2019-01-08 03:35:53', NULL, NULL, 'a:0:{}', 'Марина Радченко', NULL, NULL, NULL, NULL, NULL, NULL, 'ava303.jpg', NULL, 'online', NULL, NULL),
(308, 'mar_radch@mail.ru', 'mar_radch@mail.ru', 'mar_radch@mail.ru', 'mar_radch@mail.ru', 1, NULL, '734735220220180', '2019-01-04 04:19:47', NULL, NULL, 'a:0:{}', 'Марина Радченко', NULL, NULL, NULL, NULL, NULL, NULL, 'ava308.jpg', NULL, 'online', NULL, NULL),
(309, '589309931577@odnoklassniki.com', '589309931577@odnoklassniki.com', '589309931577@odnoklassniki.com', '589309931577@odnoklassniki.com', 1, NULL, '589309931577', '2019-01-04 05:00:36', NULL, NULL, 'a:0:{}', 'Code Production', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(310, 'codeproduction18@gmail.com', 'codeproduction18@gmail.com', 'codeproduction18@gmail.com', 'codeproduction18@gmail.com', 1, NULL, '113140557174470281008', '2019-01-04 07:05:11', NULL, NULL, 'a:0:{}', 'Code Production', NULL, NULL, NULL, NULL, NULL, NULL, 'ava310.jpg', NULL, 'online', NULL, NULL),
(312, 'mar.radchenko1988@gmail.com', 'mar.radchenko1988@gmail.com', 'mar.radchenko1988@gmail.com', 'mar.radchenko1988@gmail.com', 1, NULL, '106258689894868776932', '2019-01-04 07:15:42', NULL, NULL, 'a:0:{}', 'Марина Радченко', NULL, NULL, NULL, NULL, NULL, NULL, 'ava312.jpg', NULL, 'online', NULL, NULL),
(314, '512293341@vkontakte.com', '512293341@vkontakte.com', '512293341@vkontakte.com', '512293341@vkontakte.com', 1, NULL, '512293341', '2019-01-08 04:54:22', NULL, NULL, 'a:0:{}', 'Код Продакшен', NULL, NULL, NULL, NULL, NULL, NULL, 'ava314.jpg', NULL, 'online', NULL, NULL),
(315, 'codeproduction18@tumblr.com', 'codeproduction18@tumblr.com', 'codeproduction18@tumblr.com', 'codeproduction18@tumblr.com', 1, NULL, 'codeproduction18', '2019-01-09 11:30:46', NULL, NULL, 'a:0:{}', 'codeproduction18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(316, 'pdandreyv@gmail.com', 'pdandreyv@gmail.com', 'pdandreyv@gmail.com', 'pdandreyv@gmail.com', 1, NULL, '2034876856569157', '2019-04-18 06:44:35', NULL, NULL, 'a:0:{}', 'Andrey Poddubniy', NULL, NULL, NULL, NULL, NULL, NULL, 'ava316.jpg', NULL, 'online', NULL, NULL),
(317, 'ginakichuk@gmail.com', 'ginakichuk@gmail.com', 'ginakichuk@gmail.com', 'ginakichuk@gmail.com', 1, NULL, '113177180795255644128', '2019-02-15 09:06:26', NULL, NULL, 'a:0:{}', 'Виргиния Поддубная', NULL, NULL, NULL, NULL, NULL, NULL, 'ava317.jpg', NULL, 'online', NULL, NULL),
(318, 'oleglekov@gmail.com', 'oleglekov@gmail.com', 'oleglekov@gmail.com', 'oleglekov@gmail.com', 1, NULL, '$2y$13$lf11Cd1qAK9XORhVkIjYpu3RpU3AjaiQitqkzfpoKa.Q20xzq85Ji', '2019-03-20 11:27:18', NULL, NULL, 'a:0:{}', 'Олег Коваленко', NULL, NULL, NULL, NULL, NULL, NULL, 'ava318.jpg', NULL, 'online', NULL, NULL),
(319, 'nikawhite87@gmail.com', 'nikawhite87@gmail.com', 'nikawhite87@gmail.com', 'nikawhite87@gmail.com', 1, NULL, '110830049549970892390', '2019-03-01 04:53:32', NULL, NULL, 'a:0:{}', 'Инна Шишова', NULL, NULL, NULL, NULL, NULL, NULL, 'ava319.jpg', NULL, 'online', NULL, NULL),
(320, 'danielLycle@gmail.com', 'daniellycle@gmail.com', 'danielLycle@gmail.com', 'daniellycle@gmail.com', 0, NULL, '$2y$13$ktgiGTt8qSZGDRaOzLWRVehu0Gp9wilRi109dN0g.szJYohs8Hfau', NULL, '4b-fUiLLUfPIuctxpgjbnWdQL3HjCKbdTyINmh3r5lU', NULL, 'a:0:{}', 'Donaldaxoda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(321, 'vtighetrvy_1543819432@tfbnw.net', 'vtighetrvy_1543819432@tfbnw.net', 'vtighetrvy_1543819432@tfbnw.net', 'vtighetrvy_1543819432@tfbnw.net', 1, NULL, '10150060497485134', '2019-03-26 23:30:01', NULL, NULL, 'a:0:{}', 'Tony Aetos', NULL, NULL, NULL, NULL, NULL, NULL, 'ava321.jpg', NULL, 'online', NULL, NULL),
(322, 'imeknkeahl_1543823231@tfbnw.net', 'imeknkeahl_1543823231@tfbnw.net', 'imeknkeahl_1543823231@tfbnw.net', 'imeknkeahl_1543823231@tfbnw.net', 1, NULL, '10150060498779631', '2019-03-27 00:02:27', NULL, NULL, 'a:0:{}', 'kannan Priya', NULL, NULL, NULL, NULL, NULL, NULL, 'ava322.jpg', NULL, 'online', NULL, NULL),
(323, 'iiovxpqarf_1543823226@tfbnw.net', 'iiovxpqarf_1543823226@tfbnw.net', 'iiovxpqarf_1543823226@tfbnw.net', 'iiovxpqarf_1543823226@tfbnw.net', 1, NULL, '10150060506310021', '2019-03-27 03:03:00', NULL, NULL, 'a:0:{}', 'Sofia Jantan', NULL, NULL, NULL, NULL, NULL, NULL, 'ava323.jpg', NULL, 'online', NULL, NULL),
(324, 'azuckanet@gmail.com', 'azuckanet@gmail.com', 'azuckanet@gmail.com', 'azuckanet@gmail.com', 1, NULL, '$2y$13$E6tdy/KhCurqGkK0R2/21OIJ5r/xpJYp3xygJnfQMIUbXG.q83iey', '2019-04-10 16:49:24', NULL, NULL, 'a:0:{}', ' Azucka', NULL, NULL, NULL, NULL, NULL, NULL, 'ava324.jpg', NULL, 'online', NULL, NULL),
(326, 'contact@azucka.com', 'contact@azucka.com', 'contact@azucka.com', 'contact@azucka.com', 1, NULL, '$2y$13$LkLPD2PQqeJbVUFtBImu..HLsJt6EFjUtuq69tXKY6cFhzhDfaJ4a', '2019-04-10 16:11:36', NULL, NULL, 'a:0:{}', 'azucka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(327, 'cses.carleton77@gmail.com', 'cses.carleton77@gmail.com', 'cses.carleton77@gmail.com', 'cses.carleton77@gmail.com', 0, NULL, '$2y$13$G1sIir49j2P77P98dPDcKOvlgmqlpF205MG2FSmHx3QBOIyfNfXsy', NULL, '4G-cSeuQTlyv4jvZS5p22ZUHLEiQaXQdLkyD85rFcWQ', NULL, 'a:0:{}', 'CHARLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(328, 'ginakichuk@rambler.ru', 'ginakichuk@rambler.ru', 'ginakichuk@rambler.ru', 'ginakichuk@rambler.ru', 1, NULL, '2213798928893811', '2019-04-18 06:45:46', NULL, NULL, 'a:0:{}', 'Virginia  Poddubnaya', NULL, NULL, NULL, NULL, NULL, NULL, 'ava328.jpg', NULL, 'online', NULL, NULL),
(329, 'director@vdsina.ru', 'director@vdsina.ru', 'director@vdsina.ru', 'director@vdsina.ru', 0, NULL, '$2y$13$mfdnHLpSa.yd12KkkkoheONT0nTmZu6KAjFE4qN1CW9zWf3YwCfmu', NULL, 'GmTPSe0WMrZ0_rZigDzOsIfq3-fhMa0MpzICrMPkINE', NULL, 'a:0:{}', 'Holographicfsl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(330, 'bill@vdsina.ru', 'bill@vdsina.ru', 'bill@vdsina.ru', 'bill@vdsina.ru', 0, NULL, '$2y$13$qzgmTRV7d//Ot7cWSIRDKuCgI7Zcx0L2TX06gFJx/uFpfR8XrlIUS', NULL, 'ldo_Z1SbCAV9-8zAQarOpN3WYFgGnVzDKu3XTjBiG_g', NULL, 'a:0:{}', 'Sprinklergbp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(331, 'bharocrestu@hotmail.com', 'bharocrestu@hotmail.com', 'bharocrestu@hotmail.com', 'bharocrestu@hotmail.com', 0, NULL, '$2y$13$iMtW3pYAy3bA3lfUFPHh3uLUjxdBWjZx0vhtN/Y1hcj0Gi3G4C8q2', NULL, 'ku95WfDS1hkNPAcTfHMjlQKsptIxFPT5mpA5Bi4rYGw', NULL, 'a:0:{}', 'Airbladexkf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(332, 'director@mchost.ru', 'director@mchost.ru', 'director@mchost.ru', 'director@mchost.ru', 0, NULL, '$2y$13$lW4zk4S97H.rrrxAiR0EHerrp8wKXgInkuraToFerMqzTm0c.Af2y', NULL, '51y1Wwwq2DuXLquUYXlNtHtsMKFWGBCaH-OZ2a7SokY', NULL, 'a:0:{}', 'Seriesocs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(333, 'alexey.bob@gmail.com', 'alexey.bob@gmail.com', 'alexey.bob@gmail.com', 'alexey.bob@gmail.com', 1, NULL, '10219640875467925', '2019-11-18 17:03:29', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', 'Alexey Bob', NULL, NULL, NULL, NULL, NULL, NULL, 'ava333.jpg', NULL, 'online', NULL, NULL),
(334, 'mariahlopez@fmhsolutions.com', 'mariahlopez@fmhsolutions.com', 'mariahlopez@fmhsolutions.com', 'mariahlopez@fmhsolutions.com', 0, NULL, '$2y$13$3jjAOq0SQIV51kiFiLR/1O.FuLQLID7uAlV6LrNhrCNRllLgG5zBe', NULL, 'jcNBQ4rhWKutWdJ_ZKYH5oZl9p-l2yW0kpLcK3w2Jgk', NULL, 'a:0:{}', 'Milwaukeexxs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(335, 'comronorea@mail.com', 'comronorea@mail.com', 'comronorea@mail.com', 'comronorea@mail.com', 0, NULL, '$2y$13$AffyPSqBYh8M/CfVm7EN9unIo2cDcrPVwQ5M0gWpAdTK/seEh2O96', NULL, 'BVbUj4SIurduyl9Az2-79gvtPQSpb1Yo-DqJ4175rys', NULL, 'a:0:{}', 'Serieszgs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(336, 'blowuscype@hotmail.com', 'blowuscype@hotmail.com', 'blowuscype@hotmail.com', 'blowuscype@hotmail.com', 0, NULL, '$2y$13$tVOjGkZD1/6zj4/k1f.sSOAM5uQn05Re3GodjBojwMOGH6KBkcyIO', NULL, 'xC1bsUEog9d7WGzc_0sxBrXAp0Z2Tx6a6RqynU1Eybg', NULL, 'a:0:{}', 'Testermyi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(337, 'robbycarriger@yahoo.com', 'robbycarriger@yahoo.com', 'robbycarriger@yahoo.com', 'robbycarriger@yahoo.com', 0, NULL, '$2y$13$.f2tuG2FEnoigmtLgZe/devN2EJIjJrQSyKyRDb0tCZj888D8NJ8O', NULL, 'pxWv1j5VtdWdyuPF75uJbBPfCiGkxowLX5nlqhzqaDk', NULL, 'a:0:{}', 'Humminbirdukb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(338, 'djones@paylessoffice.com', 'djones@paylessoffice.com', 'djones@paylessoffice.com', 'djones@paylessoffice.com', 0, NULL, '$2y$13$vVytzD/VAk8nhyD1W5xn0u1sUdA7sliUUAndm/2Esat5wghfWKJo6', NULL, 'wKMr-xGVwVm7x5ktpVmEF9BlUiad0EM8HHgL0KBi_I0', NULL, 'a:0:{}', 'BlackVuesuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(339, 'carouth@ebcap.org', 'carouth@ebcap.org', 'carouth@ebcap.org', 'carouth@ebcap.org', 0, NULL, '$2y$13$Qm9LVmHWS.fmyw4HGL89Z.rV4MvC6WOoypsUm/LTmpWhVq8zG.RQy', NULL, 'v3J3Nf8MCADpfjvRcKElPnrIPK95ZojHYXjRYi8XDl4', NULL, 'a:0:{}', 'Seriesbcq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(340, 'dirtmodeboyz@gmail.com', 'dirtmodeboyz@gmail.com', 'dirtmodeboyz@gmail.com', 'dirtmodeboyz@gmail.com', 0, NULL, '$2y$13$HYD5voN/PhKULdEICMtBDuSzOt0/yJzC7Y7SleIq2YZDbqG/kpEbq', NULL, 'zDUGPYMatde-TpfE1itMkD3Z1PAvdthvici70S8bqQo', NULL, 'a:0:{}', 'Foamjfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(341, 'resbotigrips@yahoo.com', 'resbotigrips@yahoo.com', 'resbotigrips@yahoo.com', 'resbotigrips@yahoo.com', 0, NULL, '$2y$13$yp6AXm3yauL2MVLMfQUGO.Del9W1KO6A8NTtw4F3LFj3t6lZMK0C2', NULL, 'K3cWVQmnOy86z9_qDFXQ5D6ElorwXccjpHzBmRJFdFo', NULL, 'a:0:{}', 'Beaconqry', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(342, 'tsarrulipu@yahoo.com', 'tsarrulipu@yahoo.com', 'tsarrulipu@yahoo.com', 'tsarrulipu@yahoo.com', 0, NULL, '$2y$13$eKgM6nemiIv.34ZrMG7Yj.GZJudRK3jVEvbzapM.Z0Q/04GLKyxDe', NULL, 'Y-ewLH5sjqDRPYbX-ewR3OUWOBAGsT-IsnFnknoseos', NULL, 'a:0:{}', 'Scanneruza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(343, 'restsoptasol@yahoo.com', 'restsoptasol@yahoo.com', 'restsoptasol@yahoo.com', 'restsoptasol@yahoo.com', 0, NULL, '$2y$13$lGu.mrINheJC8cmLLTNhIeI21fg1dhVOIwjwWKVAC4ecGD.7Vhliy', NULL, 'kzmsTTzXzt3b7SzthsWkDUPa9qyWbgjRSJn1KIKyZJw', NULL, 'a:0:{}', 'Sanderwmm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(344, 'protnethnaper@yahoo.com', 'protnethnaper@yahoo.com', 'protnethnaper@yahoo.com', 'protnethnaper@yahoo.com', 0, NULL, '$2y$13$QsaJqGZlfKf1gNXWe9dp3uNVqJky8fRWl7X8VRYIg93IOh.mh20Ke', NULL, 'pCWDz7xxsRm5TCl7_6ZnzPbzFBfzy60En8fzoAHVD50', NULL, 'a:0:{}', 'Pouringkrw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(345, 'crittby@hevanet.com', 'crittby@hevanet.com', 'crittby@hevanet.com', 'crittby@hevanet.com', 0, NULL, '$2y$13$Gv6v9c25.hxpHRRHldp2uO0ZZR11wMlcfp26KhvMhchvZfGMYgo2W', NULL, 'djaNJVxNgbidhLx0X41QLWqEC7vwKG2vwEmGb_ZnX8w', NULL, 'a:0:{}', 'BlackVueakx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(346, 'c.normand@dcsit-group.com', 'c.normand@dcsit-group.com', 'c.normand@dcsit-group.com', 'c.normand@dcsit-group.com', 0, NULL, '$2y$13$Nbbv5J1GlvK3fdsP5uZ1b.dPByEwj5HoYlXb8/kwpodWg.VA7PEgS', NULL, 'N5R6YywFOmxP6XHIwtggZ5IZF_Q418kANm2hckTrc-A', NULL, 'a:0:{}', 'Edelbrocklkq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(347, 'elena.johnson10@yahoo.com', 'elena.johnson10@yahoo.com', 'elena.johnson10@yahoo.com', 'elena.johnson10@yahoo.com', 0, NULL, '$2y$13$VcmXHFKw2yzHVeCmNJoi6O.Hf4Kt6SppsA0l7khrJ0iNIFM2hRncS', NULL, 'cZBGyzJJbJdD9yi5u5gjGWlKak8gpmg7cD7WpSDwdaU', NULL, 'a:0:{}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(348, 'grubevarel@gmail.com', 'grubevarel@gmail.com', 'grubevarel@gmail.com', 'grubevarel@gmail.com', 0, NULL, '$2y$13$Dbqk6YZUI/2rC60C3q5nZOLvWN4lSK436KJRV3daeshr/nqigjwym', NULL, 'gdoEgZNlZSkuMsBInXyN-vzSLLB39DzS3Uaf_MMwzLQ', NULL, 'a:0:{}', 'Telecastergqa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(349, 'ewalonsix@mail.com', 'ewalonsix@mail.com', 'ewalonsix@mail.com', 'ewalonsix@mail.com', 0, NULL, '$2y$13$9hGPu9g5HDsC45fvHWWiVOcRNEvENFIII2bCKjwmyLUlepl67IQye', NULL, 'p1mXAO2tYPdG6c1H8cSjLkG5jTaoP9jVMS7ZDaUbuO4', NULL, 'a:0:{}', 'KitchenAidjbz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(350, 'nomacampbell@hotmail.com', 'nomacampbell@hotmail.com', 'nomacampbell@hotmail.com', 'nomacampbell@hotmail.com', 0, NULL, '$2y$13$xI7S3bIQnJfun2/QjFosiuS4ubLNRQn9e8hMJA5aoMSlvOh1tuyGa', NULL, 'osPtPN6EOD4Kq5JC5bgoqfZ_L_2BzXi4jUzNIIpd3d4', NULL, 'a:0:{}', 'Amazonnnoud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(351, 'alexscisci91@gmail.com', 'alexscisci91@gmail.com', 'alexscisci91@gmail.com', 'alexscisci91@gmail.com', 0, NULL, '$2y$13$FmLqsbeIT.4FjQ.zUW7QneXUvzZ/09lkFjO8bp6gp/tVCEnU9g2pi', NULL, 'HAEuMKYj5HalJBle45-vT3koza-R08xIzGM1X_phqIQ', NULL, 'a:0:{}', 'Drywalljai', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(352, 'cortachicse@gmail.com', 'cortachicse@gmail.com', 'cortachicse@gmail.com', 'cortachicse@gmail.com', 0, NULL, '$2y$13$RwlldXZmzo9qthqLdA1u3.hJqUE1scYIvUHmqfyVvu59ew4PJ.rBm', NULL, 'T54veiXWCyju7_r6rUJXQ6EnTFDW9PHeAldWeitL6ok', NULL, 'a:0:{}', 'Businesscmg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(353, 'neilengkhosi@gmail.com', 'neilengkhosi@gmail.com', 'neilengkhosi@gmail.com', 'neilengkhosi@gmail.com', 0, NULL, '$2y$13$hTNQcEku6I3FNyTxewN1C..L.7fWHSaK9dLwVoGofNoqsfyb1hNUW', NULL, 'XGF-hi2zd9O9t_rmQR-sC60SjrJwM7wQU4VMThXzHUs', NULL, 'a:0:{}', 'Haywardldv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(354, 'barbrose95@gmail.com', 'barbrose95@gmail.com', 'barbrose95@gmail.com', 'barbrose95@gmail.com', 0, NULL, '$2y$13$9EUK.EPJqcOsxEPSND6AYeWu9cIfDNYfOdX17z1M2UQ8cpoFaGf4K', NULL, 'oiCrek_yNXdg5MrDPE_qOmFaohWsm8k046XSEIbdtmI', NULL, 'a:0:{}', 'Sightpbo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(355, 'kmm1960@comcast.net', 'kmm1960@comcast.net', 'kmm1960@comcast.net', 'kmm1960@comcast.net', 0, NULL, '$2y$13$5FJtrJybWrHz/RABgO4qpOSM5foF4LZYGP1CwGevxoM9WXCAOvnSG', NULL, 'ZLi3bxr3G-FYp7mHLxYStcA5Q_g7Eclmj0KJ5QN5nDM', NULL, 'a:0:{}', 'Batterywvx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(356, 'brittanykaszubowski@gmail.com', 'brittanykaszubowski@gmail.com', 'brittanykaszubowski@gmail.com', 'brittanykaszubowski@gmail.com', 0, NULL, '$2y$13$qeBMme0ByoxIxHWCv9in0.U43qLruBky1izGc.mokNHDGpPy1xwd2', NULL, 'amp6bbDoXkpdYjhnjQ39segSjmU-kQQpzsDT-1J8LqE', NULL, 'a:0:{}', 'Plasticfab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(357, 'amazon.orders@edc3.com', 'amazon.orders@edc3.com', 'amazon.orders@edc3.com', 'amazon.orders@edc3.com', 0, NULL, '$2y$13$QA4ZRUjNyAZqCP9uLIQB5eof33nYqo6mn4fYESvLJvuR6AENFXFJC', NULL, 'lDEQFe-jeZO19W-kaGiahF5BK5Vz1egFi77djTjF8i8', NULL, 'a:0:{}', 'Independentttt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(358, 'owenmccuen@gmail.com', 'owenmccuen@gmail.com', 'owenmccuen@gmail.com', 'owenmccuen@gmail.com', 0, NULL, '$2y$13$TXnFY4InG6d9m/.6so1CCOkjlVg2TcXg7Ss77SfP8mgjFPlzHAAOu', NULL, 'j1Z7v5ch9dJm2Y-PXeukjOvRRMGNPLb_9rw_QbzpluA', NULL, 'a:0:{}', 'Businesslbl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(359, 'h.kuskova@gmail.com', 'h.kuskova@gmail.com', 'h.kuskova@gmail.com', 'h.kuskova@gmail.com', 0, NULL, '$2y$13$UsRGi19pkdyBmSZoEINlw.pN.U8zuZEUy03H1xRZuZAaPCEC.WQ8W', NULL, 'NRavHmr4JMZw7tToHlrWhxCsqJEQQkucVCXlPfmkyOw', NULL, 'a:0:{}', 'KitchenAidufa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(360, 'ddafnoula@gmail.com', 'ddafnoula@gmail.com', 'ddafnoula@gmail.com', 'ddafnoula@gmail.com', 0, NULL, '$2y$13$u5i0rUfhatv6r8bkpBHumOtx5nfoEAEqvykWbqBJsvCSpEMXwjCEa', NULL, '6bnPBZfhXXY__S6uMWs_i9jq2lVj2wB9iGqDwH8WALA', NULL, 'a:0:{}', 'Rachiofwj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(361, 'ap@screentight.com', 'ap@screentight.com', 'ap@screentight.com', 'ap@screentight.com', 0, NULL, '$2y$13$hgVPagwFkUs8GfKhBDsaUOQTaBgjA5a2/cK3tMey1J003f93mbATm', NULL, 'nwFS-7yO1L8n43sBU6mZ1fbetPxlbYsvJeOC5_I3gI4', NULL, 'a:0:{}', 'Sightffc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(362, 'mstark88@hotmail.com', 'mstark88@hotmail.com', 'mstark88@hotmail.com', 'mstark88@hotmail.com', 0, NULL, '$2y$13$LheIFmL1GGDZUjL2iKaZm.Rchm6L7DrGrGnjBt./aq3/PDVE6LuyS', NULL, 'sWq2VYQp7jXltZUZJ_ziSXCML4CPxMflSgKqz4GlDQU', NULL, 'a:0:{}', 'Universalvjb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(363, 'carolynkaylopez@sbcglobal.net', 'carolynkaylopez@sbcglobal.net', 'carolynkaylopez@sbcglobal.net', 'carolynkaylopez@sbcglobal.net', 0, NULL, '$2y$13$Refh.wrgNFSK3K6cQknjFerNdKV/Cf1A895ChqAaLvBXU2hPs6DY.', NULL, 'MqqXFB1pjinNfUPOr-TE2p3nrkjHQXXWRXwsRlbVHPc', NULL, 'a:0:{}', 'Humminbirdlwk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(364, 'asbest@x-store.net', 'asbest@x-store.net', 'asbest@x-store.net', 'asbest@x-store.net', 0, NULL, '$2y$13$gZ7TSX9n4KieIcJKNGOn4.LgWZok5H7Qn5M8Z7xCJUFPIdF5xP63u', NULL, 'fVcOftspxaHK7SpJM2Ae_s-Sn3AT7Qdeal_3ADvDOi8', NULL, 'a:0:{}', 'Mojaveinn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(365, 'msullivan@kensingtoncaterers.com', 'msullivan@kensingtoncaterers.com', 'msullivan@kensingtoncaterers.com', 'msullivan@kensingtoncaterers.com', 0, NULL, '$2y$13$Q/T1zDX3uu7GnkUlUIM5QeIpQCeRGGNYqVTl2L6yaHs9yvznWPu8C', NULL, 'EbQGjt0nbKCj0RXccdclKfWPxNUHVkOgeYRD7aDg1Bs', NULL, 'a:0:{}', 'Augustife', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(366, 'anthonybea8@gmail.com', 'anthonybea8@gmail.com', 'anthonybea8@gmail.com', 'anthonybea8@gmail.com', 0, NULL, '$2y$13$uPfd0jOPn6ePtRyyyCqKcePO7c9ig3VLpGwnlqN5nuecdRCMyBQSK', NULL, 'GRj08IrS9cShOMvgmY8QEcezk3RKM2uEDVH3Lh6RroA', NULL, 'a:0:{}', 'Scannerqdo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(367, 'myronfreling@yahoo.com', 'myronfreling@yahoo.com', 'myronfreling@yahoo.com', 'myronfreling@yahoo.com', 0, NULL, '$2y$13$LCdvEnnkkxeY/aqZbn6V.OlXr1KkJ4kpp27bJ246tRo2itkopyAeW', NULL, 'NtgzIhIMRxZgleK3P_5ltigz_ag2wyWMaveo3B4JUK8', NULL, 'a:0:{}', 'Vortexlyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(368, 'garyh@airmail.net', 'garyh@airmail.net', 'garyh@airmail.net', 'garyh@airmail.net', 0, NULL, '$2y$13$VdaTKV/EbUjRdio8FFnw.Osk9w8m5uSLQzlwO1kgzRPEZQLNS.4.K', NULL, 'LpXg15LyE89zYXCBd0bFEfEJ9QE5LicHWYjp3b1az1U', NULL, 'a:0:{}', 'Furriondut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(369, 'backcampbensso@yahoo.com', 'backcampbensso@yahoo.com', 'backcampbensso@yahoo.com', 'backcampbensso@yahoo.com', 0, NULL, '$2y$13$ogG5/qsVnMeuBkJJCwmdaekRvcBfPA5IQNJ38yOlK5V7ERQhODQEW', NULL, 'gvLmSuA7mtGgucl_-Yzt1vXeaKPMZ8IlWUTfho00gms', NULL, 'a:0:{}', 'Blenderhhk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(370, 'kostyantyn.bilous@gmail.com', 'kostyantyn.bilous@gmail.com', 'kostyantyn.bilous@gmail.com', 'kostyantyn.bilous@gmail.com', 1, NULL, '10213155577119064', '2019-11-08 09:39:21', NULL, NULL, 'a:0:{}', 'Kostyantyn Bilous', 'Freelancer', 'Kharkiv University of Radioelectronics', 'My Own Business', '2019', 'Kharkiv, Ukraine', 'https://www.website-consultant.com.ua', 'ava370.jpg', 'I have been working as a freelancer since 2002', 'online', NULL, NULL),
(372, 'tmdmarketingteam@gmail.com', 'tmdmarketingteam@gmail.com', 'tmdmarketingteam@gmail.com', 'tmdmarketingteam@gmail.com', 1, NULL, '115026367914905845788', '2019-10-03 18:44:04', NULL, NULL, 'a:0:{}', ' ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(373, 'cristina.williams1130@gmail.com', 'cristina.williams1130@gmail.com', 'cristina.williams1130@gmail.com', 'cristina.williams1130@gmail.com', 1, NULL, '763593634090985', '2019-10-04 16:16:48', NULL, NULL, 'a:0:{}', 'Cristina Williams', NULL, NULL, NULL, NULL, NULL, NULL, 'ava373.jpg', NULL, 'online', NULL, NULL),
(374, 'testtts@tradetoshare.com', 'testtts@tradetoshare.com', 'testtts@tradetoshare.com', 'testtts@tradetoshare.com', 1, NULL, '$2y$13$IQzd87HPxYhXMzuToAYOxu/tvvbpIUGbogdcRw1SxWmtL3./4z8DK', NULL, NULL, NULL, 'a:0:{}', 'Elena Test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(382, 'elena.johnson10@hotmail.com', 'elena.johnson10@hotmail.com', 'elena.johnson10@hotmail.com', 'elena.johnson10@hotmail.com', 1, NULL, '$2y$13$SDldC0hWPKFCoMbriR0OwOZ22mAHp0st3mWH.V7inh1DFqrX8LYQ.', '2019-10-09 16:49:19', NULL, NULL, 'a:0:{}', 'Elena Hotmail', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(383, 'editor@your-property.biz', 'editor@your-property.biz', 'editor@your-property.biz', 'editor@your-property.biz', 1, NULL, '$2y$13$N0p9yjA5SG03nuzNhbd6i.pBZkCx2lT2V591J5Md7v4ymOOSSlFgu', '2019-10-09 19:31:14', NULL, NULL, 'a:1:{i:0;s:5:\"ADMIN\";}', 'Kostyantyn Bilous', 'Freelancer', 'Kharkiv University of Radioelectronics', 'Private Business', '2019', 'Kharkiv, Ukraine', 'http://www.website-consultant.com.ua', '521e8462131967f79aea60c648d4276d.jpeg', 'I have been working as a freelancer since 2003', 'online', 'acb3e734d4972cb2b5907d65bc209c3f.jpeg', NULL),
(384, 'kennedynissleycef@yahoo.com', 'kennedynissleycef@yahoo.com', 'kennedynissleycef@yahoo.com', 'kennedynissleycef@yahoo.com', 0, NULL, '$2y$13$QCTINwaQZJjmv/nQxEL6jOeZOZ8NbD0Dh0aKMExFuOr./ma.PyvU.', NULL, 'zpCnDmuf7DGqHDOjBJcu8BEupL8IScLycOj8Oc0QQUA', NULL, 'a:0:{}', 'Invest $ 72731 in Cryptocurrency once and get $ 317397 passive income per month: https://v.ht/p58BtoF?&euhlb=yGEzX6Gh21bJ Invest $ 72731 in Cryptocurrency once and get $ 317397 passive income per month: https://v.ht/p58BtoF?&euhlb=yGEzX6Gh21bJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(385, 'rn042105@gmail.com', 'rn042105@gmail.com', 'rn042105@gmail.com', 'rn042105@gmail.com', 0, NULL, '$2y$13$1ti7bn4WMycPgg/kFN2/keIbiuvNNhjDchEchb1UU01wl2Clj8X0W', NULL, 'kXk7UyFtD1P8boZEoxZSdIU2YfGj_4P6wKMIjBLEKBM', NULL, 'a:0:{}', 'sbuiPQod indroKYePRzbvAwE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(386, 'sfbrown1208@gmail.com', 'sfbrown1208@gmail.com', 'sfbrown1208@gmail.com', 'sfbrown1208@gmail.com', 0, NULL, '$2y$13$gVQI8VSeqs5QtL9NRIKtB.i/3emJbUNDrjVHbgeuqk1PW6FWp6xna', NULL, 'TAlAwYKWvFsENuQbhXypRyMlBuuz-mdPRIoZDGfvZI0', NULL, 'a:0:{}', 'JSuUBNOfRpFHEyL wGYgjIlKOdC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(387, 'jyarish@fresco.com', 'jyarish@fresco.com', 'jyarish@fresco.com', 'jyarish@fresco.com', 0, NULL, '$2y$13$BKElymmtElFaNUUc9wMli.MLZz2r.18E/d9I8lk3M1MQK7k8qV2WK', NULL, 'QOdKBla_My3wY_VaLJNjBIlP_Gqlm2tZaRVZhM_Um0I', NULL, 'a:0:{}', 'ANvVqHyxZ zZOJxMqgNCvsI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(388, 'rcravens@wpb.org', 'rcravens@wpb.org', 'rcravens@wpb.org', 'rcravens@wpb.org', 0, NULL, '$2y$13$fYX8z8Ryeumu5j/4mda0TOxgiqOpkUiV6Mjn40AJHegAjdFxTlMdW', NULL, 'c9Ng8CxundPBHECyqFEKNuGjEPPsIzygPnAnetNVFX4', NULL, 'a:0:{}', 'KcLZMDnhTajty dzSMrAnIuGRKHC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(389, 'hermanlyau@gmail.com', 'hermanlyau@gmail.com', 'hermanlyau@gmail.com', 'hermanlyau@gmail.com', 0, NULL, '$2y$13$eN1qBZZqGcF5T1J9V.E51.ZPtfqz2mbhMr9/V40tsvwlUH1knqQjy', NULL, 'TolS8-5A-07edkzTXIlTJMaanYkiPH1CFlwW1VG5kvU', NULL, 'a:0:{}', 'QiUOCNtfhLYTMS fyQvTbwUL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(390, 'rvaughn@imagenettech.com', 'rvaughn@imagenettech.com', 'rvaughn@imagenettech.com', 'rvaughn@imagenettech.com', 0, NULL, '$2y$13$4Ha1/LTfO71cJwIuXXOYVeSmC00RBv.rnApZy6Wh98jg4NrpVqw3K', NULL, 'lWHyvzX4RKX3hvOmY1mF-A6e5QNWyeE4UG2-JcnzU5k', NULL, 'a:0:{}', 'LzYHdQpbok GmRgJcCPpOvWUIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(391, 'abgarner0303@gmail.com', 'abgarner0303@gmail.com', 'abgarner0303@gmail.com', 'abgarner0303@gmail.com', 0, NULL, '$2y$13$RHx52M.RNZOG1e8ApOISvOLQEptqn7wJHqi3pjMt/IHMTj0xEWlWW', NULL, 'JTV9ucceQ0cs2Wpw-PWRmN-QieO0yUVxK2_1uJsU00g', NULL, 'a:0:{}', 'aovfGcwIsFh yXVJROjkfNi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(392, 'jeffminor@hidcc1.org', 'jeffminor@hidcc1.org', 'jeffminor@hidcc1.org', 'jeffminor@hidcc1.org', 0, NULL, '$2y$13$Ao0Cdk3rW5UUw53enAtI.eT/U4wZI8ivlPno5fobIEaj3DpFYb/pS', NULL, 'w-gNEYrRmCRRa2CwSYemEvi0JgFQqvlPt3LEmxXN2Gk', NULL, 'a:0:{}', 'FMDCcZOdEulbaLH aQUgGfADSslTV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(393, 'richard.barrera@oncor.com', 'richard.barrera@oncor.com', 'richard.barrera@oncor.com', 'richard.barrera@oncor.com', 0, NULL, '$2y$13$/9EYi4AHMEqEWxrXOTOQVOrb4AS.wBPgBcMCNdAykHmyQj9n6Q.Q2', NULL, 'ozEpo-BoOCEJ-k1C4drXFX9gU7zZI3nvT08wJAVR_eo', NULL, 'a:0:{}', 'apxiYRzvJZPsVcSH ISQPluxwkn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(394, 'jencos@gmail.com', 'jencos@gmail.com', 'jencos@gmail.com', 'jencos@gmail.com', 0, NULL, '$2y$13$km6OTqt7rtBswzuxc61IgOJrXXGLpBNsFdy4ieOZWGUrKV.vYsG4m', NULL, 'ID9R3OUssk5YcIFKM2GvkSzWVkpR4LDNgCx7uGBCN_c', NULL, 'a:0:{}', 'nyCatMSfo qxoIknaBcdulzb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(395, 'travis.kennedy@oncor.com', 'travis.kennedy@oncor.com', 'travis.kennedy@oncor.com', 'travis.kennedy@oncor.com', 0, NULL, '$2y$13$1dAVRzkYd9LYLz5tksdfueJeiIIzVo4uyi1vCIp5eORXj.JSWM7yO', NULL, 'dddYwdKw68hwbZNpEv5Ah7zkujvCQOcgDQOJ_Wzz5L4', NULL, 'a:0:{}', 'SehnlEsfadP WCubjOQUy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(396, 'leslieesslinger@gmail.com', 'leslieesslinger@gmail.com', 'leslieesslinger@gmail.com', 'leslieesslinger@gmail.com', 0, NULL, '$2y$13$0nETremdtohCgnUM8UsIpez6HCb8oQY33BrtffPHxVUpn0eP2N2lm', NULL, 'ichf4of1ByDD1TwWc-E_AKbbrg1jB67uoNbkvGr3qwQ', NULL, 'a:0:{}', 'cCutoNxq mPrxMQYszve', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(397, 'cleckenbyuhs9@gmail.com', 'cleckenbyuhs9@gmail.com', 'cleckenbyuhs9@gmail.com', 'cleckenbyuhs9@gmail.com', 0, NULL, '$2y$13$2DiPoBKngo6GkiEIqdyqGehsozUrY//mS2nTU9U6jD9twXJNHnCYC', NULL, 'AgkIfX-ZlpiAVu6VY3Eb86TOOt3ReWvUvFcWJ3CoEFE', NULL, 'a:0:{}', 'raZbJivlWyG zIRVlHcQCOLJkoxq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(398, 'amypaine976@gmail.com', 'amypaine976@gmail.com', 'amypaine976@gmail.com', 'amypaine976@gmail.com', 0, NULL, '$2y$13$fkWeTYJ2VYgBUzqgGBZvxeuj9QwbC3q6DiDXYBFIbuYZVV8AhKlXq', NULL, '8cJHI5VQGg-H_tsgJ1erVR7MJ_UX1wFoSX1dqgKRSDk', NULL, 'a:0:{}', 'SkHBatweAfsIrgp OcIXeYpdfCamjDr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(399, 'gfitzpatrick@ststephens-ridgefield.org', 'gfitzpatrick@ststephens-ridgefield.org', 'gfitzpatrick@ststephens-ridgefield.org', 'gfitzpatrick@ststephens-ridgefield.org', 0, NULL, '$2y$13$AWcsamXDFC7k4qg5R4X6DO24PAHgvXhD3I5nKyoTLlww7mtTY5/Iy', NULL, 'IADp8rZGvMiOI_kMdkXXcSodkhZ-Wwvk_dLOf1O1BoQ', NULL, 'a:0:{}', 'oGvFzWkjNHnSPrgp hClaPZyBvJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(400, 'feuerhelm.lindy@yahoo.com', 'feuerhelm.lindy@yahoo.com', 'feuerhelm.lindy@yahoo.com', 'feuerhelm.lindy@yahoo.com', 0, NULL, '$2y$13$IuQbnYiEmvJ.t40lffZBcuYR.KnjZ2vV6ans8M.WU.mKhfwlulLVK', NULL, 'hj0mZoAXhHsBlsSglRMUuVFRvLe_FDZ2c-V0le-vOH4', NULL, 'a:0:{}', 'mteSFaTNxqbwG JcXAZeSqM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(401, 'jana.bendig@web.de', 'jana.bendig@web.de', 'jana.bendig@web.de', 'jana.bendig@web.de', 0, NULL, '$2y$13$xDTydo00I8/SUv/UuToZCe.iAYGR9ECaeXhlWZboI0vLVl4aM04VS', NULL, '7J3AlH4rE0l20S6Q3rJtUQYJBYT1C7A25Im-I1KPoTk', NULL, 'a:0:{}', 'FgerTdpDWR kXrFNQjOqGmPD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(402, 'everettlightburn@yahoo.com', 'everettlightburn@yahoo.com', 'everettlightburn@yahoo.com', 'everettlightburn@yahoo.com', 0, NULL, '$2y$13$7nteZ0.Zi71n4u9EN5Nk8ePBoGYWrKb6Zkt.8CBsQvkV6MCEYD3rO', NULL, 'pA_f5Z83BJdRvo6COMxQEwG79U5z06HWIF3WXtgpKhY', NULL, 'a:0:{}', 'TIhZlyvQFoM IfxCnvGTXz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL),
(403, 'kimrobinson0110@gmail.com', 'kimrobinson0110@gmail.com', 'kimrobinson0110@gmail.com', 'kimrobinson0110@gmail.com', 0, NULL, '$2y$13$MmRyTMIM.JXUEQGNwbq8eugqGA0VHUkPtWO2GLBoJ3oSuMyYE0DVG', NULL, 'it0GFf5UQeS5UuE1J5J13239FPjFxh9lgS46Kuik3T8', NULL, 'a:0:{}', 'LUkdnmPbczX khGLvcKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'online', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_tradelands`
--

CREATE TABLE `users_tradelands` (
  `user_id` int(11) NOT NULL,
  `tradeland_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_experience`
--

CREATE TABLE `user_experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specialisation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` date NOT NULL,
  `end` date DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_experience`
--

INSERT INTO `user_experience` (`id`, `user_id`, `industry_id`, `created_at`, `company`, `logo`, `title`, `location`, `specialisation`, `start`, `end`, `is_current`) VALUES
(1, 383, 1, '2019-11-08 02:57:19', 'PE Bilous K.V.', '0944baca1d80474f2b09e22f6773e801.jpeg', 'Freelancer', 'Kharkiv', NULL, '2003-03-08', '2003-05-08', 1),
(2, 285, 1, '2019-11-08 07:30:49', 'B&J', '9e89b7b7e3b53d45a08d9d6179e17e5c.png', 'Network', 'Ottawa, ON, Canada', NULL, '1999-05-08', '2019-08-08', 1),
(3, 295, 1, '2019-11-08 10:32:50', 'TTS', '9885e5a924241581519fc5f4ce7c7905.jpeg', 'Test', 'Canada', 'IT', '2019-08-08', '2003-12-08', 1),
(4, 287, 1, '2019-11-08 10:58:55', 'Azucka', 'd2293e85fd43c8d7206c7ae258990835.png', 'Designer', 'Ottawa, ON, Canada', 'logo design', '2011-03-08', '2015-05-08', 0),
(5, 287, 1, '2019-11-08 11:04:05', 'QArea', 'eed41456d21a1ea344ab2df7ab6d19fa.png', 'QA', 'Ukraine', 'Testing', '2007-09-08', '2009-12-08', 0),
(6, 287, 1, '2019-11-08 11:06:31', 'DataArt', '90fa77a7f53af5d7cb2630f6f7c9b322.png', 'QA', 'Ukraine', 'QA', '2012-11-08', '2014-08-08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_fos_group`
--

CREATE TABLE `user_fos_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_votes`
--

CREATE TABLE `user_votes` (
  `user_id` int(11) NOT NULL,
  `vote_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_votes`
--

INSERT INTO `user_votes` (`user_id`, `vote_user_id`) VALUES
(285, 287),
(285, 288),
(285, 291),
(285, 383),
(287, 285),
(291, 295),
(383, 285),
(383, 288),
(383, 370);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `yid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `user_id`, `title`, `description`, `url`, `yid`, `created_at`, `updated_at`) VALUES
(14, 318, 'BBQ Pit Boys Pasta with Meat and Cheese recipe', '<p>his isn\'t your Aunt Bee\'s Pasta dish so watch out for the Food Police. Watch the BBQ Pit Boys put together a Beef, Sausage, Bacon and three Cheese iron pan casserole recipe that will make you a legend at your family picnic. And it\'s real easy to do with these few simple tips.</p>', 'https://www.youtube.com/watch?v=EAMXIGpWT3A', 'EAMXIGpWT3A', '2019-02-08 09:02:22', '2019-02-08 09:02:22'),
(17, 318, 'Po Boy Beef Sandwich grilled by the BBQ Pit Boys', '<p>This Louisiana classic Po-Boy is about the best damn Beef Sandwich you can make on the barbecue grill. And it\'s real easy to cook up, as shown by the BBQ Pit Boys. You can print this barbeque recipe and 100\'s more at our Website</p>', 'https://www.youtube.com/watch?v=FxcqsPA_nCM', 'FxcqsPA_nCM', '2019-02-08 09:17:48', '2019-02-08 09:17:48'),
(18, 318, 'BBQ Pork Roast recipe by the BBQ Pit Boys', '<p>Some call this easy to grill Pork Butt recipe pure Pork Porn. You decide. To serve it up, all you need to do is get some pork shoulder roasts, layer on some brown sugar and salt rub, and then slow roast \'em indirect on a backyard grill until fork tender. Serve the roast up with some pork gravy on</p>', 'https://www.youtube.com/watch?v=SZeyT5OvomE', 'SZeyT5OvomE', '2019-02-08 09:18:28', '2019-02-08 09:18:28'),
(19, 318, 'Smoked Whiskey Burgers', 'Turn down the heat and go low and slow the next time you grill up some Burgers at your Pit. Check out this BBQ Pit Boys whiskey-plugged mega meat monster recipe that’ll satisfy any hunger… guaranteed!  Click for more information about the Colossus Smoke', 'https://www.youtube.com/watch?v=ZQU_VPbv_sU', 'ZQU_VPbv_sU', '2019-02-12 05:02:37', '2019-02-12 05:02:37'),
(20, 295, 'test test', 'success', 'https://www.youtube.com/watch?v=Tfqfm5xl5tU', 'Tfqfm5xl5tU', '2019-02-12 12:59:18', '2019-02-12 12:59:18'),
(21, 295, 'test', 'Privacy\r\nGoogle Account', 'https://www.youtube.com/watch?v=Tfqfm5xl5tU', 'Tfqfm5xl5tU', '2019-02-12 13:11:51', '2019-02-12 13:11:51'),
(22, 317, 'Catshhgjg', 'Залоарпллв', 'https://www.youtube.com/watch?v=nNEo_FCNbPQ', 'nNEo_FCNbPQ', '2019-02-13 04:55:14', '2019-02-13 04:55:14'),
(23, 285, 'Armeni', '<p>hello</p>', 'https://www.youtube.com/watch?v=8Bz5B1Y5yRc', '8Bz5B1Y5yRc', '2019-07-23 12:12:43', '2019-07-23 12:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_23A0E66A76ED395` (`user_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4FBF094FA76ED395` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fos_group`
--
ALTER TABLE `fos_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4B019DDB5E237E06` (`name`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6A2CA10C4B89032C` (`post_id`),
  ADD KEY `IDX_6A2CA10CA76ED395` (`user_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307FA76ED395` (`user_id`),
  ADD KEY `IDX_B6BD307F78CED90B` (`from_id`);

--
-- Indexes for table `network`
--
ALTER TABLE `network`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_608487BCA76ED395` (`user_id`),
  ADD KEY `IDX_608487BC2130303A` (`from_user_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BF5476CAA76ED395` (`user_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_14B78418A76ED395` (`user_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`),
  ADD KEY `IDX_5A8A6C8D1219C6F8` (`origin_user_id`),
  ADD KEY `IDX_5A8A6C8DD98EC9DB` (`tradeland_id`);

--
-- Indexes for table `post_votes`
--
ALTER TABLE `post_votes`
  ADD PRIMARY KEY (`post_id`,`user_id`),
  ADD KEY `IDX_C690F6204B89032C` (`post_id`),
  ADD KEY `IDX_C690F620A76ED395` (`user_id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_92C4739CA76ED395` (`user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_794381C6A76ED395` (`user_id`),
  ADD KEY `IDX_794381C67294869C` (`article_id`);

--
-- Indexes for table `tradeland`
--
ALTER TABLE `tradeland`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C301E87E7E3C61F9` (`owner_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- Indexes for table `users_tradelands`
--
ALTER TABLE `users_tradelands`
  ADD PRIMARY KEY (`user_id`,`tradeland_id`),
  ADD KEY `IDX_7B1B3D4CA76ED395` (`user_id`),
  ADD KEY `IDX_7B1B3D4CD98EC9DB` (`tradeland_id`);

--
-- Indexes for table `user_experience`
--
ALTER TABLE `user_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A2F707EFA76ED395` (`user_id`),
  ADD KEY `IDX_A2F707EF2B19A734` (`industry_id`);

--
-- Indexes for table `user_fos_group`
--
ALTER TABLE `user_fos_group`
  ADD PRIMARY KEY (`user_id`,`group_id`),
  ADD KEY `IDX_4BE1103FA76ED395` (`user_id`),
  ADD KEY `IDX_4BE1103FFE54D947` (`group_id`);

--
-- Indexes for table `user_votes`
--
ALTER TABLE `user_votes`
  ADD PRIMARY KEY (`user_id`,`vote_user_id`),
  ADD KEY `IDX_B3498197A76ED395` (`user_id`),
  ADD KEY `IDX_B34981972CDC8C0D` (`vote_user_id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7CC7DA2CA76ED395` (`user_id`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A108564A76ED395` (`user_id`),
  ADD KEY `IDX_5A108564979B1AD6` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `fos_group`
--
ALTER TABLE `fos_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `network`
--
ALTER TABLE `network`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tradeland`
--
ALTER TABLE `tradeland`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=404;

--
-- AUTO_INCREMENT for table `user_experience`
--
ALTER TABLE `user_experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E66A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `FK_4FBF094FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6A2CA10CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307F78CED90B` FOREIGN KEY (`from_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B6BD307FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `network`
--
ALTER TABLE `network`
  ADD CONSTRAINT `FK_608487BC2130303A` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_608487BCA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `FK_BF5476CAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_14B78418A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D1219C6F8` FOREIGN KEY (`origin_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5A8A6C8DD98EC9DB` FOREIGN KEY (`tradeland_id`) REFERENCES `tradeland` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_votes`
--
ALTER TABLE `post_votes`
  ADD CONSTRAINT `FK_C690F6204B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C690F620A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provider`
--
ALTER TABLE `provider`
  ADD CONSTRAINT `FK_92C4739CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK_794381C67294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_794381C6A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tradeland`
--
ALTER TABLE `tradeland`
  ADD CONSTRAINT `FK_C301E87E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_tradelands`
--
ALTER TABLE `users_tradelands`
  ADD CONSTRAINT `FK_7B1B3D4CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_7B1B3D4CD98EC9DB` FOREIGN KEY (`tradeland_id`) REFERENCES `tradeland` (`id`);

--
-- Constraints for table `user_experience`
--
ALTER TABLE `user_experience`
  ADD CONSTRAINT `FK_A2F707EF2B19A734` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`id`),
  ADD CONSTRAINT `FK_A2F707EFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_fos_group`
--
ALTER TABLE `user_fos_group`
  ADD CONSTRAINT `FK_4BE1103FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_4BE1103FFE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_group` (`id`);

--
-- Constraints for table `user_votes`
--
ALTER TABLE `user_votes`
  ADD CONSTRAINT `FK_B34981972CDC8C0D` FOREIGN KEY (`vote_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B3498197A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `FK_7CC7DA2CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `FK_5A108564979B1AD6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5A108564A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

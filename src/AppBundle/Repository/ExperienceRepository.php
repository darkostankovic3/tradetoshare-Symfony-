<?php

namespace AppBundle\Repository;

/**
 * ExperienceRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ExperienceRepository extends \Doctrine\ORM\EntityRepository
{
	public function getList($id) {
		$query = "SELECT e.*, i.name as industry FROM user_experience e LEFT JOIN industry i ON e.industry_id = i.id WHERE e.user_id = ? ORDER BY start DESC";

		$params = array(
			$id
		);

		$sth = $this->getEntityManager()->getConnection()->prepare($query);
		$sth->execute($params);

		$records = $sth->fetchAll();

		foreach($records as &$record) {
		
			if($record['end'] == null || $record['is_current'] == 1) {
				$record['end_text'] = 'Now';
				$end = time();
			} else {
				$record['end_text'] = date('M Y', strtotime($record['end']));
				$end = strtotime($record['end']);
			}

			$record['duration'] = (date('Y', $end) - date('Y', strtotime($record['start'])));

			if($record['duration'] == "0") {
				$record['duration'] = round(($end - strtotime($record['start'])) / (3600 * 24 * 31));
				if($record['duration'] == "0") {
					$record['duration'] = round(($end - strtotime($record['start'])) / (3600 * 24));
					if($record['duration'] == "0") {
						$record['duration'] = "";
					} else {
						$record['duration'] = $record['duration'] == "1" ? $record['duration'] . " day" : $record['duration'] . " days";
					}
				} else {
					$record['duration'] = $record['duration'] == "1" ? $record['duration'] . " month" : $record['duration'] . " months";
				}
			} else {
				$record['duration'] = $record['duration'] == "1" ? $record['duration'] . " year" : $record['duration'] . " years";
			}

			$record['start_text'] = date('M Y', strtotime($record['start']));
		}

		return $records;
	}

	public function update($record) {

		if($record->getId() == null) {
			$query = "INSERT INTO user_experience (created_at, user_id, company, logo, title, industry_id, location, specialisation, start, end, is_current) VALUES (NOW(), ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			$params = array(
				$record->getUser()->getId(),
				$record->getCompany(),
				$record->getLogo(),
				$record->getTitle(),
				$record->getIndustry(),
				$record->getLocation(),
				$record->getSpecialisation(),
				$record->getStart()->format('Y-m-d'),
				$record->getEnd() == null ? null : $record->getEnd()->format('Y-m-d'),
				$record->getIsCurrent() ? 1 : 0
			);
		} else {
			$query = "UPDATE user_experience SET company = ?, logo = ?, title = ?, industry_id = ?, location = ?, specialisation = ?, start = ?, end = ?, is_current = ?  WHERE id = ?";

			$params = array(
				$record->getCompany(),
				$record->getLogo(),
				$record->getTitle(),
				$record->getIndustry(),
				$record->getLocation(),
				$record->getSpecialisation(),
				$record->getStart()->format('Y-m-d'),
				$record->getEnd() == null ? null : $record->getEnd()->format('Y-m-d'),
				$record->getIsCurrent() ? 1 : 0,
				$record->getId()
			);
		}

		$sth = $this->getEntityManager()->getConnection()->prepare($query);
		$sth->execute($params);
	}
}

(deftemplate Employee
	(slot work_experience)
        (slot academic_degree)
	(slot education_degree)
	)
(deffacts Employee_facts
	(Employee (work_experience 1_year_and_more))
	(Employee (academic_degree yes))
        (Employee (education_degree master_degree)))
(defrule Hired_Scientist
        (Employee (work_experience 1_year_and_more))
	(Employee (academic_degree yes))
        (Employee (education_degree master_degree))
=> (printout t Hired_Scientist crlf)
)
(defrule Hired_Engineer
        (Employee (work_experience 1_year_and_more))
	(Employee (academic_degree no))
        (Employee (education_degree master_degree))
=> (printout t Hired_Engineer crlf)
)
(defrule Refuse
	(or
        (Employee (work_experience less_1_year))
	(Employee (academic_degree no))
        (Employee (education_degree nothing))
	)

	=> (printout t Refuse crlf)
)
(deffacts Conditions
(higher_education yes)
(experience 3)
(scinece_degree no)
)

(defrule no_higher_education
(higher_education no)
=>
(printout t "NE GODEN" crlf)	
)) 

(defrule no_experience
(exp ?exp)
=>
(if (< ?exp 1)  			
then
(printout t "NE GODEN" crlf)	
)) 

(defrule researcher
(higher_education yes)
(scinece_degree yes) 
(exp ?exp)
=>
(if (> ?exp 1)  			
then
(printout t "GODEN KAK RESEARCHER" crlf)	
))

(defrule engineer
(higher_education yes)
(scinece_degree no) 
(exp ?exp)
=>
(if (> ?exp 1)  			
then
(printout t "GODEN KAK ENGINEER" crlf)	
))

(deffacts Facts
(Type SLR)
(Price 11000)
(Pixels 10)
(Zoom 50)
(Lens yes)
(Screen yes)
(Watertightness yes)
)

(defrule Model_1 
(Price ?Price)
(Screen yes)
(or(Pixels 14)
(Pixels 18))
(Type compact)
=> 
(if (< ?Price 23000)  			
then		
(printout t "Your choice Model1" crlf)	
))


(defrule Model_2
(Screen yes)
(Pixels ?pix)
(Price ?Price)
=>
(if
(and(<= ?pix 14) (<= ?Price 2000))
then		
(printout t "Your choice Model_2" crlf)	
))

(defrule Model_3
(Lens no)
(Type compact)
(Screen no)
(Watertightness yes)
(not(Type))
=>		
then		
(printout t "Your choice Model_3" crlf)	
)


(defrule Model_4
(Price ?Price)
(Type compact)
=> 
(if (< ?Price 10000)  			
then		
(printout t "Your choice Model_4" crlf)	
))

(defrule Model_5
(Zoom ?Zoom)
(Lens no)
(Screen yes)
(Watertightness yes)
=>
(if (> ?Zoom 50)
then
(printout t "Your choice Model_5" crlf)	
))



(defrule Model_6
(Lens no)
(Price ?Price)
(Type SLR)
(Pixels 24)
=> 
(if (> ?Price 50000)  	
then
(printout t "Your choice Model_6" crlf))
)

(defrule Model_7
(not (Zoom))
(Type SLR)
(Pixels 24)
(Price ?Price)
=> 
(if (< ?Price 40000)  	
then
(printout t "Your choice Model_7" crlf))
)


(defrule Model_8
(Lens yes)
(Price ?Price)
(Type SLR)
=> 
(if (> ?Price 20000)  	
then
(printout t "Your choice Model_8" crlf))
)



(defrule Model_9
(Lens yes)
(Price ?Price)
(Type SLR)
=> 
(if (> ?Price 20000)  	
then
(printout t "Your choice Model_9" crlf))
)



(defrule Model_10
(Screen yes)
(Type SLR)
(Price ?Price)
(Pixels ?Pix)
=> 
(if 
(and(< ?Price 20000) (>= ?Pix 30))
then
(printout t "Your choice Model_10" crlf)))
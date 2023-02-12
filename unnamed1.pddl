(define (domain elevator) 

  (:requirements
    :strips      
    :negative-preconditions 
  )

  (:predicates
    (level ?y) (elevator ?x) (transfer ?t)
    (is_at ?x ?y) (at ?t ?y) (can_go ?x ?y ?y)
  )
 
 (:action call
     :parameters (?x ?from ?to ?transfer)
     :precondition (and 
     (elevator ?x) (level ?from) (level ?to) (transfer ?transfer)
     (not(is_at ?x ?from)) (can_go ?x ?from ?to) (at ?transfer ?from)
     )
     :effect (and
        (is_at ?x ?from)
     )
 
  )
 
  (:action move
    :parameters (?from ?to ?x ?transfer)
    :precondition (and
      (level ?from) (level ?to) (elevator ?x) (transfer ?transfer)
      (at ?transfer ?from) (can_go ?x ?from ?to) (is_at ?x ?from) 
    )

    :effect (and
     
      (at ?transfer ?to) (not (at ?transfer ?from))
    )
  )
  )

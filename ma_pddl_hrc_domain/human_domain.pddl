(define (domain hrc-domain)
 (:requirements :factored-privacy :typing :durative-actions)
 (:types cube location ag - object
    robot_type human_type - ag
 )
 (:predicates
  (object_at ?obj - cube ?l - location)
)
)

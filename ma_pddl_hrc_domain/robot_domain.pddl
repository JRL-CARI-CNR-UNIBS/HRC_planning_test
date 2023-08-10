(define (domain hrc-domain)
 (:requirements :factored-privacy :typing :durative-actions)
 (:types cube location ag - object
    robot_type human_type - ag
 )
 (:constants
   release_area pick_area - location
 )
 (:predicates
  (object_at ?obj - cube ?l - location)
  (:private
   (a_holding ?agent - ag ?obj - cube)
   (a_free ?agent - ag)))
 (:durative-action pick_durative
  :parameters ( ?pick_obj - cube)
  :duration (= ?duration (get_duration ?pick_obj))
  :condition (and (at start (object_at ?pick_obj pick_area))(at start (a_free ?robot)))
  :effect (and (at end (not (object_at ?pick_obj pick_area))) (at end (a_holding ?robot ?pick_obj)) (at end (not (a_free ?robot)))))
 (:action place
  :parameters ( ?robot - robot_type ?place_obj - cube)
  :precondition (and 
   (a_holding ?robot ?place_obj)
  )
  :effect (and
 (object_at ?place_obj release_area) (not (a_holding ?robot ?place_obj)) (a_free ?robot)))
)

(define (domain hrc-domain)
 (:requirements :factored-privacy :typing)
 (:types
    cube location ag - object
    robot_type human_type - ag
    robotcube humancube - cube
 )
 (:constants
   release_area pick_area - location
 )
 (:predicates
  (object_at ?obj - cube ?l - location)
  (:private
   (a_holding ?agent - ag ?obj - cube)
   (a_free ?agent - ag)))
 (:action pick
  :parameters ( ?robot - robot_type ?pick_obj - robotcube)
  :precondition (and 
   (object_at ?pick_obj pick_area)
   (a_free ?robot)
  )
  :effect (and
 (not (object_at ?pick_obj pick_area)) (a_holding ?robot ?pick_obj) (not (a_free ?robot))))
 (:action place
  :parameters ( ?robot - robot_type ?place_obj - robotcube)
  :precondition (and 
   (a_holding ?robot ?place_obj)
  )
  :effect (and
 (object_at ?place_obj release_area) (not (a_holding ?robot ?place_obj)) (a_free ?robot)))
)

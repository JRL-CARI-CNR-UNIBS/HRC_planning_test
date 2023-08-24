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
 (:action pick_h
  :parameters ( ?human - human_type ?pick_obj_h - humancube)
  :precondition (and 
   (object_at ?pick_obj_h pick_area)
   (a_free ?human)
  )
  :effect (and
 (not (object_at ?pick_obj_h pick_area)) (a_holding ?human ?pick_obj_h) (not (a_free ?human))))
 (:action place_h
  :parameters ( ?human - human_type ?place_obj_h - humancube)
  :precondition (and 
   (a_holding ?human ?place_obj_h)
  )
  :effect (and
 (object_at ?place_obj_h release_area) (not (a_holding ?human ?place_obj_h)) (a_free ?human)))
)

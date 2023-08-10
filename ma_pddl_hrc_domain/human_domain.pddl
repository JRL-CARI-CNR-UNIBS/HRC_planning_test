(define (domain hrc-domain)
 (:requirements :factored-privacy :typing :durative-actions)
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
 (:durative-action pick_human
  :parameters ( ?pick_obj_0 - humancube)
  :duration (= ?duration (get_pick_duration ?pick_obj_0))
  :condition (and (at start (object_at ?pick_obj_0 pick_area))(at start (a_free ?human)))
  :effect (and (at end (not (object_at ?pick_obj_0 pick_area))) (at end (a_holding ?human ?pick_obj_0)) (at end (not (a_free ?human)))))
 (:durative-action place_human
  :parameters ( ?place_obj_0 - humancube)
  :duration (= ?duration (get_place_duration ?place_obj_0))
  :condition (and (at start (a_holding ?human ?place_obj_0)))
  :effect (and (at end (object_at ?place_obj_0 release_area)) (at end (not (a_holding ?human ?place_obj_0))) (at end (a_free ?human))))
)

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
 (:durative-action pick_robot
  :parameters ( ?pick_obj - robotcube)
  :duration (= ?duration (get_pick_duration ?pick_obj))
  :condition (and (at start (object_at ?pick_obj pick_area))(at start (a_free ?robot)))
  :effect (and (at end (not (object_at ?pick_obj pick_area))) (at end (a_holding ?robot ?pick_obj)) (at end (not (a_free ?robot)))))
 (:durative-action place_robot
  :parameters ( ?place_obj - robotcube)
  :duration (= ?duration (get_place_duration ?place_obj))
  :condition (and (at start (a_holding ?robot ?place_obj)))
  :effect (and (at end (object_at ?place_obj release_area)) (at end (not (a_holding ?robot ?place_obj))) (at end (a_free ?robot))))
)

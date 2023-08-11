(define (problem hrc-problem)
 (:domain hrc-domain)
 (:objects
   b1 b2 w1 w3 w2 w4 - robotcube
   b3 b4 o1 o2 o3 o4 - humancube
   robot - robot_type
   human - human_type
 )
 (:init
  (object_at b1 pick_area)
  (= (get_pick_duration b1) 5)
  (= (get_place_duration b1) 6)
  (object_at b2 pick_area)
  (= (get_pick_duration b2) 5)
  (= (get_place_duration b2) 6)
  (object_at b3 pick_area)
  (= (get_pick_duration b3) 5)
  (= (get_place_duration b3) 6)
  (object_at b4 pick_area)
  (= (get_pick_duration b4) 5)
  (= (get_place_duration b4) 6)
  (object_at o1 pick_area)
  (= (get_pick_duration o1) 5)
  (= (get_place_duration o1) 6)
  (object_at o2 pick_area)
  (= (get_pick_duration o2) 5)
  (= (get_place_duration o2) 6)
  (object_at o3 pick_area)
  (= (get_pick_duration o3) 5)
  (= (get_place_duration o3) 6)
  (object_at o4 pick_area)
  (= (get_pick_duration o4) 5)
  (= (get_place_duration o4) 6)
  (object_at w1 pick_area)
  (= (get_pick_duration w1) 5)
  (= (get_place_duration w1) 6)
  (object_at w3 pick_area)
  (= (get_pick_duration w3) 5)
  (= (get_place_duration w3) 6)
  (object_at w2 pick_area)
  (= (get_pick_duration w2) 5)
  (= (get_place_duration w2) 6)
  (object_at w4 pick_area)
  (= (get_pick_duration w4) 5)
  (= (get_place_duration w4) 6)
  (a_free human ))
 (:goal (and (object_at b1 release_area) (object_at b2 release_area) (object_at b3 release_area) (object_at b4 release_area) (object_at o1 release_area) (object_at o2 release_area) (object_at o3 release_area) (object_at o4 release_area) (object_at w1 release_area) (object_at w3 release_area) (object_at w2 release_area) (object_at w4 release_area)))
)
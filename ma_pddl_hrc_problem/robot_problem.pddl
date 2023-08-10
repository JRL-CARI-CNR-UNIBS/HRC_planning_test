(define (problem hrc-problem)
 (:domain hrc-domain)
 (:objects
   w1 w2 w3 w4 b1 b2 b3 b4 o1 o2 o3 o4 - cube
   robot - robot_type
   human - human_type
 )
 (:init
  (object_at w1 pick_area)
  (= (get_duration w1) 5)
  (object_at w2 pick_area)
  (= (get_duration w2) 5)
  (object_at w3 pick_area)
  (= (get_duration w3) 5)
  (object_at w4 pick_area)
  (= (get_duration w4) 5)
  (object_at b1 pick_area)
  (= (get_duration b1) 5)
  (object_at b2 pick_area)
  (= (get_duration b2) 5)
  (object_at b3 pick_area)
  (= (get_duration b3) 5)
  (object_at b4 pick_area)
  (= (get_duration b4) 5)
  (object_at o1 pick_area)
  (= (get_duration o1) 5)
  (object_at o2 pick_area)
  (= (get_duration o2) 5)
  (object_at o3 pick_area)
  (= (get_duration o3) 5)
  (object_at o4 pick_area)
  (= (get_duration o4) 5)
  (a_free robot ))
 (:goal (and (object_at b1 release_area) (object_at b2 release_area) (object_at o1 release_area) (object_at o2 release_area) (object_at o3 release_area) (object_at o4 release_area)))
)
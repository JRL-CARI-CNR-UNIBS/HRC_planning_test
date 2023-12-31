(define (problem hrc-problem)
 (:domain hrc-domain)
 (:objects
   b1 b2 b3 b4 o1 o2 o3 o4 w1 w3 w2 w4 - robotcube
   robot - robot_type
 )
 (:init
  (object_at b1 pick_area)
  (object_at b2 pick_area)
  (object_at b3 pick_area)
  (object_at b4 pick_area)
  (object_at o1 pick_area)
  (object_at o2 pick_area)
  (object_at o3 pick_area)
  (object_at o4 pick_area)
  (object_at w1 pick_area)
  (object_at w3 pick_area)
  (object_at w2 pick_area)
  (object_at w4 pick_area)
  (a_free robot ))
 (:goal (and (object_at b1 release_area) (object_at b2 release_area) (object_at b3 release_area) (object_at b4 release_area) (object_at o1 release_area) (object_at o2 release_area) (object_at o3 release_area) (object_at o4 release_area) (object_at w1 release_area) (object_at w3 release_area) (object_at w2 release_area) (object_at w4 release_area)))
)
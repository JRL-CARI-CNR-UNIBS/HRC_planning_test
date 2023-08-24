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
  (not (object_at b1 release_area))
  (not (object_at b2 release_area))
  (not (object_at b3 release_area))
  (not (object_at b4 release_area))
  (not (object_at o1 release_area))
  (not (object_at o2 release_area))
  (not (object_at o3 release_area))
  (not (object_at o4 release_area))
  (not (object_at w1 release_area))
  (not (object_at w3 release_area))
  (not (object_at w2 release_area))
  (not (object_at w4 release_area))
  (not (a_holding robot b1))
  (not (a_holding robot b2))
  (not (a_holding robot b3))
  (not (a_holding robot b4))
  (not (a_holding robot o1))
  (not (a_holding robot o2))
  (not (a_holding robot o3))
  (not (a_holding robot o4))
  (not (a_holding robot w1))
  (not (a_holding robot w3))
  (not (a_holding robot w2))
  (not (a_holding robot w4))
  (a_free robot ))
 (:goal (and (object_at b1 release_area) (object_at b2 release_area) (object_at b3 release_area) (object_at b4 release_area) (object_at o1 release_area) (object_at o2 release_area) (object_at o3 release_area) (object_at o4 release_area) (object_at w1 release_area) (object_at w3 release_area) (object_at w2 release_area) (object_at w4 release_area)))
)
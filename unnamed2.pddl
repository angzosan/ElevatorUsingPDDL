(define (problem eleavators)
  (:domain elevator)


  (:objects a b c d e f g e1 e2 e3 t1 t2 t3 t4 t5 t6)

  (:init
    (level a) (level b) (level c) (level d) (level e) (level f) (level g)
   (elevator e1) (elevator e2) (elevator e3)
   (transfer t1) (transfer t2) (transfer t3) (transfer t4) (transfer t5) (transfer t6)
   (is_at e1 a) (is_at e2 a) (is_at e3 a)
   (at t1 a) (at t2 b) (at t3 b) (at t4 f) (at t5 e) (at t6 f)
    (can_go e3 f d) (can_go e3 d b) (can_go e3 b f)
    (can_go e3 d f) (can_go e3 b d) (can_go e3 f b)
   
   (can_go e2 e g) (can_go e2 e c) (can_go e2 c a)
   (can_go e2 e a) (can_go e2 a g) (can_go e2 g c)
   (can_go e2 g e) (can_go e2 c e) (can_go e2 a c)
   (can_go e2 a e) (can_go e2 g a) (can_go e2 c g)
   
   (can_go e1 b a) (can_go e1 b c) (can_go e1 d e)
   (can_go e1 e f) (can_go e1 f g) (can_go e1 f c)
   (can_go e1 d g) (can_go e1 b e) (can_go e1 a d)
   (can_go e1 b g) (can_go e1 a f) 
   (can_go e1 a b) (can_go e1 c b) (can_go e1 e d)
   (can_go e1 f e) (can_go e1 g f) (can_go e1 c f)
   (can_go e1 g d) (can_go e1 e b) (can_go e1 d a)
   (can_go e1 g b) (can_go e1 f a) 
  )

  (:goal (and
    (at t1 g) (at t2 a) (at t3 f) (at t4 c) (at t5 g) (at t6 d)
  ))
)

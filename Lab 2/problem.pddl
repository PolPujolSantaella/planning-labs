(define (problem eight-puzzle-instance)
    (:domain eight-puzzle)

    (:objects
        t1 t2 t3 t4 t5 t6 t7 t8 - tile
        r1 r2 r3 - row
        c1 c2 c3 - col
    )

    (:init
        (at t7 r1 c1) (at t2 r1 c2) (at t4 r1 c3)
        (at t5 r2 c1) (empty r2 c2) (at t6 r2 c3)
        (at t8 r3 c1) (at t3 r3 c2) (at t1 r3 c3)

        (adj r1 c1 r1 c2) (adj r1 c2 r1 c1)
        (adj r1 c2 r1 c3) (adj r1 c3 r1 c2)

        (adj r2 c1 r2 c2) (adj r2 c2 r2 c1)
        (adj r2 c2 r2 c3) (adj r2 c3 r2 c2)

        (adj r3 c1 r3 c2) (adj r3 c2 r3 c1)
        (adj r3 c2 r3 c3) (adj r3 c3 r3 c2)

        (adj r1 c1 r2 c1) (adj r2 c1 r1 c1)
        (adj r1 c2 r2 c2) (adj r2 c2 r1 c2)
        (adj r1 c3 r2 c3) (adj r2 c3 r1 c3)

        (adj r2 c1 r3 c1) (adj r3 c1 r2 c1)
        (adj r2 c2 r3 c2) (adj r3 c2 r2 c2)
        (adj r2 c3 r3 c3) (adj r3 c3 r2 c3)
    )

    (:goal (and 
        (empty r1 c1) (at t1 r1 c2) (at t2 r1 c3)
        (at t3 r2 c1) (at t4 r2 c2) (at t5 r2 c3)
        (at t6 r3 c1) (at t7 r3 c2) (at t8 r3 c3)
    ))
)
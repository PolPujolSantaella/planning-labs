(define (domain eight-puzzle)
  (:requirements :strips :typing)
  (:types tile row col)

  (:predicates
    (at ?t - tile ?r - row ?c - col)
    (empty ?r - row ?c - col)
    (adj ?r1 - row ?c1 - col ?r2 - row ?c2 - col)
  )

  (:action move
    :parameters (?t - tile ?r1 - row ?c1 - col ?r2 - row ?c2 - col)
    :precondition (and (at ?t ?r1 ?c1) (empty ?r2 ?c2) (adj ?r1 ?c1 ?r2 ?c2))
    :effect (and (not (at ?t ?r1 ?c1))
                 (not (empty ?r2 ?c2))
                 (at ?t ?r2 ?c2)
                 (empty ?r1 ?c1)))
)

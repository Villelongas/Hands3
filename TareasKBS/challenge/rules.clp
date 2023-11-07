(defrule start
    =>
    (assert (chango (hambriento si) (animo enojado) (estado "siente curiosidad") (manos libres) (fuerza fuerte)))
    (assert (silla (estado "En el piso")))
    (assert (mesa (estado "En el piso")))
    (assert (platano (estado "En el techo")))
    (printout t "(chango: hambriento, animo: enojado, estado: siente curiosidad y esta en el piso, manos: libres, fuerza: suficiente para mover y levantar sillas)" crlf)
    (printout t "(platano: colgando del techo)" crlf)
    (printout t "(silla: en el piso)" crlf)
    (printout t "(mesa: en el piso)" crlf crlf)
)

(defrule changoobserva
    ?estado <-(chango (estado "siente curiosidad"))
    =>
    (modify ?estado (estado "pensando y en el piso"))
    (printout t "El chango observa sus alrededores y observa, una silla, una mesa y una banana hasta arriba" crlf )
)

(defrule changopiensa
    ?estado <-(chango (estado "pensando y en el piso"))
    =>
    (modify ?estado (estado "En el piso"))
    (printout t "Se le ocurre una idea para agarrar el platano ya que esta hambriento" crlf )
)

(defrule cmuevealasilla
    ?estado <-(chango (estado "En el piso"))
    =>
    (modify ?estado (estado "al lado de la silla"))
    (printout t "El chango esta en el piso, y se mueve hasta la silla" crlf )
)

(defrule saltaalasilla
    ?estado <- (chango(estado "al lado de la silla")) (silla (estado "En el piso"))
    =>
    (modify ?estado (estado "En la silla"))
    (printout t "El chango esta en el piso,y brinca a la silla" crlf )
)

(defrule trataalcanzarplatano
    ?estado <- (chango(estado "En la silla")) (silla (estado "En el piso"))
    =>
    
    (printout t "El chango esta en la silla, y salta para alcanzar el platano pero falla, replantea su estrategia" crlf )

)

(defrule saltaalamesa
    ?estado <- (chango(estado "En la silla"))
    (mesa (estado "En el piso"))
    =>
    (modify ?estado (estado "En el mesa"))
    
    (printout t "El chango brinca al mesa desde la silla" crlf)
)

(defrule subelasilla
    ?manos <- (chango (estado "En el mesa")(manos libres)(fuerza fuerte))
    (mesa (estado "En el piso")) 
    ?estadodsilla <- (silla (estado "En el piso"))
    =>
    (modify ?manos (manos ocupadas))
    (modify ?estadodsilla (estado "En el mesa"))

    (printout t "El chango sube la silla a la mesa" crlf)
)

(defrule changosubealasilla
    ?chango <- (chango (estado "En el mesa")(manos ocupadas))
    (silla (estado "En el mesa"))
    =>
    (modify ?chango (estado "En la silla sobre la mesa")(manos libres)(fuerza cansado))

    (printout t "El chango se sube a la silla que esta sobre del mesa, y se cansa de tanto esfuerzo"crlf)
)

(defrule changosaltaporplatano
    ?changoest <- (chango (estado "En la silla sobre la mesa") (fuerza cansado))
    (silla (estado "En el mesa"))
    (mesa (estado "En el piso"))
    =>
    (modify ?changoest (estado "En el aire") (fuerza "muy cansado"))
    (printout t "El chango salta con sus ultimas fuerzas para tomar las platanos desde la silla sobre el mesa"crlf)
)

(defrule changoconplatano
    ?chango <- (chango (estado "En el aire")(manos libres)(hambriento si)(animo enojado)(fuerza "muy cansado"))
    ?plata <- (platano (estado "En el techo"))
    (silla (estado "En el mesa"))
    (mesa (estado "En el piso"))
    =>
    (modify ?chango (estado "En la silla y comiendo")(manos ocupadas)(hambriento no)(animo "muy feliz")(fuerza muycansado))
    (modify ?plata (estado "En manos del chango"))
    
    (printout t "El chango tiene los platanos" crlf)
)

(defrule finalfeliz
    ?fuerza<-(chango (estado "En la silla y comiendo")(manos ocupadas)(hambriento no)(animo "muy feliz")(fuerza muycansado))
    (platano (estado "En manos del chango"))
    (silla (estado "En el mesa"))
    (mesa (estado "En el piso"))
    =>
    (modify ?fuerza (fuerza recuperada))
    (printout t "el chango esta comiendo las platanos en la silla que esta sobre el mesa"crlf crlf)
    (printout t "(chango (estado: En la silla y comiendo )(manos: ocupadas)(hambriento: no)(animo: muy feliz)(fuerza: recuperada))"crlf)
    (printout t "(platano (estado: En manos del chango ))"crlf)
    (printout t "(silla (estado: En el mesa ))"crlf)
    (printout t "(mesa (estado: En el piso ))"crlf)
)

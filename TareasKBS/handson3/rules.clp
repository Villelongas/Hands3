;1
(defrule celchafa
   (smartphone (marca ?n) (modelo ?modelo) (precio ?p))
   (test (< ?p 5000))
   =>
   (printout t crlf ?n " " ?modelo " Celular Chafa " "Costo: " ?p crlf)
)
;2
(defrule celmedio
   (smartphone (marca ?n) (modelo ?modelo) (precio ?p))
   (test (>= ?p 5000))
   (test (<= ?p 10000))
   =>
   (printout t crlf ?n " " ?modelo " Calida Precio" "Costo: " ?p crlf)
)
;3
(defrule celcalidaprecio
   (smartphone (marca ?n) (modelo ?modelo) (precio ?p))
   (test (> ?p 10000))
   =>
   (printout t crlf ?n " " ?modelo " Celular pro " "Costo: " ?p crlf)
)
;4
(defrule compuchafa
   (computador (marca ?n) (modelo ?modelo) (precio ?p))
   (test (< ?p 7000))
   =>
   (printout t crlf ?n " " ?modelo " Compu Chafa " "Costo: " ?p crlf)
)
;5
(defrule compumedio
   (computador (marca ?n) (modelo ?modelo) (precio ?p))
   (test (>= ?p 7000))
   (test (<= ?p 15000))
   =>
   (printout t crlf ?n " " ?modelo " Calida Precio" " Costo: " ?p crlf)
)
;6
(defrule compucalidaprecio
   (computador (marca ?n) (modelo ?modelo) (precio ?p))
   (test (> ?p 15000))
   =>
   (printout t crlf ?n " " ?modelo " Compu de la NASA" " Costo: " ?p crlf)
)
;7
(defrule c-m
   (cliente (nombre ?n)(sexo M))
      =>
   (printout t crlf ?n " Es un hombre" crlf)
)
;8
(defrule c-f
   (cliente (nombre ?n)(sexo F))
   =>
   (printout t crlf ?n " Es una mujer" crlf)
)
;9
(defrule c-na
   (cliente (nombre ?n)(sexo NA))
   =>
   (printout t crlf ?n " Genero no especificado" crlf)
)
;10
(defrule comcel
   (cliente (cliente-id ?idcliente) (nombre ?nombre))
   (orden-compra (cliente-id ?idcliente) (orden-compra-id ?idcompra))
   (listcel (cliente-id ?idcliente) (orden-compra-id ?idcompra) (smartphone-id ?idsmartphone))
   (smartphone (smartphone-id ?idsmartphone) (modelo ?modelo)) ; Agregar modelo al patrón
   =>
   (printout t crlf  ?nombre " compro el celular: " ?modelo crlf)
)
;11
(defrule comcom
   (cliente (cliente-id ?idcliente) (nombre ?nombre))
   (orden-compra (cliente-id ?idcliente) (orden-compra-id ?idcompra))
   (listcomp (cliente-id ?idcliente) (orden-compra-id ?idcompra) (computador-id ?idcomputador))
   (computador (computador-id ?idcomputador) (modelo ?modelo)) ; Agregar este patrón
   =>
   (printout t ?nombre " compro una computadora: " ?modelo crlf) ; Mostrar el modelo
)
;12
(defrule comacc
   (cliente (cliente-id ?idcliente) (nombre ?nombre))
   (orden-compra (cliente-id ?idcliente) (orden-compra-id ?idcompra))
   (listacc (cliente-id ?idcliente) (orden-compra-id ?idcompra) (accesorio-id ?idaccesorio)) 
   (accesorio (accesorio-id ?idaccesorio) (modelo ?modelo))
   =>
   (printout t crlf ?nombre " este cliente compro: " ?modelo crlf)
)
;13
(defrule maycel
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (smartphone (smartphone-id ?idsmartphone)(marca ?nombresmartphone))

   (listcel (orden-compra-id ?idcompra) (smartphone-id ?idsmartphone) (cliente-id ?idcliente) (cantidad ?csmartphone))
   
   (test(> ?csmartphone 3))
   =>
   (printout t ?nombre " cliente compro muchos celulares" crlf)
   (assert (cliente-mayorista ?idcliente ?nombre ?celular ?nombresmartphone))
)
;14
(defrule maycom
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (computador (computador-id ?idcomputador)(marca ?nombrecomputador))

   (listcomp (orden-compra-id ?idcompra) (computador-id ?idcomputador) (cliente-id ?idcliente) (cantidad ?ccomputador ))
   
   (test(> ?ccomputador 3))
   =>
   (printout t ?nombre " cliente compro muchos computadoras" crlf)
   (assert (cliente-mayorista ?idcliente ?nombre ?celular ?nombrecomputador))
)
;15
(defrule mayacc
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (accesorio (accesorio-id ?idaccesorio)(marca ?nombreaccesorio))

   (listacc (orden-compra-id ?idcompra) (accesorio-id ?idaccesorio) (cliente-id ?idcliente) (cantidad ?caccesorio))
   
   (test(> ?caccesorio 3))
   =>
   (printout t ?nombre " cliente compro muchos accesorios" crlf)
   (assert (cliente-mayorista ?idcliente ?nombre ?celular ?nombreaccesorio))
)
;16
(defrule mincel
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (smartphone (smartphone-id ?idsmartphone)(marca ?nombresmartphone))

   (listcel (orden-compra-id ?idcompra) (smartphone-id ?idsmartphone) (cliente-id ?idcliente) (cantidad ?csmartphone))
   
   (test(<= ?csmartphone 3))
   =>
   (printout t ?nombre " cliente compro celulares al por menor" crlf)
   (assert (cliente-minorista ?idcliente ?nombre ?celular ?nombresmartphone))
)
;17
(defrule mincom
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (computador (computador-id ?idcomputador)(marca ?nombrecomputador))

   (listcomp (orden-compra-id ?idcompra) (computador-id ?idcomputador) (cliente-id ?idcliente) (cantidad ?ccomputador ))
   
   (test(<= ?ccomputador 3))
   =>
   (printout t ?nombre " cliente compro compus al por menor" crlf)
   (assert (cliente-minorista ?idcliente ?nombre ?celular ?nombrecomputador))
)
;18
(defrule minacc
   (cliente (cliente-id ?idcliente)(nombre ?nombre)(celular ?celular))
   (orden-compra (orden-compra-id ?idcompra) (cliente-id ?idcliente))
   (accesorio (accesorio-id ?idaccesorio)(marca ?nombreaccesorio))

   (listacc (orden-compra-id ?idcompra) (accesorio-id ?idaccesorio) (cliente-id ?idcliente) (cantidad ?caccesorio))
   
   (test(<= ?caccesorio 3))
   =>
   (printout t ?nombre " cliente compro accesorios al por menor" crlf)
   (assert (cliente-minorista ?idcliente ?nombre ?celular ?nombreaccesorio))
)
;19
(defrule aple
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (orden-compra (orden-compra-id ?ordenid)(cliente-id ?clienteid))
   (smartphone (smartphone-id ?smartphoneid) (marca Apple))
   (listcel (orden-compra-id ?ordenid)(cliente-id ?clienteid)(smartphone-id ?smartphoneid))
   (vale-compra (vale-id 6)(vale ?vale))
   =>
   (printout t ?nombre " "?vale " por comprar aifon"  crlf)
)
;20
(defrule descuentomayoreocel
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (orden-compra (orden-compra-id ?ordenid)(cliente-id ?clienteid))
   (smartphone (smartphone-id ?smartphoneid) (marca ?marca))
   (listcel (orden-compra-id ?ordenid)(cliente-id ?clienteid)(smartphone-id ?smartphoneid)(cantidad ?cantidad))
   (test (> ?cantidad 3))
   
   (vale-compra (vale-id 5)(vale ?vale))
   =>
   (printout t "por comprar " ?cantidad " de celulares el cliente "?nombre " tiene un "?vale " en total" crlf )
)
;21
(defrule descuentomayoreocom
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (orden-compra (orden-compra-id ?ordenid)(cliente-id ?clienteid))
   (computador (computador-id ?computadorid) (marca ?marca))
   (listcomp (orden-compra-id ?ordenid)(cliente-id ?clienteid)(computador-id ?computadorid)(cantidad ?cantidad))
   (test (> ?cantidad 3))
   (vale-compra (vale-id 7)(vale ?vale))
   =>
   (printout t "por comprar " ?cantidad " de compus el cliente "?nombre " tiene un "?vale " en total" crlf )
)
;22
(defrule descuentomayoreacc
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (orden-compra (orden-compra-id ?ordenid)(cliente-id ?clienteid))
   (accesorio (accesorio-id ?accesorioid) (marca ?marca))
   (listacc (orden-compra-id ?ordenid)(cliente-id ?clienteid)(accesorio-id ?accesorioid)(cantidad ?cantidad))
   (test (> ?cantidad 3))
   (vale-compra (vale-id 3)(vale ?vale))
   =>
   (printout t "por comprar " ?cantidad " de accesorios el cliente "?nombre " tiene un "?vale " en total" crlf )
)
;23
(defrule mesestarjeta
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (tarjeta-credito (cliente-id ?clienteid) (banco ?banco)(grupo ?grupo))
   (test (eq ?banco "Santander"))
   (test (eq ?grupo "MasterCard"))
   (vale-compra (vale-id 1) (vale ?vale))
   =>
   (printout t "cliente " ?nombre " con tarjeta "?banco" "?grupo" tiene de descuento: "?vale crlf)
)

;24
(defrule tarjeta
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (tarjeta-credito (cliente-id ?clienteid) (banco ?banco)(grupo ?grupo))
   (test (eq ?banco "Banorte"))
   (test (eq ?grupo "Visa"))
   (vale-compra (vale-id 2) (vale ?vale))
   =>
   (printout t "cliente " ?nombre " con tarjeta "?banco" "?grupo" tiene: "?vale crlf)
)
;25
(defrule buenfin
   (cliente (cliente-id ?clienteid)(nombre ?nombre))
   (orden-compra (orden-compra-id ?ordenid)(cliente-id ?clienteid) (fecha ?fecha)) 
   (test (eq ?fecha "16-11-2023"))
   (vale-compra (vale-id 3) (vale ?vale))
   => 
   (printout t ?nombre " obtiene "?vale " por comprar en el buen fin: " crlf)
)

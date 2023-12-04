;; rules.clp
(defrule Comenzar-Operacion
    (Paciente (en-quirofano sedado))
    (Enfermera (provee no))
    (Anestesiologo (listo no))
    (CirujanoJefe (ordena no))
    (Cirujano2 (lista no))
=>
    (printout t "Regla Comenzar-Operacion activada." crlf)
    (printout t "Operación en curso." crlf)
    (assert (CirujanoJefe (ordena si)))
    (assert (Cirujano2 (lista si)))
    (assert (Anestesiologo(listo si))))
    
    
;; Cirujano 2 comienza la intervención
(defrule Cirujano2-Comienza
    (Cirujano2 (lista si))
=>
    (printout t "Cirujano 2: Listo para comenzar la intervención." crlf)
    (assert (Anestesiologo (listo si))))
;se la salta

;; Anestesiólogo confirma y aplica anestesia al Paciente
(defrule Anestesiologo-Confirma
    (CirujanoJefe (ordena si))
    (Anestesiologo (listo si))
=>
    (printout t "El jefe ordena al que, Anestesiólogo: Confirmado cálculo del anestésico y aplicado al paciente." crlf)
    (assert (Paciente-Sedado)))


;; Cirujano en Jefe ordena a Cirujano 2 comenzar la intervención
(defrule CirujanoJefe-Ordena
    (Paciente-Sedado)
    (CirujanoJefe (ordena no))
    (Cirujano2 (lista no))
=>
    (printout t "Cirujano en Jefe: Cirujano 2, puedes comenzar la intervención." crlf)
    (assert (Cirujano2 (lista si)))
    (assert (Enfermera (provee no)))
    )
    
;; Cirujano 2 solicita material e instrumentos a la Enfermera Asistente
(defrule Cirujano2-Solicita-Material
    (Cirujano2 (lista si))
    (Material (provisto no))
    (Enfermera (provee no))
=>
    (printout t "Cirujano 2: Solicitando material e instrumentos a la Enfermera Asistente." crlf)
    (assert (Enfermera (provee si))))


;hasta aca

;; Enfermera Asistente provee material e instrumentos al Cirujano 2
(defrule Enfermera-Provee-Material
    (Cirujano2 (lista si))
    (Material (provisto no))
    (Enfermera (provee si))
=>
    (printout t "Enfermera Asistente: Proveyendo material e instrumentos al Cirujano 2." crlf)
    (assert (Material-Proveido)))

;; Cirujano 2 realiza la intervención
(defrule Cirujano2-Realiza-Intervencion
    (Material-Proveido)
    (Cirujano2 (lista si))
=>
    (printout t "Cirujano 2: Realizando la intervención." crlf)
    (assert (Intervencion-Realizada)))

;; Cirujano 2 informa al Cirujano en Jefe sobre la finalización de la intervención
(defrule Cirujano2-Informa-Finalizacion
    (Intervencion-Realizada)
    (Cirujano2 (lista si))
=>
    (printout t "Cirujano 2: Intervención finalizada." crlf)
    (assert (Enfermera-Lleva-Recuperacion)))

;; Enfermera lleva al paciente a la Sala de recuperación al finalizar la intervención
(defrule Enfermera-Lleva-Recuperacion
    (Intervencion-Realizada)
    (Enfermera (provee si))
    (Recuperacion (llevada no))
=>
    (printout t "Enfermera Asistente: Llevando al paciente a la Sala de recuperación." crlf)
    (assert (Recuperacion (llevada si))))

;; Operación finalizada
(defrule Operacion-Finalizada
    (Recuperacion (llevada si))
=>
    (printout t "Operación finalizada." crlf))
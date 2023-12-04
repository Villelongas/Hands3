;; rules.clp
(defrule Comenzar-Operacion
    (Paciente (en-quirofano no))
    (Enfermera (provee no))
    (Anestesiologo (listo no))
    (CirujanoJefe (ordena no))
    (Cirujano2 (lista no))
=>
    (assert (CirujanoJefe (ordena si)))
    ;(assert (plan_cirugia (accion1 "Comenzar-OperacionOperación-en-curso")))
    (assert (Cirujano2 (lista si)))
      (printout t "1.-" crlf))
    

;; Cirujano 2 comienza la intervención
(defrule Cirujano2-Comienza
    (Cirujano2 (lista si))
=>

    (assert (Anestesiologo (listo si)))
   ; (assert (plan_cirugia (accion2 "Cirujano-2:Listo-para-comenzar-la-intervención")))
        (printout t "2.-" crlf)
)
    
;se la salta

;; Anestesiólogo confirma y aplica anestesia al Paciente
(defrule Anestesiologo-Confirma
    (CirujanoJefe (ordena si))
    (Anestesiologo (listo si))
=>
    (assert (Paciente-Sedado))
    ;(assert (plan_cirugia (accion3 "El-jefe-ordena-al-que,-Anestesiólogo:Confirmado-cálculo-del-anestésico-y-aplicado-al-paciente")))
      (printout t "3.-" crlf)
      )



;; Cirujano en Jefe ordena a Cirujano 2 comenzar la intervención
(defrule CirujanoJefe-Ordena
    (Paciente-Sedado)
    (CirujanoJefe (ordena no))
    (Cirujano2 (lista no))
=>
    (assert (Cirujano2 (lista si)))
    (assert (Enfermera (provee no)))
    ;(assert (plan_cirugia (accion4 "Cirujano-en-Jefe:Cirujano-2,-puedes-comenzar-la-intervención")))
     (printout t "4.-" crlf)
    )
    
;; Cirujano 2 solicita material e instrumentos a la Enfermera Asistente
(defrule Cirujano2-Solicita-Material
    (Cirujano2 (lista si))
    (Material (provisto no))
    (Enfermera (provee no))
=>
    (assert (Enfermera (provee si)))
    ;(assert (plan_cirugia (accion5 "Cirujano-2:-Solicitando-material-e-instrumentos-a-la-Enfermera-Asistente")))
    (printout t "5.-" crlf)
    )


;hasta aca

;; Enfermera Asistente provee material e instrumentos al Cirujano 2
(defrule Enfermera-Provee-Material
    (Cirujano2 (lista si))
    (Material (provisto no))
    (Enfermera (provee si))
=>
    (assert (Material-Proveido))
    ;(assert (plan_cirugia (accion6 "Enfermera-Asistente:Proveyendo-material-e-instrumentos-al-Cirujano-2")))
      (printout t "6.-" crlf)
    )

;; Cirujano 2 realiza la intervención
(defrule Cirujano2-Realiza-Intervencion
    (Material-Proveido)
    (Cirujano2 (lista si))
=>
    (assert (Intervencion-Realizada))
    ;(assert (plan_cirugia (accion7 "Cirujano-2:Realizando-la-intervención")))
      (printout t "7.-" crlf)
    )

;; Cirujano 2 informa al Cirujano en Jefe sobre la finalización de la intervención
(defrule Cirujano2-Informa-Finalizacion
    (Intervencion-Realizada)
    (Cirujano2 (lista si))
=>
    (assert (Enfermera-Lleva-Recuperacion))
    ;(assert (plan_cirugia (accion8 "Cirujano-2:Intervención-finalizada"))) 
      (printout t "8.-" crlf)   
    )

;; Enfermera lleva al paciente a la Sala de recuperación al finalizar la intervención
(defrule Enfermera-Lleva-Recuperacion
    (Intervencion-Realizada)
    (Enfermera (provee si))
    (Recuperacion (llevada no))
=>
    (assert (Recuperacion (llevada si)))
    ;(assert (plan_cirugia (accion9 "Enfermera-Asistente:Llevando-al-paciente-a-la-Sala-de-recuperación")))   
      (printout t "9.-" crlf) 
    )

;; Operación finalizada
(defrule Operacion-Finalizada
    (Recuperacion (llevada si))
=>
    ;(assert (plan_cirugia (accion10 "Operación-finalizada"))) 
      (printout t "10.-" crlf)  
    )

;; Imprimir el plan al final
(defrule Imprimir-Plan
    (declare (salience -1)) ; Establecer una prioridad baja
    (Recuperacion (llevada si))
   =>
    
    (assert (plan_cirugia (acciones accion1 "Comenzar-OperacionOperación-en-curso" 
                                    accion2 "Cirujano-2:Listo-para-comenzar-la-intervención"
                                    accion3 "El-jefe-ordena-al-que,-Anestesiólogo:Confirmado-cálculo-del-anestésico-y-aplicado-al-paciente"
                                    accion4 "Cirujano-en-Jefe:Cirujano-2,-puedes-comenzar-la-intervención"
                                    accion5 "Cirujano-2:-Solicitando-material-e-instrumentos-a-la-Enfermera-Asistente"
                                    accion6 "Enfermera-Asistente:Proveyendo-material-e-instrumentos-al-Cirujano-2"
                                    accion7 "Cirujano-2:Realizando-la-intervención"
                                    accion8 "Cirujano-2:Intervención-finalizada"
                                    accion9 "Enfermera-Asistente:Llevando-al-paciente-a-la-Sala-de-recuperación"
                                    accion10 "Operación-finalizada"
                                    )))
    ;?plan <- (plan_cirugia (accion1 ?a1)
    ;              (accion2 ?a2)
    ;              (accion3 ?a3)
    ;              (accion4 ?a4)
    ;              (accion5 ?a5)
    ;              (accion6 ?a6)
    ;              (accion7 ?a7)
    ;              (accion8 ?a8)
    ;              (accion9 ?a9)
    ;              (accion10 ?a10&~nil))
    ;(not (Imprimio-Plan)) ; Agregar una condición para verificar si ya se imprimió el plan
    ;=>
    ;(assert (Imprimio-Plan)) ; Marcar que ya se imprimió el plan
    ;(printout t "Plan:" crlf)
    ;(printout t "1.-" ?a1 crlf)
    ;(printout t "2.-" ?a2 crlf)
    ;(printout t "3.-" ?a3 crlf)
    ;(printout t "4.-" ?a4 crlf)
    ;(printout t "5.-" ?a5 crlf)
    ;(printout t "6.-" ?a6 crlf)
    ;(printout t "7.-" ?a7 crlf)
    ;(printout t "8.-" ?a8 crlf)
    ;(printout t "9.-" ?a9 crlf)
    ;(printout t "10.-" ?a10 crlf)

)

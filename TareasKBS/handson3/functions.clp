; Funciones auxiliares
(deffunction get-productos (?tarjeta ?clientes)
   (bind ?productos (create$))
   (loop-for-count (?i (length$ ?clientes))
      (bind ?cliente (nth$ ?i ?clientes))
      (if (eq (fact-slot-value ?cliente tipo) ?tarjeta)
         then
         (bind ?productos (+ ?productos (fact-slot-value ?cliente productos)))
      )
   )
   (if (eq (length$ ?productos) 0)
      then
      (return FALSE)
      else
      (return ?productos))
)

(deffunction get-precio ( ?productos)
   (bind ?precio 0)
   (foreach ?item ?productos
      (if (eq (fact-slot-value ?item marca) ?productos)
         then
         (bind ?precio (fact-slot-value ?item precio))
         (return ?precio)
      )
   )
   (return 0) ; Si no se encontró el precio, regresamos 0
;?producto
)

(deffunction calcular-total-compra (?tarjeta ?clientes)
   (bind ?total 0)
   (bind ?productos (get-productos ?tarjeta ?clientes))
   (foreach ?producto ?productos
      (bind ?precio (get-precio ?producto))
      (bind ?total (+ ?total ?precio)))
   ?total)



(deffunction tiene-smartphone (?productos)
   (bind ?smartphones (create$ "iPhone15" "Note12"))
   (foreach ?producto ?productos
      (if (member$ ?producto ?smartphones)
         then
         (return TRUE))
   )
   (return FALSE)
)


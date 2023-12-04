;; templates.clp
(deftemplate Paciente
    (slot en-quirofano (default no))
)
(deftemplate Paciente-Sedado)

(deftemplate CirujanoJefe
    (slot ordena (default no)))

(deftemplate Cirujano2
    (slot ordena (default no))
    (slot lista (default no)))

(deftemplate Anestesiologo
 (slot listo (default si)))

(deftemplate Material
    (slot provisto (default no)))

(deftemplate Enfermera
    (slot provee (default no)))

(deftemplate Intervencion-Realizada)

(deftemplate Recuperacion
    (slot llevada (default no)))

(deftemplate Operacion-Finalizada)
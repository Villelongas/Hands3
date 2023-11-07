(deftemplate smartphone
    (slot smartphone-id)
    (slot marca)
    (slot modelo)
    (slot precio (type INTEGER))
    (slot almacenamiento)
    (slot bateria)
    (slot peso)
    (slot color)
)

(deftemplate computador
    (slot computador-id)
    (slot marca)
    (slot modelo)
    (slot precio (type INTEGER))
    (slot so)
    (slot almacenamiento)
    (slot bateria)
    (slot peso)
    (slot color)
)

(deftemplate accesorio
    (slot accesorio-id)
    (slot marca)
    (slot modelo)
    (slot precio (type INTEGER))
    (slot color)
)

(deftemplate tarjeta-credito
    (slot banco)
    (slot grupo)
    (slot fecha-expiracion)
    (slot numero-tarjeta)
    (slot cliente-id)
)

(deftemplate cliente
    (slot cliente-id)
    (multislot nombre)
    (slot edad)
    (slot celular)
    (slot sexo)
    (multislot direccion)
)

(deftemplate orden-compra
    (slot fecha)
    (slot orden-compra-id)
    (slot cliente-id)
)

(deftemplate listcel
    (slot orden-compra-id)
    (slot smartphone-id)
    (slot cliente-id)
    (slot cantidad (type INTEGER))
)

(deftemplate listcomp
    (slot orden-compra-id)
    (slot computador-id)
    (slot cliente-id)
    (slot cantidad (type INTEGER))
)

(deftemplate listacc
    (slot orden-compra-id)
    (slot accesorio-id)
    (slot cliente-id)
    (slot cantidad (type INTEGER))
)

(deftemplate vale-compra
    (slot vale-id)
    (slot vale)
)

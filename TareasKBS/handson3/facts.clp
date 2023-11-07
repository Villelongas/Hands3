(deffacts clientes
   	(cliente (cliente-id 1)(nombre Pedruski)(edad 30)(celular 3331234567)(sexo M)(direccion  Calle Petunia 1233 ))
   	(cliente (cliente-id 2)(nombre Huerfanita)(edad 25)(celular 3319876543)(sexo F)(direccion  Avenida Zoologico 435 ))
   	(cliente (cliente-id 3)(nombre Villelon)(edad 28)(celular 3323456789)(sexo NA)(direccion  Calle Yonyona 79 ))
   	(cliente (cliente-id 4)(nombre MariaDolores)(edad 35)(celular 3348765432)(sexo F)(direccion  Avenida Amateur 321 ))
   	(cliente (cliente-id 5)(nombre Luis)(edad 32)(celular 3300012345)(sexo NA)(direccion Calle Arriba 161))
   	(cliente (cliente-id 6)(nombre Ocampo)(edad 27)(celular 3367890123)(sexo F)(direccion Avenida LomasT 654))
   	(cliente (cliente-id 7)(nombre Vladimir)(edad 22)(celular 3322345678)(sexo M)(direccion Calle SallyJ 99))
   	(cliente (cliente-id 8)(nombre Stefy)(edad 29)(celular 3312345670)(sexo NA)(direccion Avenida Vegeta 777))
   	(cliente (cliente-id 9)(nombre Xavier)(edad 40)(celular 3354321567)(sexo M)(direccion Calle Hells 888))
   	(cliente (cliente-id 10)(nombre Solovino)(edad 26)(celular 3343215678)(sexo F)(direccion Avenida Petunia 555))
   	(cliente (cliente-id 11)(nombre Alan)(edad 21)(celular 3366666666)(sexo NA)(direccion Calle Vieja 11))
   	(cliente (cliente-id 12)(nombre Jonas)(edad 30)(celular 3377777777)(sexo NA)(direccion Avenida Vieja 222))		
)

(deffacts celulares
   	(smartphone (smartphone-id 1) (marca  Samsung)(modelo  "Galaxy S23")(precio 20000)(almacenamiento 256gb)(bateria 4500mAh )(peso 170)(color Azul))
   	(smartphone (smartphone-id 2) (marca  Apple)(modelo  "iPhone 15")(precio 11000)(almacenamiento 128gb)(bateria 4000mAh)(peso 168)(color Negro))
   	(smartphone (smartphone-id 3) (marca  Xiaomi)(modelo  "Mi 11")(precio 7000)(almacenamiento 128gb)(bateria 5000mAh )(peso 175)(color Blanco))
   	(smartphone (smartphone-id 4) (marca  Sony)(modelo  "Sony Erickson 6")(precio 15000)(almacenamiento 256gb )(bateria 4200mAh)(peso 163)(color Rojo))
   	(smartphone (smartphone-id 5) (marca  LG)(modelo  Velvet)(precio 4700)(almacenamiento 128gb )(bateria 4300mAh )(peso 169)(color Verde))
   	(smartphone (smartphone-id 6) (marca  Huawei)(modelo  P40)(precio 5499)(almacenamiento 256gb )(bateria 4100mAh )(peso 172)(color Gris))
)


(deffacts computadoras
	(computador (computador-id 1) (marca HP )(modelo "Nitro 5")(precio 15000)(so  "Windows 11")(almacenamiento 512gb)(bateria 8h)(peso 2.5)(color Plateado))
   	(computador (computador-id 2) (marca Dell )(modelo "MSI")(precio 20000)(so  "Windows 11")(almacenamiento 1tb )(bateria 10h)(peso 2.7)(color Negro))
   	(computador (computador-id 3) (marca Lenovo )(modelo "Asus Pro")(precio 8000)(so  "Windows 11")(almacenamiento 512gb)(bateria 9h)(peso 2.4)(color Gris))
   	(computador (computador-id 4) (marca Acer )(modelo "Macbook Air")(precio 26000)(so  "IOS 11")(almacenamiento 1tb)(bateria  6h)(peso 2.8)(color  Rojo))
)

(deffacts accesorios
	(accesorio (accesorio-id 1) (marca Logitech)(modelo  "Teclado RGB 200X")(precio 899)(color  Negro ))
	(accesorio (accesorio-id 2) (marca Razer)(modelo  "Ratón Razer X")(precio 599)(color  Negro ))
	(accesorio (accesorio-id 3) (marca Bose)(modelo  "Auriculares A10")(precio 349)(color  Blanco ))
	(accesorio (accesorio-id 4) (marca Samsung)(modelo "Monitor Samsung G93")(precio 1599)(color  Plateado ))
	(accesorio (accesorio-id 5) (marca Corsair)(modelo  "SSD Kodak Pro")(precio 299)(color  Negro ))
)


(deffacts tarjetas
	(tarjeta-credito (banco Santander)(grupo MasterCard)(fecha-expiracion 10-12-2025 )(numero-tarjeta 1234567890123456)(cliente-id 1))
	(tarjeta-credito (banco Banorte)(grupo Visa)(fecha-expiracion 05-09-2024 )(numero-tarjeta 9876543210987654)(cliente-id 2))
	(tarjeta-credito (banco HSBC)(grupo MasterCard)(fecha-expiracion 08-11-2026 )(numero-tarjeta 5678123456781234)(cliente-id 3))
   	(tarjeta-credito (banco BBVA)(grupo VisaRed)(fecha-expiracion 15-07-2023)(numero-tarjeta 4567123456712345)(cliente-id 4))
   	(tarjeta-credito (banco Banamex)(grupo MasterCard)(fecha-expiracion 22-02-2027)(numero-tarjeta 7890123456789012)(cliente-id 5))
   	(tarjeta-credito (banco Scotiabank)(grupo Visa)(fecha-expiracion 30-06-2023)(numero-tarjeta 2345671234567123)(cliente-id 6))
   	(tarjeta-credito (banco Inbursa)(grupo MasterCard)(fecha-expiracion 11-05-2025)(numero-tarjeta 8901234567890123)(cliente-id 7))
   	(tarjeta-credito (banco Citibanamex)(grupo Visa)(fecha-expiracion 07-09-2023)(numero-tarjeta 1234567890123457)(cliente-id 8))
   	(tarjeta-credito (banco BanCoppel)(grupo MasterCard)(fecha-expiracion 14-04-2025)(numero-tarjeta 4567890123456712)(cliente-id 9))
   	(tarjeta-credito (banco Santander)(grupo Visa)(fecha-expiracion 17-11-2024)(numero-tarjeta 6789012345678912)(cliente-id 10))
   	(tarjeta-credito (banco HSBC)(grupo MasterCard)(fecha-expiracion 03-03-2027)(numero-tarjeta 5671234567123456)(cliente-id 11))
   	(tarjeta-credito (banco BBVA)(grupo VisaRed)(fecha-expiracion 20-10-2023)(numero-tarjeta 7890123456789014)(cliente-id 12))
)

(deffacts ordenes
	(orden-compra (orden-compra-id 1)(fecha 16-11-2023)(cliente-id 3))
	(orden-compra (orden-compra-id 2)(fecha 15-04-2023)(cliente-id 1))
	(orden-compra (orden-compra-id 3)(fecha 05-05-2023)(cliente-id 2))
	(orden-compra (orden-compra-id 4)(fecha 10-06-2023)(cliente-id 4))
	(orden-compra (orden-compra-id 5)(fecha 20-03-2023)(cliente-id 8))
	(orden-compra (orden-compra-id 6)(fecha 15-04-2023)(cliente-id 5))
	(orden-compra (orden-compra-id 7)(fecha 05-05-2023)(cliente-id 6))
	(orden-compra (orden-compra-id 8)(fecha 10-06-2023)(cliente-id 7))
	(orden-compra (orden-compra-id 9)(fecha 20-03-2023)(cliente-id 9))
	(orden-compra (orden-compra-id 10)(fecha 15-04-2023)(cliente-id 12))
	(orden-compra (orden-compra-id 11)(fecha 05-05-2023)(cliente-id 11))
	(orden-compra (orden-compra-id 12)(fecha 10-06-2023)(cliente-id 10))
	
)

(deffacts vales
	(vale-compra (vale-id 1)(vale "20% de descuento"))
	(vale-compra (vale-id 2)(vale "10% de descuento"))
	(vale-compra (vale-id 3)(vale "15% de descuento en accesorios"))
	(vale-compra (vale-id 4)(vale "25% de descuento en laptops"))
	(vale-compra (vale-id 5)(vale "5% de descuento en celulares"))
	(vale-compra (vale-id 6)(vale "12 meses sin intereses en productos Apple"))
   	(vale-compra (vale-id 7)(vale "15% de descuento en compus"))
   
)


(deffacts listacels
	(listcel (orden-compra-id 5)(smartphone-id 1)(cliente-id 8)(cantidad 5))
	(listcel (orden-compra-id 7)(smartphone-id 2)(cliente-id 6)(cantidad 1))
	(listcel (orden-compra-id 8)(smartphone-id 4)(cliente-id 7)(cantidad 1))
	(listcel (orden-compra-id 9)(smartphone-id 5)(cliente-id 9)(cantidad 1))
)

(deffacts listacom
	(listcomp (orden-compra-id 10)(computador-id 1)(cliente-id 12)(cantidad 2))
	(listcomp (orden-compra-id 12)(computador-id 2)(cliente-id 10)(cantidad 1))
	(listcomp (orden-compra-id 6)(computador-id 3)(cliente-id 5)(cantidad 2))
	(listcomp (orden-compra-id 11)(computador-id 4)(cliente-id 11)(cantidad 15))
)

(deffacts listaacc
	(listacc (orden-compra-id 1)(accesorio-id 1)(cliente-id 3)(cantidad 8))
	(listacc (orden-compra-id 2)(accesorio-id 2)(cliente-id 1)(cantidad 2))
	(listacc (orden-compra-id 3)(accesorio-id 3)(cliente-id 2)(cantidad 8))
	(listacc (orden-compra-id 4)(accesorio-id 4)(cliente-id 4)(cantidad 2))
	
)
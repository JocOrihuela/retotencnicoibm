# retobase-ibm-backend
Paso 1: Ubicarse en la ruta del proyecto y ejecutar.
> docker build -t retobase-backend .

Paso 2: Listamos y verificamos la imagen creada.
> docker images

Paso 3: Identificamos el Image ID y ejecutamos el comando.
> docker run -t -p 3081:3081 <<IMAGE_ID>>

Paso 4: Probar la URL en el navegador-

http://localhost:3081/retoibm/sumar/123/5

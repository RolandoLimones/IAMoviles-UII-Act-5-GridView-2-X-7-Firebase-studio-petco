Necesito que generes una aplicación móvil en Flutter para una tienda de mascotas llamada "Petco Shop". La aplicación debe cumplir con los siguientes requisitos:


- Un GridView que muestre exactamente 2 columnas por 7 filas (14 productos en total)
- Cada tarjeta debe tener la imagen del producto ocupando la mayor parte del espacio (aproximadamente 85% de la altura de la tarjeta)
- En la parte inferior de cada tarjeta, mostrar 3 filas con:
  1. Título del producto
  2. Subtítulo del producto
  3. Calificación con estrellas (rating)


- Usar tonos pastel muy tenues: rojos y azules pastel
- El AppBar debe tener un gradiente de rojo pastel a azul pastel
- El fondo de la pantalla debe tener un gradiente suave de rojo muy tenue a azul muy tenue


Usar exactamente estas 14 URLs de imágenes (todas de GitHub):
1. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/collar.jpeg
2. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/croquetas.jpg
3. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/green-iguana.jpg
4. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/huron.png
5. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/piton.png
6. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/shampoo.png
7. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/vitaminas.png
8. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/tarantula.png
9. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/sueter.jpg
10. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/snacks.jpg
11. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/despara.png
12. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/humedo.jpeg
13. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/cachoro.jpg
14. https://raw.githubusercontent.com/RolandoLimones/misimagenesPetco/refs/heads/main/arana.jpg


- collar.jpeg → Título: "Collar Elegante", Subtítulo: "Collar ajustable para perros"
- croquetas.jpg → Título: "Croquetas Premium", Subtítulo: "Alimento balanceado para perros adultos"
- green-iguana.jpg → Título: "Iguana Verde", Subtítulo: "Reptil exótico para terrario"
- huron.png → Título: "Hurón Doméstico", Subtítulo: "Mascota juguetona y cariñosa"
- piton.png → Título: "Pitón Real", Subtítulo: "Serpiente dócil para expertos"
- shampoo.png → Título: "Shampoo Hipoalergénico", Subtítulo: "Cuidado suave para piel sensible"
- vitaminas.png → Título: "Vitaminas Forte", Subtítulo: "Suplemento nutricional completo"
- tarantula.png → Título: "Tarántula Rosa", Subtítulo: "Exótica mascota para aficionados"
- sueter.jpg → Título: "Suéter Térmico", Subtítulo: "Abrigo acolchado para perros"
- snacks.jpg → Título: "Snacks Naturales", Subtítulo: "Premios saludables sin conservantes"
- despara.png → Título: "Desparasitante", Subtítulo: "Protección interna y externa"
- humedo.jpeg → Título: "Alimento Húmedo", Subtítulo: "Sobre de pollo en salsa"
- cachoro.jpg → Título: "Comida para Cachorro", Subtítulo: "Nutrición especial para crecimiento"
- arana.jpg → Título: "Disfraz Araña", Subtítulo: "Traje divertido para Halloween"


- Asignar calificaciones variadas entre 4.0 y 5.0 estrellas para cada producto (puedes elegir valores realistas)


- Incluir manejo de errores para las imágenes (mostrar un placeholder si no cargan)
- Mostrar un indicador de carga mientras se descargan las imágenes
- Las estrellas deben ser solo visuales (no interactivas), mostrando la calificación asignada
- Las tarjetas deben tener bordes redondeados (radius de 20) y sombra suave


<img width="433" height="730" alt="image" src="https://github.com/user-attachments/assets/7d1049fd-2918-4c16-bb44-363a9a032d1a" />
<img width="426" height="730" alt="image" src="https://github.com/user-attachments/assets/09ca6d76-4bb5-4119-b487-04d99c7ba0ec" />
<img width="431" height="730" alt="image" src="https://github.com/user-attachments/assets/d77865cf-6e28-4aee-b7c5-aca2a229347b" />
<img width="442" height="715" alt="image" src="https://github.com/user-attachments/assets/9419b56d-477d-4675-97ff-33c7d7e3fd01" />
<img width="836" height="746" alt="image" src="https://github.com/user-attachments/assets/3ff9ca2c-50da-4a22-827e-f0b6f44b5cdb" />
<img width="836" height="648" alt="image" src="https://github.com/user-attachments/assets/624f798b-65ca-47d1-8c9b-61779baeddf9" />
<img width="819" height="737" alt="image" src="https://github.com/user-attachments/assets/ba7ee451-e06b-4314-84f7-39add37c7f24" />
<img width="837" height="735" alt="image" src="https://github.com/user-attachments/assets/0a7e29c2-2971-46bc-857f-56514bb66d2d" />
<img width="838" height="732" alt="image" src="https://github.com/user-attachments/assets/d87091a3-995d-40f6-aa99-9fe86d308bb3" />
<img width="829" height="724" alt="image" src="https://github.com/user-attachments/assets/7de86661-ac72-4498-8173-65c8ef1bb919" />

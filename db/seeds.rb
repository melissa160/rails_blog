# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(user_id: 1, title: "Cómo aumentar tu audiencia en Medium", description:"Paso uno: Cambia tu mentalidad
Medium sobresale al ayudarte a conectar directamente con una audiencia que se preocupa por lo que escribes y te da los medios para iniciar una conversación con esas personas.
La clave para aumentar tu número de lectores es centrarse en las personas que gravitan sobre tu mensaje. Interactúa con ellas y dales el espacio para para iniciar y continuar más conversaciones contigo, sobre ti e inspiradas por ti.
Paso dos: Sigue personas y publicaciones que te interesen
¿Sabes esas innumerables marcas en otras plataformas sociales que son seguidas por miles de personas pero que no siguen a nadie? No hagas esto en Medium. La mejor forma de encontrar personas que se beneficien de tus textos es hallar voces que te interesen a ti en primer lugar.
Sumérgete en etiquetas, publicaciones y personas que escriben sobre los temas sobre los que quieres escribir. Síguelos. Resáltalos. Compártelos. Construye tu red.")
Post.create(user_id: 2, title: "El arte y la ciencia de las etiquetas", description:"Las etiquetas son una parte importante de la experiencia de Medium. Ya sea publicando una pieza original o respondiendo a otro escritor, las etiquetas son clave para ayudar a que nuevos lectores descubran tu trabajo.
Para desbloquear todo el potencial de las etiquetas, uno debe equilibrar su arte y su ciencia
Utiliza todas tus etiquetas
Cada historia tiene al menos cinco frases que son descriptores excelentes de lo que el texto contiene. No desperdicies esta oportunidad para colocar tu trabajo frente a la mayor cantidad de personas posibles. Recuerda que las personas están en Medium porque quieren leer lo que se escribe, y siguen etiquetas para descubrir nuevas voces e historias dentro de los temas que les interesan. Tu trabajo es buscado. Ponlo en el escaparate para que pueda ser disfrutado.
Diversifica tu audiencia
Las etiquetas son geniales para describir la esencia de tu historia en una sola palabra o frase, pero las historias rara vez versan sobre un único tema. Si firmo una historia sobre viajar en coche por todo el país con mi marido, dos gatos, un perro y una tarántula, en búsqueda de un nuevo trabajo, no utilizaría únicamente la etiqueta «viajes». Usaría también «mascotas», «matrimonio», «cambio de trabajo» y «consejos de viaje».
Todas estas etiquetas describen elementos clave de mi historia y atraen a audiencias muy diferentes, haciendo que mi historia emerja ante un grupo mayor de personas que disfrutarán lo que he escrito, aumentando las oportunidades para que esta sea recomendada, respondida, y también para que otros me sigan para recibir futuras historias.
Céntrate en el tema
Haz que tus etiquetas guarden relación con lo escrito. Los lectores confían en que las historias que leen están correctamente categorizadas. No traiciones esa confianza. Podría ser tentador utilizar una etiqueta popular con la esperanza de poner tu historia frente a una audiencia activa, pero si la etiqueta no describe correctamente tu historia, puede que te estés haciendo un flaco favor a largo plazo por aumentar los lectores a corto.
Más no siempre es mejor
Al momento de escribir una etiqueta aparece una lista de sugerencias con etiquetas actualmente utilizadas en la plataforma. Al lado de la palabra o la frase se muestra el número de historias actualmente publicadas utilizando esa etiqueta.")
Post.create(user_id: 3, title: "Solicitud de historias para publicaciones: un básico", description:"Las publicaciones en Medium dan cobijo a historias de una gran variedad de autores sobre un número ilimitado de temas, pasiones, etcétera. Van desde empresas profesionales hasta espacios administrados por la comunidad. Independientemente de tus intereses, probablemente exista una publicación para ti en la que escribir o leer. ¿Y si todavía no existe?
Puedes crearla tú.
Ya hemos escrito sobre cómo hacer una publicación (y hacer que se vea genial), por lo que en esta ocasión hablaremos sobre las mejores formas para encontrar historias y pedir a los escritores que añadan sus creaciones a tu publicación.")

Comment.create(description: "Hace no mucho recibí la invitación y aún tengo pendiente echarle un vistazo a fondo y valorar si merece la pena su uso para sustituir tener un blog, pero lo que sí echo en falta como indicas, y más teniendo en cuenta la integración con TW, es que no se pueda marcar de alguna forma 'seguir' a un autor en concreto. O al menos añadir RSS para las publicaciones de colecciones o autores.", post_id: 1, user_id: 1)
Comment.create(description: "¿Podríais poner un draft un rato para que algunos nos apuntemos dejando una nota? Es una de las opciones que hay ahora para nuevos usuarios :)", post_id: 1, user_id: 2)
Comment.create(description: "Menudo descubrimiento! Voy a ver que tal. Muchas gracias!!!", post_id: 2, user_id: 1)
Comment.create(description: "Gran herramienta para periodismo 2.0 Muchas gracias", post_id: 2, user_id: 2)
Comment.create(description: "Un twitter para texto largo. De su mismo creador. Y aún más sencillo.", post_id: 3, user_id: 3)
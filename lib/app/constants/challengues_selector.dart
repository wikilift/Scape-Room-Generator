import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';

// ignore: non_constant_identifier_names
List<Challenge> GET_CHALLENGUES_CONFIG(BirthdayConfig b) {
  switch (b) {
    case BirthdayConfig.DEBUG:
      return [
        Challenge(
            solve: "0",
            text: "Hoy puede ser un gran día",
            imgPath: "NaN",
            contains: true,
            help: ["Test help"]),
      ];
    case BirthdayConfig.VIKI:
      return [
        /*  Challenge(
            solve: "umbridge*Umbridge*Dolores Umbridge*dolores umbridge",
            text: """
¡El aire se vuelve gélido y una sombra oscura se cierne sobre ti!\n
Sientes cómo la temperatura desciende y un escalofrío te recorre la espalda. A lo lejos, puedes ver la silueta de unos dementores acercándose, su presencia drenando la esperanza y la alegría del ambiente.\n

Sabes que no hay tiempo que perder. La única forma de sobrevivir a este encuentro es aprender un hechizo perdido, oculto durante siglos en las antiguas escrituras.\n Este poderoso conjuro es la única defensa contra las fuerzas oscuras que se aproximan, pero no será fácil de encontrar.

Antes de que puedas avanzar y desentrañar el misterio de este hechizo, deberás demostrar tu conocimiento y valentía.\n La primera prueba te espera: responder a una pregunta crucial que desbloqueará el siguiente paso en tu misión.
\n\n
¿Quién utilizó los dementores como arma contra Harry?\n\n""",
            imgPath: "assets/img_app/viki/dementor.png",
            help: [
              "Es un alto funcionario del Ministerio de Magia, conocido por su obsesión con controlar a Harry y sus amigos.",
              "Esta persona también encabezó una campaña en Hogwarts, estableciendo estrictas reglas y castigos severos durante su tiempo allí.",
            ],
            contains: true),
        //!
        Challenge(
            solve: "3",
            text: """
Ahora que sabes quien los controla, rápido responde....\n\n
¿Cuantas veces ha sido atacado Harry por los dementores??\n\n""",
            imgPath: "assets/img_app/viki/dementor.png",
            help: [
              "Menos de 1000... ^^",
            ],
            contains: false),

        //!

        Challenge(
            solve: "Expecto Patronum*expecto patronum",
            text: """
¡Felicidades! Has desvelado un antiguo hechizo de defensa contra los dementores. Sin embargo, conocer las palabras no es suficiente... debes asimilar la magia y demostrar que eres digno de usarla.
\n\n
La magia ancestral ha desordenado el nombre del hechizo, y solo si logras resolver este enigma podrás liberar su poder. Delante de ti, las letras han sido mezcladas y debes organizarlas correctamente para desvelar el verdadero nombre del hechizo.

El anagrama es el siguiente:

"MO AN E UXPOT CETRPRUS"\n\n
¡Rápido pronuncia el hechizo!\n\n""",
            imgPath: "NaN",
            help: [
              "Era el mejor hechizo del padre de Harry",
            ],
            contains: true),

        //!

        Challenge(
            solve:
                "ejército inferi*Ejército Inferi*ejercito inferi*ejercito inferi*Inferi",
            text: """
¡Felicidades! Has conseguido escapar del dementor que te acechaba, demostrando gran coraje y habilidad. Sin embargo, tu travesía por el mundo mágico está lejos de terminar. A medida que avanzas, sientes que la atmósfera se vuelve aún más opresiva.

Te adentras en una zona oscura y misteriosa, rodeada de árboles altos y sombras que parecen cobrar vida. Pronto te das cuenta de que te encuentras en el borde del Bosque Prohibido, un lugar que guarda secretos antiguos y peligrosos.

Mientras caminas, una voz susurrante llena el aire, resonando en tu mente:

"En la oscuridad de la noche,
sin vida y sin ser espectral,
en el Bosque Prohibido reside,
pues su corazón dejó de latir.
Pero aún se mueve, aún persigue,
aquel que se atreva a invadir.
No es fantasma, ni criatura viva,
un deber cumple en su lugar."

Te detienes en seco. Entiendes que este enigma no es solo un juego; es una advertencia. Desvelar la identidad de esta entidad es crucial para sobrevivir al siguiente desafío. Solo un verdadero conocedor de la magia oscura y de los misterios del mundo mágico podrá salir de esta prueba con vida.
\n
¿Quién o qué soy?\n\n""",
            imgPath: "assets/img_app/viki/inferi.png",
            help: [
              "Son cuerpos reanimados por magia oscura.",
              "Fueron utilizados por Lord Voldemort para proteger uno de sus Horrocruxes",
              "Estas criaturas fueron mencionadas por Dumbledore como uno de los muchos peligros que se encuentran en el Bosque Prohibido"
            ],
            contains: true),

        //!

        Challenge(
            solve: "albus dumbledore*Albus Dumbledore",
            text: """
¡Has escapado de los Inferi! Con gran esfuerzo y astucia, lograste desvelar la identidad de las criaturas que te acechaban en el Bosque Prohibido. Sin embargo, el peligro aún no ha pasado. Al salir del oscuro bosque, te encuentras en un claro iluminado por la luna, donde un majestuoso fénix sobrevuela tu cabeza. Sus plumas brillan con un resplandor dorado, y su canto llena el aire con una mezcla de esperanza y tristeza.

El fénix desciende lentamente hasta posarse frente a ti, sus ojos llenos de sabiduría te observan atentamente. Sientes una conexión profunda con la criatura, y de repente, una voz antigua y poderosa resuena en tu mente:

"El camino que has elegido no es uno fácil. Los tiempos oscuros requieren de valor, y solo aquellos que se alinean con la luz pueden hacerle frente a las fuerzas del mal. Existe una sociedad secreta, fundada para luchar contra las sombras que se ciernen sobre nuestro mundo. Su símbolo es el mismo que la criatura que tienes ante ti: el fénix, el renacer de la esperanza en tiempos de desesperación."

Mientras la voz se desvanece, una luz suave emerge del pecho del fénix, revelando una antigua inscripción en el suelo del claro. Sabes que estás a punto de descubrir algo importante, un nombre que representa la resistencia contra el mal.

Pero antes de continuar, debes demostrar tu conocimiento:

¿Quién fue el fundador de la Orden del Fénix?\n\n""",
            imgPath: "assets/img_app/viki/phoenix.png",
            help: [
              "El mayor mago del lado bueno",
            ],
            contains: true),
        //!
        //
        Challenge(
            solve:
                "12 de Grimmauld Place*12 de Grimmauld*12 Grimmauld*12 Grimmauld Place*12_grimmauld_place*12_de_grimmauld_place",
            text: """
Después de desvelar el nombre del fundador de la Orden del Fénix, el fénix ante ti lanza un canto melodioso que parece resonar en cada rincón del claro. La luz que emana de su pecho se intensifica, y de repente, el paisaje a tu alrededor comienza a desvanecerse, reemplazado por una espesa niebla.

De entre la niebla, surge una voz profunda y enigmática que parece provenir de todas partes y de ninguna a la vez:

"El refugio de la Orden está oculto a los ojos del mundo,
entre sombras y secretos, donde ni la magia se atreve a buscar.
En la calle sin nombre, donde lo invisible es visible,
se alza una morada que ni siquiera los magos pueden hallar."

"El número es doble, más uno y más tres,
y el nombre es oscuro, en un lugar sin sol.
¿Puedes encontrar el sitio donde la esperanza se esconde,
entre los muros donde los valientes conspiran contra el mal?"

Mientras la voz se desvanece, la niebla comienza a disiparse lentamente, revelando la imagen fugaz de una antigua casa de ladrillos oscuros, con un número que parece desvanecerse tan pronto como lo ves. Sabes que para avanzar, debes descifrar el acertijo y encontrar la dirección exacta de este lugar oculto, el centro de resistencia de la Orden del Fénix.

Instrucciones para introducir la respuesta:

xx_de_calle_nombre

Ejemplo
17_gringots_center
\n\n""",
            imgPath: "assets/img_app/viki/grimmauld.png",
            help: [
              " Este lugar es una casa ancestral, perteneciente a una antigua y noble familia de magos de sangre pura, conocida por su conexión con la oscuridad.",
              "La ubicación de esta casa está protegida por un poderoso encantamiento de ocultación conocido como el Encantamiento Fidelius, que la hace invisible a cualquiera que no conozca su secreto.",
              "Aunque su exterior parece sombrío y desapercibido, en su interior, esta casa se convierte en un refugio para aquellos que luchan contra las fuerzas de la oscuridad durante la Segunda Guerra Mágica."
            ],
            contains: true),
        //
        //
        Challenge(
            solve: "Expelliarmus*expelliarmus",
            text: """
Después de desvelar el secreto de la Orden del Fénix, el fénix que te ha guiado hasta ahora se posa en un viejo pedestal de piedra, rodeado por una niebla etérea. De repente, un espejo antiguo aparece flotando frente a ti, con un marco dorado ornamentado, cubierto de runas arcanas que emiten un leve brillo.

La superficie del espejo comienza a ondular como si fuera agua, y una voz antigua y etérea susurra en el aire:

"Para desarmar al enemigo, busca el reflejo de la verdad. Las palabras que buscas están ocultas, pero su poder se revela en su imagen contraria, en la simetría de lo oculto. Lo que ves no siempre es lo que es, y lo que es, puede ser visto al revés. Sólo al encontrar el reflejo de cada símbolo, podrás liberar el poder que te permitirá avanzar."

En el espejo, aparecen las siguientes letras:

VCKVOORZIÑFH

El espejo comienza a disiparse en la niebla, pero la secuencia de letras permanece grabada en tu mente. Sabes que la clave para desvelar el hechizo está en entender lo que la voz quiso decir con "el reflejo de la verdad". Debes buscar la esencia oculta detrás de cada símbolo para descubrir el hechizo que necesitas.

¡Rápido pronuncia el hechizo!
\n\n""",
            imgPath: "NaN",
            help: [
              "Imagina que cada letra en la secuencia es como una imagen en un espejo, donde el inicio y el final se encuentran cara a cara. Reflexiona sobre cómo se verían esas letras si estuvieran al otro lado del espejo.",
              "Considera que el 'reflejo' de cada letra en el espejo se relaciona con su posición en el alfabeto. El principio se convierte en el final, y el final en el principio. Descubre la verdadera forma oculta detrás de cada símbolo.",
            ],
            contains: true),
        //
        //

        Challenge(
            solve: "Peter Pettigrew*peter pettigrew",
            text: """
El espejo se desvanece lentamente en la niebla, dejando tras de sí un silencio profundo que parece envolver todo a tu alrededor, no llegaste a tiempo de escabullirte con tu nuevo hechizo, aunque efectivo ha llegado tarde . La atmósfera cambia, y sientes un peso en el aire, como si el tiempo mismo retrocediera. De repente, te encuentras en un lugar diferente, rodeado de sombras y recuerdos antiguos. Estás en una habitación oscura, llena de objetos polvorientos y recuerdos olvidados.

Ante ti, una vieja carta, desgastada por el tiempo, flota en el aire. Al tocarla, la voz de alguien del pasado, llena de tristeza y traición, comienza a hablarte:

"Hubo un tiempo en que la oscuridad amenazó con arrebatar la esperanza. Una familia fue escondida, protegida por un encantamiento poderoso, uno que hacía su refugio invisible, incluso para los ojos más poderosos. Pero la protección sólo era tan fuerte como el corazón que la guardaba. En ese entonces, un traidor se ocultó entre los fieles, un amigo que cambió el destino de muchos.

Aunque no fue el único que guardaba secretos, su traición fue la más dolorosa, pues entregó a aquellos que confiaban en él, sellando su destino con una marca oscura."

La voz se desvanece, pero antes de que el silencio vuelva, una última frase resuena en la habitación:

"El guardián de la verdad fue su amigo, pero el que les protegió, también les traicionó. Su nombre aún susurra en las sombras, escondido detrás de una máscara de amistad."

Ahora, una adivinanza aparece en el aire:

"Soy un amigo y un traidor,
un protector y un destructor.
Fui escogido por confianza,
pero causé la desesperanza.
Mi secreto fue el más oscuro,
pues entregué lo más puro.
¿Quién soy?"
\n\n""",
            imgPath: "NaN",
            help: [
              "Su apodo en la escuela era 'Colagusano', y su traición es una de las más infames en la historia del mundo mágico.",
            ],
            contains: true),
        //!
        //
        Challenge(
            solve: "varita_sauco,capa_invisibilidad,piedra_resurreccion",
            text: """
Al pronunciar el nombre del traidor, Peter Pettigrew, el ambiente alrededor de ti comienza a cambiar. La habitación oscura y polvorienta se disuelve, y te encuentras rodeado por una luz cegadora. Es como si el tiempo se detuviera, y de pronto, te das cuenta de que has escapado del recuerdo que te había atrapado.

Pero la sensación de alivio dura poco. La luz que te rodea se condensa en tres figuras misteriosas, envueltas en capas negras, que parecen flotar en el aire. Sus rostros están ocultos, pero sientes una presencia poderosa emanando de ellas. Estas figuras te observan en silencio, como si estuvieran esperando algo de ti.

De repente, una voz profunda y antigua, que parece venir de las tres figuras a la vez, te habla:

"Has escapado del pasado, pero el futuro aún está en peligro. Para enfrentar la oscuridad que se avecina, necesitas más que coraje y conocimiento. Necesitas aquello que ha sido buscado por generaciones, los artefactos que controlan la vida, la muerte, y el destino. Los objetos que, juntos, otorgan el poder supremo, pero que sólo los más dignos pueden reunir."

Mientras la voz habla, las tres figuras comienzan a revelar pistas sobre su identidad. Sin embargo, no te lo darán todo tan fácilmente. Frente a ti, un enigma se forma en el aire, escrito en letras brillantes:

"Uno es la sombra que nunca se muestra,
que oculta al portador de los ojos mortales.
Otro es la piedra que revierte el final,
trayendo de vuelta lo que se ha perdido en la vida.
El último es el más codiciado por la muerte,
una vara que elige al que la busca,
y que sólo es leal al más fuerte.

Tres son los objetos, tres son los poderes,
que juntos hacen al Maestro de la Muerte.
Dime sus nombres, y el camino se abrirá,
para aquellos que desean sobrevivir a la oscuridad."

Instrucciones para responder:

Para desvelar el camino y continuar, debes introducir los nombres de las Reliquias de la Muerte en el siguiente formato:

reliquia_nombre,reliquia_nombre,reliquia_nombre

Por ejemplo, si crees que los objetos son la Espada de Gryffindor, una Escoba Nimbus, y un Caldero de Peltre, deberás escribir:

espada_gryffindor,escoba_nimbus,caldero_peltre
\n\n""",
            imgPath: "NaN",
            help: [
              "Una de las reliquias es una capa que ha sido pasada de generación en generación, capaz de hacer invisible a quien la usa, ocultándolo de cualquier mirada.",
              "Otra reliquia es una varita legendaria, la más poderosa jamás creada, hecha de saúco, que sólo obedece al mago más fuerte y ha cambiado de manos muchas veces a lo largo de la historia."
            ],
            contains: false),
        //
        //      //!
        //
        Challenge(
            solve: "156",
            text: """
Después de haber descubierto las Reliquias de la Muerte, te encuentras en un vasto salón antiguo, cuyas paredes están adornadas con inscripciones arcanas y símbolos que parecen cobrar vida al ser observados. En el centro del salón, un pedestal de piedra sostiene un antiguo libro, cerrado con cadenas doradas. Sientes que el poder contenido en ese libro es inmenso, pero para liberarlo, necesitas algo más.

De repente, una figura encapuchada emerge de las sombras. Su presencia es imponente y su voz, profunda y resonante, llena la sala:

"Has llegado lejos, joven mago, pero aún te queda un último desafío. Las Reliquias de la Muerte contienen un poder que va más allá de la comprensión de los mortales. Para activarlas, debes dominar el antiguo arte de la numerología, pues solo un número encierra la clave que despertará su verdadero poder.

En este mundo de magia, donde todo tiene un significado oculto, el poder supremo se esconde en un número que conecta la vida, la muerte y el destino. Este número es el equilibrio de las fuerzas, la suma de lo antiguo y lo eterno."

Ante ti, el encapuchado levanta una mano y comienza a trazar números en el aire, formando un enigma que deberás resolver:

"El número que buscas es la suma de las edades de tres magos poderosos en el año en que el Señor Tenebroso fue derrotado por primera vez. Un mago que era un anciano sabio, otro que portaba una cicatriz y uno más, marcado como su igual. Encuentra las edades correctas y descubrirás el número que libera el poder."

Instrucciones para resolver el enigma:

Debes calcular el número que activará las Reliquias sumando las edades de los tres magos en el año 1981, cuando el Señor Tenebroso fue derrotado por primera vez. Introduce el número en formato número para continuar.
\n\n""",
            imgPath: "NaN",
            help: [
              "El anciano sabio es conocido por ser el director de Hogwarts, uno de los magos más poderosos y longevos de su tiempo.",
              "El mago marcado por una cicatriz nació el 31 de julio de 1980, y el mago marcado como su igual nació el 31 de diciembre de 1926."
            ],
            contains: false),

//! */

        /*     Challenge(
            solve: "Harry Potter*harry potter",
            text: """
Después de desvelar el poder de la numerología y activar las Reliquias de la Muerte, sientes un nuevo flujo de energía corriendo por tu cuerpo. En ese momento, el encapuchado frente a ti sonríe levemente, y con un gesto de su mano, un antiguo y polvoriento pergamino flota hasta posarse suavemente en tus manos.

El pergamino se desenrolla por sí solo, revelando una escritura antigua que comienza a brillar mientras lees:

"Has demostrado ser digno, pero el camino no termina aquí. En tu viaje, aprenderás que no todos los enemigos son visibles, y que el verdadero peligro reside dentro de lo más inesperado. Para vencer a la oscuridad que aún acecha, debes descubrir y destruir lo que queda de su esencia."

De repente, una palabra se graba en tu mente, brillante y poderosa: "Accio!". Con un simple movimiento de tu varita y la pronunciación del hechizo, un objeto oculto en la sala es atraído hacia ti. Es un espejo, antiguo y desgastado, con un reflejo que parece más real que la propia realidad. Sabes que has aprendido el hechizo correcto, pero este espejo no es el verdadero objetivo. Hay algo más, algo más oscuro, que aún debe ser revelado.

La figura encapuchada da un paso adelante y continúa:

"Antes de que puedas destruir al enemigo final, debes encontrar y desvelar el último fragmento de su alma corrupta. Este Horrocrux es diferente a los demás, escondido a simple vista, tan cercano a ti que nunca lo hubieras sospechado. Su existencia es la clave para la derrota del Señor Tenebroso."

¿De qué Horrocrux hablamos?
\n\n""",
            imgPath: "NaN",
            help: [
              "El portador del último Horrocrux es conocido por una cicatriz en forma de rayo, un símbolo de la conexión que comparte con el Señor Tenebroso.",
              "Este Horrocrux no es un objeto, sino una persona, alguien que fue marcado por Voldemort sin saberlo"
            ],
            contains: true), */
        Challenge(
            solve: "alpanor aeollotindin sectumxc",
            text: """
Después de resolver el enigma del último Horrocrux, sientes cómo la sala comienza a vibrar. Las paredes empiezan a resquebrajarse, y la figura encapuchada se disuelve en sombras, dejando tras de sí una sensación de inminente peligro. Sabes que el momento final se acerca. Las Reliquias de la Muerte están activadas, pero aún necesitas una última pieza, un último poder para terminar esta batalla de una vez por todas.

Del suelo, donde antes no había nada, surge una fuente de luz que ilumina la habitación con un resplandor dorado. En el centro de la luz aparece un antiguo pergamino flotante, pero esta vez las palabras no están escritas en un idioma que reconozcas. El pergamino emite una fuerza que sientes que es la clave para terminar con el enemigo, pero solo si puedes descifrar el mensaje oculto.

La voz de la figura encapuchada, ahora más etérea y distante, susurra en tu mente:

"Has llegado al final de tu viaje, pero para destruir la oscuridad que queda, necesitas pronunciar las palabras que encarnan la verdadera fuerza de la luz. Las palabras están ocultas, protegidas por un antiguo cifrado. Solo aquellos dignos, aquellos que han demostrado coraje, sabiduría y perseverancia, podrán descifrarlas y desatar su poder. Resuelve el enigma, pronuncia el hechizo, y el ciclo de la oscuridad llegará a su fin."

En el pergamino aparece el siguiente mensaje cifrado:

\t\t\thrwhtvy hlvrrvaotkot zljabsej

\n\n""",
            imgPath: "NaN",
            help: [
              "Este hechizo está diseñado para desatar un poder inmenso, uno que puede cerrar el ciclo de la oscuridad para siempre.",
              "Piensa en el alfabeto como un círculo. Si llegas al principio, continúa desde el final. Esto te ayudará a descifrar letras que parecen estar al comienzo del alfabeto.",
              "El mensaje oculto no solo encierra un hechizo, sino un nombre que refleja la acción que llevará a cabo. La primera palabra tiene que ver con 'liberar'",
              "Este hechizo no aparece en los libros de magia conocidos, es único y fue creado para este momento final.Jeje resulta que no eres tan buen mago.... para descifrar el mensaje, cada letra debe moverse siete posiciones hacia atrás en el alfabeto. Por ejemplo, la letra 'H' se convierte en 'A'.",
            ],
            contains: false),
      ];
/*




























*/
    case BirthdayConfig.CRIS:
      return [
        Challenge(
            solve: "piedra",
            text:
                '''Contexto: La cámara estaba sellada durante miles de años, sin contacto con el exterior. Los alimentos lucían como si hubieran sido preparados ese mismo día, desafiando toda lógica y tiempo.\n\n
             Enigma: Durante una expedición en una antigua pirámide egipcia, un equipo de arqueólogos encuentra una cámara secreta.
             \nEn su interior, hay un gran banquete dispuesto sobre la mesa, con alimentos que parecen frescos y apetitosos.
             \nSin embargo, a pesar del hambre, los arqueólogos no se pueden comer nada.\n\t¿Por qué?
              ''',
            imgPath: "NaN",
            help: [
              "De qué material estará hecha la comida...",
              "Test",
              "test2"
            ],
            contains: true),
        //!
        Challenge(
            solve:
                "nunca me cogeras*nuncamecogeras*nuncamecogerás*nunca me cogerás",
            text:
                '''En las calles empedradas de un antiguo pueblo español, el detective privado Javier Ruiz se encontraba frente a una encrucijada peculiar en su carrera. Un valioso manuscrito del siglo XVII había desaparecido de la biblioteca local, y todas las pistas parecían evaporarse como la neblina matinal. \n
Ruiz sabía que este caso era diferente. El manuscrito contenía, según los rumores, un secreto que muchos deseaban mantener oculto. Mientras caminaba por la biblioteca, sus ojos se posaron en un cuadro del artista local Diego Velázquez. Algo en ese cuadro llamó su atención: un conjunto de letras y números dispersos en el fondo que parecían fuera de lugar. \n
Las letras y números eran 'S6', 'F11', 'D17', 'Z24', 'Z26', 'W11', 'U17', 'X22', 'B13', 'W17', 'Ñ10', 'B10', 'Ñ14', 'A8'. Ruiz anotó esto en su libreta, preguntándose si sería un mensaje cifrado. Él no tenía todas las respuestas, pero algo le decía que esas letras y números eran la clave. \n
De vuelta en su oficina, Ruiz repasó las notas del caso y reflexionó sobre el cuadro de Velázquez. Recordó que Velázquez era conocido por incluir mensajes ocultos en sus obras. "¿Podría ser este un código similar?", pensó. \n
Decidió dejar la solución del enigma en manos de alguien más astuto y con una perspectiva fresca. Quizás esa persona podría descifrar el mensaje oculto en las letras y números, y con ello, revelar el paradero del manuscrito perdido. \n
Mientras tanto, Ruiz se dedicó a reunir más información sobre el manuscrito y sus posibles conexiones con la historia local. Sabía que la clave para resolver el misterio estaba ahí, en el cuadro y en las notas que había tomado. Pero, ¿quién sería capaz de descifrarla? \n''',
            imgPath: "NaN",
            help: [
              "En las palabras de este misterio, las respuestas yacen ocultas, siguiendo el ritmo de un baile numérico. En el baile del alfabeto y los números está la respuesta"
            ],
            contains: true),
        //!
        Challenge(
            solve: "querer_saber_noticias_sobre_misterio_quien_hizo",
            text: '''
Mientras investigabas un antiguo código, encontraste referencias a un libro perdido.
Este libro, oculto en una biblioteca olvidada, tenía extrañas marcas en sus esquinas.
Las marcas parecían ser claves para descifrar secretos ancestrales.
Cada una de estas coordenadas pertenece a una palabra, júntalas mediante un guion bajo “_”.\n
• 10:8:2 • 23:11:1 • 30:8:2 • 30:26:7 • 35:1:7 • 151:19:10 • 151:11:8 • 152:11:5
 ''',
            imgPath: "NaN",
            help: [
              "Las marcas parecen indicar un conocido cifrado 'Book Cipher' quizás google sepa algo..."
            ],
            contains: false,
            pdf: true,
            pdfPath: "assets/pdf/quijote.pdf"),

        //!
        Challenge(
            solve: "THEFLAGISSAYWEARECRAZY",
            text: "Descifra el mensaje oculto en la imagen",
            imgPath: "assets/img_challenge/magiccrypto.jpg",
            help: ["Ave"],
            contains: false),
      ];
    case BirthdayConfig.INIGO:
      return [
        Challenge(
            solve: "querer_saber_noticia_sobre_conocer_misterio_quien_hizo",
            text:
                "Estás jugando un juego de formato Legacy.\n\nEs tu turno, y te enfrentas a un oponente con 10 puntos de vida.\n\nTienes 3 puntos de vida y las siguientes cartas en tu mano:\n\n\t -Show and Tell \n\n\t-[Carta Misteriosa X] \n\nTienes todas las tierras necesarias en juego para lanzar estas cartas. \n\nObjetivo del Desafío: \n\n\t-¿Qué carta (Carta Misteriosa X) debes tener en tu mano junto con Show and Tell para ganar en este turno?",
            imgPath: "NaN",
            help: [
              "Busca una criatura en Magic conocida por su capacidad de ganar partidas rápidamente cuando entra en juego."
            ],
            contains: false),
        Challenge(
            solve: "¡TeEst4s4C3rc4nd0!",
            text:
                "84 101 109 112 111 114 32 105 110 32 115 117 110 116 32 108 97 98 111 114 117 109 32 115 117 110 116 32 100 117 105 115 46 32 85 108 108 97 109 99 111 32 97 117 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 97 100 32 101 105 117 115 109 111 100 46 10 32 67 105 108 108 117 109 32 109 111 108 108 105 116 32 110 111 110 32 99 105 108 108 117 109 32 113 117 105 32 110 111 115 116 114 117 100 32 101 110 105 109 32 118 111 108 117 112 116 97 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 101 97 46 10 32 32 80 97 114 105 97 116 117 114 32 110 111 110 32 97 108 105 113 117 97 32 117 116 32 101 97 32 100 111 32 101 110 105 109 32 111 99 99 97 101 99 97 116 32 105 114 117 114 101 32 101 117 32 108 97 98 111 114 101 32 100 111 46 10 89 84 69 103 78 84 81 103 78 106 85 103 78 68 85 103 78 122 77 103 78 122 81 103 77 122 81 103 78 122 77 103 77 122 81 103 78 68 77 103 77 122 77 103 78 122 73 103 78 106 77 103 77 122 81 103 78 109 85 103 78 106 81 103 77 122 65 103 77 106 69 61 10 10 82 101 112 114 101 104 101 110 100 101 114 105 116 32 115 105 116 32 114 101 112 114 101 104 101 110 100 101 114 105 116 32 112 114 111 105 100 101 110 116 32 99 117 108 112 97 32 110 111 110 32 109 105 110 105 109 46",
            imgPath: "NaN",
            help: ["Esto parecen bytes en decimal..."],
            contains: false),
        Challenge(
            solve: "casilotienes",
            text: "¿Qué valor imprime en pantalla?",
            imgPath: "assets/img_challenge/challenge4.png",
            help: ["Ave"],
            contains: false),
        Challenge(
            solve: "28",
            text:
                "¿Qué número corresponde para seguir la serie? 1, 3, 6, 10, 15, 21 …?",
            imgPath: "NaN",
            help: ["Clásicos triangulares..."],
            contains: false),
        Challenge(
            solve: "tarmogoyf",
            text: "¿Qué carta es 'frog anatomy'?",
            imgPath: "NaN",
            help: ["Anal..."],
            contains: false),
        Challenge(
            solve: "eStUCumPleaÑoSPedAz0d3G4!",
            text:
                "9EEADi^^>682]?K^7:=6^r_y((\$##R=de)z*eqEK8!B!@ff}22G:|Jtd+hcEc)f>KD!'%fsKc",
            imgPath: "NaN",
            help: ["Quizás hay un link aquí...XOR... R...7"],
            contains: false)
      ];
  }
}

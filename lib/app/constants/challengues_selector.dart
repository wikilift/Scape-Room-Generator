import 'package:quiz_birthday/app/constants/app_constants.dart';
import 'package:quiz_birthday/app/data/models/challenge.dart';

// ignore: non_constant_identifier_names
List<Challenge> GET_CHALLENGUES_CONFIG(BirthdayConfig b) {
  switch (b) {
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
            help: "De qué material estará hecha la comida...",
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
            help:
                "En las palabras de este misterio, las respuestas yacen ocultas, siguiendo el ritmo de un baile numérico. En el baile del alfabeto y los números está la respuesta",
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
            help:
                "Las marcas parecen indicar un conocido cifrado 'Book Cipher' quizás google sepa algo...",
            contains: false,
            pdf: true,
            pdfPath: "assets/pdf/quijote.pdf"),
      ];
    case BirthdayConfig.INIGO:
      return [
        Challenge(
            solve: "querer_saber_noticia_sobre_conocer_misterio_quien_hizo",
            text:
                "Estás jugando un juego de formato Legacy.\n\nEs tu turno, y te enfrentas a un oponente con 10 puntos de vida.\n\nTienes 3 puntos de vida y las siguientes cartas en tu mano:\n\n\t -Show and Tell \n\n\t-[Carta Misteriosa X] \n\nTienes todas las tierras necesarias en juego para lanzar estas cartas. \n\nObjetivo del Desafío: \n\n\t-¿Qué carta (Carta Misteriosa X) debes tener en tu mano junto con Show and Tell para ganar en este turno?",
            imgPath: "NaN",
            help:
                "Busca una criatura en Magic conocida por su capacidad de ganar partidas rápidamente cuando entra en juego.",
            contains: false),
        Challenge(
            solve: "¡TeEst4s4C3rc4nd0!",
            text:
                "84 101 109 112 111 114 32 105 110 32 115 117 110 116 32 108 97 98 111 114 117 109 32 115 117 110 116 32 100 117 105 115 46 32 85 108 108 97 109 99 111 32 97 117 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 97 100 32 101 105 117 115 109 111 100 46 10 32 67 105 108 108 117 109 32 109 111 108 108 105 116 32 110 111 110 32 99 105 108 108 117 109 32 113 117 105 32 110 111 115 116 114 117 100 32 101 110 105 109 32 118 111 108 117 112 116 97 116 101 32 97 100 105 112 105 115 105 99 105 110 103 32 101 97 46 10 32 32 80 97 114 105 97 116 117 114 32 110 111 110 32 97 108 105 113 117 97 32 117 116 32 101 97 32 100 111 32 101 110 105 109 32 111 99 99 97 101 99 97 116 32 105 114 117 114 101 32 101 117 32 108 97 98 111 114 101 32 100 111 46 10 89 84 69 103 78 84 81 103 78 106 85 103 78 68 85 103 78 122 77 103 78 122 81 103 77 122 81 103 78 122 77 103 77 122 81 103 78 68 77 103 77 122 77 103 78 122 73 103 78 106 77 103 77 122 81 103 78 109 85 103 78 106 81 103 77 122 65 103 77 106 69 61 10 10 82 101 112 114 101 104 101 110 100 101 114 105 116 32 115 105 116 32 114 101 112 114 101 104 101 110 100 101 114 105 116 32 112 114 111 105 100 101 110 116 32 99 117 108 112 97 32 110 111 110 32 109 105 110 105 109 46",
            imgPath: "NaN",
            help: "Esto parecen bytes en decimal...",
            contains: false),
        Challenge(
            solve: "casilotienes",
            text: "¿Qué valor imprime en pantalla?",
            imgPath: "assets/img_challenge/challenge4.png",
            help: "Ave",
            contains: false),
        Challenge(
            solve: "28",
            text:
                "¿Qué número corresponde para seguir la serie? 1, 3, 6, 10, 15, 21 …?",
            imgPath: "NaN",
            help: "Clásicos triangulares...",
            contains: false),
        Challenge(
            solve: "tarmogoyf",
            text: "¿Qué carta es 'frog anatomy'?",
            imgPath: "NaN",
            help: "Anal...",
            contains: false),
        Challenge(
            solve: "eStUCumPleaÑoSPedAz0d3G4!",
            text:
                "9EEADi^^>682]?K^7:=6^r_y((\$##R=de)z*eqEK8!B!@ff}22G:|Jtd+hcEc)f>KD!'%fsKc",
            imgPath: "NaN",
            help: "Quizás hay un link aquí...XOR... R...7",
            contains: false)
      ];
  }
}

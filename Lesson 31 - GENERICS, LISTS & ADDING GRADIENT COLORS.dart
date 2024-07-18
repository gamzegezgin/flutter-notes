Lesson 31- GENERICS, LISTS & ADDING GRADIENT COLORS

generic types are "flexible types" that "work together" with other types

*for example List<Color> colors, Color is data type

*here is an example 
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 158, 206, 86),
            Color.fromARGB(255, 169, 205, 117),
            Color.fromRGBO(184, 206, 152, 1),
          ])),

          
import Foundation


// Hoy vamos a entrar en el detalle real de Swift: operadores y condiciones. 
// Esto a veces puede hacer tropezar a la gente cuando están aprendiendo,
// porque como dijo una vez Joseph Campbell, "las computadoras son como los
// dioses del Antiguo Testamento: muchas reglas y sin piedad".

// Sin embargo, no te preocupes. Claro, si te equivocas en una condición, es
// posible que tu código no funcione al principio, pero no cuesta nada más que
// rascarse la cabeza arreglarlo e intentarlo de nuevo.

// Hoy tienes diez vídeos de un minuto para ver, y te encontrarás con cosas como
// la sobrecarga del operador, las declaraciones de cambio y más. Después de ver
// cada vídeo, puedes pasar por la lectura adicional opcional si quieres, y como
// siempre hay una breve prueba para asegurarte
// de que has entendido lo que se enseñó.



// ------- Operadores aritméticos ---------


// Ahora que conoces todos los tipos básicos en Swift, podemos empezar a juntarlos
// usando operadores. Los operadores son esos pequeños símbolos matemáticos
// como + y -, y Swift tiene una gran variedad de ellos.

// Aquí hay un par de variables de prueba con las que trabajar:

let firstScore = 12
let secondScore = 4

// Podemos sumar y restar usando + y -:

let total = firstScore + secondScore
let difference = firstScore - secondScore

// Y podemos multiplicar y dividir usando * y /:

let product = firstScore * secondScore
let divided = firstScore / secondScore

// Swift tiene un operador especial para calcular los restos después de la división:
// %. Calcula cuántas veces un número puede caber dentro de otro,
// y luego devuelve el valor que queda.

// Por ejemplo, establecemos secondScore en 4, por lo que si decimos 13 % secondScore,
// recuperaremos uno, porque 4 encaja en 13 tres veces con el resto uno:

let remainder = 13 % secondScore

// ---- ¿Por qué Swift no puede añadir un doble a un Int? ----

// Swift tiene una serie de formas de almacenar datos, como cadenas, booleanos y matrices.
// Pero cuando se trata de trabajar con números, tiene varios tipos muy específicos,
// incluyendo Double, Float e Int; hay muchos más que esos, pero son los más utilizados.

// Swift tiene una serie de formas de almacenar datos, como cadenas, booleanos y matrices.
// Pero cuando se trata de trabajar con números, tiene varios tipos muy específicos,
// incluyendo Double, Float e Int; hay muchos más que esos, pero son los más utilizados.

// Por lo tanto, en el nivel más simple, se puede ver que agregar un Doble a un Int no es
// seguro porque el Doble puede almacenar cosas que el Int no puede y eso se perdería en
// el entero resultante.

// Now, you might then think “well, how about when we add an Int to a Double we get back
// a new Double that can store all the data?” And that’s a great question!

// El problema es que, aunque Double utiliza la misma cantidad de memoria para almacenar
// su valor que Int, la forma en que almacena sus datos es un poco difusa: tiene una gran
// precisión con números más pequeños, pero una precisión cada vez más difusa cuando
// comienzas a trabajar con números grandes. De hecho, hay ciertos números que Double ni
// siquiera es capaz de contener, por lo que en su lugar almacena un valor
// ligeramente diferente.


// Útilmente, Swift incluso nos avisa cuando esto sucede. Por ejemplo, prueba este código:

let value: Double = 90000000000000001

// Cuando construyes eso, Swift muestra una advertencia: 9000000000000000001' no se puede
// representar exactamente como "Doble"; se convierte en "90000000000000000".

// Los enteros pierden la capacidad de almacenar valores fraccionarios, pero ganan la capacidad
// de almacenar valores precisos. Esto significa que el siguiente código no producirá una
// advertencia, porque el número se puede almacenar exactamente:

let value: Int = 90000000000000001

// Por lo tanto, no es seguro agregar un doble a un Int porque perdemos cualquier número después
// del punto decimal, y no es seguro agregar un Int a un doble porque perdemos cierta precisión.

// En este punto, una tercera pregunta podría venir a usted: ¿qué tal si Swift nos permite agregar
// un Int a un doble solo cuando está seguro de que el valor resultante se puede almacenar de forma
// segura? Después de todo, es muy raro que tengamos que
// trabajar con números tan grandes como 900000000000001.

// Y eso es cierto, pero el problema es que Swift no puede decir cuáles serán tus números cuando
// construyas tu código, por lo que volvemos al problema de la seguridad, claro, podrías estar
// trabajando con números seguros la mayor parte del tiempo, pero Swift está diseñado específicamente
// para no correr riesgos incluso cuando sucede lo inesperado.

// Como resultado de todo esto, Swift se negará a convertir automáticamente entre sus diversos tipos
// numéricos: no puedes añadir un Int y un Double, no puedes multiplicar
// un Float y un Int, y así suces.



// ---- ¿Por qué Swift tiene un operador de resto de división dedicado? ----

// Swift tiene un operador que nos permite calcular el resto después de una división.
// Esto a veces se llama módulo, pero si querías ser muy específico,
// no es exactamente lo mismo.

// En primer lugar, veamos por qué es útil. Si te dijera que faltan 465 días para un
// evento especial, ¿cómo mostrarías ese valor a un usuario de una manera más útil?

// Podrías empezar con un código como este:

let weeks = 465 / 7
print("There are \(weeks) weeks until the event.")

// Eso imprimirá que faltan 66 semanas para el evento, pero eso no es cierto. Cuando se enfrenta a dos
// enteros como este, Swift dividirá los dos y redondeará hacia cero para hacer un número entero.
// 465 dividido por 7 no es exactamente igual a 66, ¡así que la gente podría perderse su evento por completo!

// Su segundo intento podría decirle a Swift que use un Doble en lugar de un Int,
// por lo que obtenemos una respuesta más precisa:

let weeks: Double = 465 / 7
print("There are \(weeks) weeks until the event.")

// Pero ahora tenemos algo que es técnicamente correcto™, pero que en realidad no es tan útil: faltan
// 66.42857142857143 semanas para el evento.

// Aquí es donde entra en juego el operador restante:

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

// Por lo tanto, las semanas dividen 465 por 7 y rondas hacia 0, dando 66 semanas, luego los días utilizan
// el operador restante para calcular cuánto quedaba.

// El operador restante es muy útil y aparece mucho. Por ejemplo, muchas tablas de datos utilizan "rayas de
// cebra": alternan los colores de las filas para que sean más fáciles de leer.

// Consejo: Si tu objetivo es preguntar "¿este número se divide por igual en algún otro número?" Entonces
// Swift tiene un enfoque más fácil:

let number = 465
let isMultiple = number.isMultiple(of: 7)

// ---- Enlace de ejercicios  Operadores aritméticos ----

// https://www.hackingwithswift.com/review/arithmetic-operators




// ---- Sobrecarga del operador ----

// Swift es compatible con la sobrecarga del operador, que es una forma elegante de decir que lo que hace
// un operador depende de los valores con los que lo uses. Por ejemplo, + suma enteros como este:

let meaningOfLife = 42
let doubleMeaning = 42 + 42

// Pero + también une cuerdas, así:

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Recuerda, Swift es un lenguaje seguro para tipos, lo que significa que no te permite mezclar tipos.
// Por ejemplo, no puedes añadir un número entero a una cadena porque no tiene ningún sentido.


// ---- ¿Por qué Swift necesita sobrecargar al operador? ---

// La sobrecarga del operador permite que el mismo operador - +, *, /, y así suces - hacer cosas
// diferentes dependiendo de los datos con los que lo utilice. Esto nos permite usar estos símbolos
// en varios lugares donde tendrían sentido: podemos agregar dos enteros usando +, podemos agregar una
// cadena a otra usando +, podemos unir dos matrices usando +, etc.

// Por supuesto, esto no significa que podamos usar todos los operadores en cada lugar: podemos restar
// un entero de otro, pero ¿qué significaría restar una cadena de otra? ¿Se restaría del principio o del
// final? ¿Le restaría todas las instancias de la cuerda o solo una?

// Cuando sus habilidades crezcan, encontrará que puede crear sus propios operadores personalizados si lo
// desea, e incluso modificar los operadores existentes de Swift.


// ---- Operadores de asignación de compuestos ---

// Swift tiene operadores abreviados que combinan un operador con una asignación, por lo que puede cambiar
// una variable en su lugar. Estos se parecen a los operadores existentes que conoces - +, -, *, y /, pero
// tienen un = al final porque asignan el resultado a cualquier variable que estuvieras usando.

// Por ejemplo, si alguien obtuvo una puntuación de 95 en un examen pero necesita ser penalizado con 5
// puntos, podrías escribir esto:

var score = 95
score -= 5

// Del mismo modo, puedes añadir una cadena a otra usando +=:

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// ---- ¿Por qué Swift tiene operadores de asignación de compuestos? ----

//   Si quieres añadir 5 a una variable de puntuación, eres perfectamente capaz de escribir
//   puntuación = puntuación + 5 si quieres. Swift también nos permite escribir puntuación += 5 para obtener
//   el mismo resultado, pero ¿por qué?
//
//   Bueno, no es por razones de rendimiento: bajo el capó, Swift convierte la puntuación += 5 en
//   puntuación = puntuación + 5 como si lo tuviéramos escrito.
//
//   En cambio, solo están disponibles como una abreviatura: una forma más sencilla de escribir lo mismo.
//   Esto significa menos escritura para nosotros, menos código para leer y también menos posibilidades de
//   cometer errores, ¡una victoria por todas partes!


// ---- Operadores de comparación ----

// Swift tiene varios operadores que realizan comparaciones, y estos funcionan más o menos como cabría
// esperar en matemáticas.

// Comenzemos con un par de variables de ejemplo para que tengamos algo con lo que trabajar:

let firstScore = 6
let secondScore = 4

// Hay dos operadores que comprueban la igualdad: == comprueba que los dos valores son iguales,
// ¡y! = (pronunciado "no igual") comprueba que dos valores no son iguales:

firstScore == secondScore
firstScore != secondScore

// Hay cuatro operadores para comparar si un valor es mayor, menor o igual a otro.
// Estos son como en las matemáticas:

firstScore < secondScore
firstScore >= secondScore

// Cada uno de estos también funciona con cadenas, porque las cadenas tienen un orden alfabético natural:

"Taylor" <= "Swift"


// ---- Enlace de ejercicios  Sobrecarga del operador ----
// https://www.hackingwithswift.com/review/operator-overloading



// ---- Operadores de asignación de compuestos ----

// Swift tiene operadores abreviados que combinan un operador con una asignación, por lo que puede cambiar
// una variable en su lugar. Estos se parecen a los operadores existentes que conoces - +, -, *, y /, pero
// tienen un = al final porque asignan el resultado a cualquier variable que estuvieras usando.

// Por ejemplo, si alguien obtuvo una puntuación de 95 en un examen, pero necesita ser penalizado por 5
// puntos, podrías escribir esto

var score = 95
score -= 5

// Del mismo modo, puedes añadir una cadena a otra usando +=:

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// ---- ¿Por qué Swift tiene operadores de asignación de compuestos? ----

// Si quieres añadir 5 a una variable de puntuación, eres perfectamente capaz de escribir 
// puntuación = puntuación + 5 si quieres. Swift también nos permite escribir puntuación += 5 para obtener
// el mismo resultado, pero ¿por qué?

// Bueno, no es por razones de rendimiento: bajo el capó, Swift convierte la puntuación += 5 en 
// puntuación = puntuación + 5 como si lo tuviéramos escrito.

// En cambio, solo están disponibles como una abreviatura: una forma más sencilla de escribir lo mismo.
// Esto significa menos escritura para nosotros, menos código para leer y también menos posibilidades
// de cometer errores, ¡una victoria por todas partes!


// ---- Enlace de ejercicios Operadores de asignación de compuestos ----
// https://www.hackingwithswift.com/review/compound-assignment-operators






// ---- Operadores de comparación ----

// Swift tiene varios operadores que realizan comparaciones, y estos funcionan más o menos como cabría 
// esperar en matemáticas.

// Comenzemos con un par de variables de ejemplo para que tengamos algo con lo que trabajar:

let firstScore = 6
let secondScore = 4

// Hay dos operadores que comprueban la igualdad: == comprueba que los dos valores son iguales,
// ¡y! = (pronunciado "no igual") comprueba que dos valores no son iguales:

firstScore == secondScore
firstScore != secondScore

// Hay cuatro operadores para comparar si un valor es mayor, menor o igual a otro.
// Estos son como en las matemáticas:

firstScore < secondScore
firstScore >= secondScore

// Each of these also work with strings, because strings have a natural alphabetical order:

"Taylor" <= "Swift"


// ---- ¿Cómo nos permite Swift comparar muchos tipos de datos? ----

// Swift nos permite comparar muchos tipos de valores fuera de la caja, lo que significa que podemos
// comprobar una variedad de valores para la igualdad y la comparación. Por ejemplo,
// si tuviéramos valores como estos:

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

//Entonces podríamos compararlos de varias maneras:

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

// Detrás de escena, Swift implementa esto de una manera notablemente inteligente que en realidad le
// permite comparar una amplia variedad de cosas. Por ejemplo, Swift tiene un tipo especial para
// almacenar fechas llamado Fecha, y puede comparar fechas usando los mismos operadores:
// someDate < someOtherDate, por ejemplo.

// Incluso podemos pedirle a Swift que haga que nuestras enumeraciones sean comparables, así:

enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)

// Eso imprimirá "verdadero", porque lo pequeño viene antes que lo grande en la lista de casos de enumeración.

// ---- Enlace de ejercicios Operadores de comparación ----
// https://www.hackingwithswift.com/review/comparison-operators






// ---- Conditions ----

// Ahora conoces a algunos operadores que puedes escribir condiciones usando declaraciones if. Le das a Swift
// una condición, y si esa condición es cierta, ejecutará el código de tu elección.

// Para probar esto, quiero usar una función Swift llamada print(): la ejecutas con algo de texto y se imprimirá.

// Podemos usar las condiciones para comprobar si hay una mano ganadora de Blackjack:

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}

// El código dentro de las llaves - { y } - se ejecutará si la condición es verdadera. Si lo desea, puede
// proporcionar un código alternativo para ejecutar si la condición es falsa, usando else:

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// También puedes encadenar condiciones usando otras cosas si:

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


// ----- ¿Cuál es la diferencia entre si y si? ----

// Cuando solo estás aprendiendo Swift, puede ser un poco difícil saber cuándo usar otra cosa, cuándo
// usar otra cosa si y cuál es realmente la diferencia.

// Bueno, comencemos con un valor de ejemplo con el que podemos trabajar:

let score = 9001

// (En caso de que te lo preguntes, sí, esto significa que confiaremos en el meme de Dragonball Z).

// Podríamos escribir una condición simple para comprobar si la puntuación es superior a 9000 de esta manera:

if score > 9000 {
    print("It's over 9000!")
}

// Ahora, si queremos imprimir un mensaje diferente para puntuaciones iguales o inferiores a 9000,
// podríamos escribir esto:

if score > 9000 {
    print("It's over 9000!")
}

if score <= 9000 {
    print("It's not over 9000!")
}

// Eso funciona perfectamente, y tu código haría exactamente lo que esperas. Pero ahora le hemos dado a Swift
// más trabajo que hacer: necesita comprobar el valor de la puntuación dos veces. Eso es muy rápido aquí con
// un número entero simple, pero si nuestros datos fueran más complejos, serían más lentos.

// Aquí es donde entra otra cosa, porque significa "si la condición que comprobamos no era verdadera, ejecute
// este código en su lugar".

// Por lo tanto, podríamos reescribir nuestro código anterior en esto:

if score > 9000 {
    print("It's over 9000!")
} else {
    print("It's not over 9000!")
}

// Con ese cambio, Swift solo comprobará la puntuación una vez, además de que nuestro código también es más
// corto y más fácil de leer.

// Ahora imagina que queríamos tres mensajes: uno cuando la puntuación es más de 9000, uno cuando exactamente
// 9000, y uno cuando está por debajo de 9000. Podríamos escribir esto:

if score > 9000 {
    print("It's over 9000!")
} else {
    if score == 9000 {
        print("It's exactly 9000!")
    } else {
        print("It's not over 9000!")
    }
}

// Una vez más, eso está exactamente bien y funciona como esperarías. Sin embargo, podemos hacer que el código
// sea más fácil de leer usando else if, lo que nos permite combinar el else con el if directamente
// después de él, así:

if score > 9000 {
    print("It's over 9000!")
} else if score == 9000 {
    print("It's exactly 9000!")
} else {
    print("It's not over 9000!")
}

// Para probar esto, quiero usar una función Swift llamada print(): la ejecutas con algo de texto y se imprimirá.

// Eso hace que nuestro código sea un poco más fácil de leer y entender, porque en lugar de tener condiciones
// anidadas, tenemos un solo flujo que podemos leer.

// Puedes tener tantos cheques como quieras, pero necesitas exactamente uno si y cero o uno más.


// ---- Enlace de ejercicios Conditions ----
// https://www.hackingwithswift.com/review/conditions






// ------ Combinación de condiciones ------

// Swift tiene dos operadores especiales que nos permiten combinar las condiciones: son && (pronunciado "y")
// y || (pronunciado "o").

// Por ejemplo, podríamos comprobar que la edad de dos personas esté por encima de un cierto valor como este:

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

// Esa llamada print() solo ocurrirá si ambas edades son mayores de 18 años, lo cual no es así. De hecho, 
// Swift ni siquiera se molestará en comprobar el valor de la edad 2 porque puede ver que la
// edad 1 ya no pasó la prueba.

// La alternativa a && es ||, que se evalúa como verdadero si cualquiera de los elementos pasa la prueba.
// Por ejemplo, podríamos imprimir un mensaje si cualquiera de las edades es mayor de 18 años:

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

// Puedes usar && y || más de una vez en una sola condición, ¡pero no compliques las cosas demasiado,
// de lo contrario puede ser difícil de leer!


// ---- Cómo comprobar múltiples condiciones ----

// Swift nos da && y || para comprobar múltiples condiciones al mismo tiempo, y cuando se usan con solo dos
// condiciones, son bastante sencillas.

// Por ejemplo, imagina que estábamos ejecutando un foro donde los usuarios podían publicar mensajes y eliminar
// cualquier mensaje que poseyeran. Podríamos escribir un código como este:

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

// Donde las cosas se vuelven más confusas es cuando queremos comprobar varias cosas. Por ejemplo, podríamos
// decir que los usuarios habituales solo pueden eliminar mensajes que les permitimos, pero los administradores
// siempre pueden eliminar publicaciones. Podríamos escribir un código como este:

if isOwner == true && isEditingEnabled || isAdmin == true {
    print("You can delete this post")
}

// Pero, ¿qué es lo que está tratando de comprobar? ¿En qué orden se ejecutan los cheques && y ||?
// Podría significar esto:

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}

// Eso dice "si somos el propietario y la edición está habilitada, puedes eliminar la publicación, o si eres un
// administrador, puedes eliminar la publicación incluso si no la posees". Eso tiene sentido:
// la gente puede eliminar sus propias publicaciones si se permite la edición, pero los administradores siempre
// pueden eliminar publicaciones.

// Sin embargo, también podrías leerlo así:

if isOwner == true && (isEditingEnabled || isAdmin == true) {
    print("You can delete this post")
}

// Y ahora significa algo bastante diferente: "si eres el propietario de la publicación, y la edición está
// habilitada o eres el administrador, entonces puedes eliminar la publicación". Esto significa que los
// administradores no pueden eliminar publicaciones que no poseen, lo que no tendría sentido.

// Obviamente, a Swift no le gusta la ambigüedad como esta, por lo que siempre interpretará el código como
// si habiéramos escrito esto:

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}

// Sin embargo, honestamente, no es una buena experiencia dejar esto a Swift para que lo averigüe, por lo
// que podemos insertar los paréntesis nosotros mismos para aclarar exactamente lo que queremos decir.

// No hay un consejo específico sobre esto, pero de manera realista, cada vez que mezclas && y || en una
// sola condición, es casi seguro que deberías usar paréntesis para dejar claro el resultado.


// ---- Enlace de ejercicios Combinación de condiciones ----
// https://www.hackingwithswift.com/review/combining-conditions





// ----- El operador ternario ----

// Swift tiene un operador que rara vez se usa llamado operador ternario. Funciona con tres valores a la vez,
// que es de donde proviene su nombre: comprueba una condición especificada en el primer valor, y si es verdadero,
// devuelve el segundo valor, pero si es falso, devuelve el tercer valor.

// El operador ternario es una condición más bloques verdaderos o falsos todo en uno, divididos por un signo de
// interrogación y dos puntos, lo que hace que sea bastante difícil de leer. He aquí un ejemplo:

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// Eso comprueba si las dos tarjetas son iguales, luego imprime "Las tarjetas son las mismas" si la condición
// es verdadera, o "Las tarjetas son diferentes" si es falsa. Podríamos escribir el mismo
// código usando una condición regular:

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// ----- ¿Cuándo deberías usar el operador ternario en Swift? -----

// El operador ternario nos permite elegir entre uno de los dos resultados basados en una condición, y lo hace
// de una manera muy concisa:

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

// Algunas personas dependen en gran medida del operador ternario porque hace que el código sea muy corto, 
// mientras que algunos se mantienen alejados de él tanto como sea posible porque puede hacer que el
// código sea más difícil de leer.

// Estoy muy en el campamento de "evitar siempre que sea posible" porque a pesar de que este código es más largo,
// me resulta más fácil de seguir:

if isAuthenticated {
    print("Welcome")
} else {
    print("Who are you?")
}

// Ahora, hay un momento en el que el operador ternario se usa mucho y es con SwiftUI. No quiero dar ejemplos de
// código aquí porque puede ser un poco abrumador, pero realmente puedes ir a la ciudad con el operador de ternario
// allí si quieres. Incluso entonces, prefiero eliminarlos cuando sea posible, para que mi código sea más fácil de
// leer, pero deberías probarlo por ti mismo y llegar a tus propias conclusiones.


// ---- Enlace de ejercicios El operador ternario ----
// https://www.hackingwithswift.com/review/the-ternary-operator




// ----- Switch statements -----

// Si tiene varias condiciones usando if y else if, a menudo es más claro usar una construcción diferente conocida
// como caso de cambio. Usando este enfoque, escribes tu condición una vez, luego enumeras todos los resultados
// posibles y lo que debería suceder para cada uno de ellos.

// Para probar esto, aquí hay una constante meteorológica que contiene la cadena soleada:

let weather = "sunny"

// Podemos usar un bloque de interruptor para imprimir uno de cuatro mensajes diferentes:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// En ese ejemplo, el último caso, por defecto, es necesario porque Swift se asegura de cubrir todos los casos
// posibles para que no se pierda ninguna eventualidad. Si el clima es algo que no sea lluvia, nieve o sol,
// se ejecutará el caso predeterminado.

// Swift solo ejecutará el código dentro de cada caso. Si desea que la ejecución continúe con el siguiente caso,
// utilice la palabra clave fallthrough de esta manera:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


// ----- ¿Cuándo deberías usar las declaraciones de interruptor en lugar de si? -----

// Los desarrolladores de Swift pueden usar tanto switch como if para comprobar múltiples valores en su código,
// y a menudo no hay una razón difícil por la que deberías elegir uno en lugar del otro. Dicho esto, hay tres
// razones por las que podrías considerar el uso de switch en lugar de si:

// Swift requiere que sus declaraciones de cambio sean exhaustivas, lo que significa que debe tener un bloque
// de casos para cada valor posible a verificar (por ejemplo, todos los casos de una enumeración) o debe tener
// un caso predeterminado. Esto no es cierto para si y si, por lo que podrías perderte accidentalmente un caso.

// Cuando usas el interruptor para comprobar un valor para obtener múltiples resultados posibles, ese valor solo
// se leerá una vez, mientras que si lo usas, se leerá varias veces. Esto se vuelve más importante cuando empiezas
// a usar llamadas de función, porque algunas de ellas pueden ser lentas.

// Los casos de cambio de Swift permiten una coincidencia de patrones avanzada que es difícil de manejar con if.

// Hay una situación más, pero es un poco más difusa: en términos generales, si quieres comprobar el mismo valor
// para tres o más estados posibles, encontrarás que la gente prefiere usar el interruptor en lugar de si para
// fines de legibilidad, si nada más, se hace más claro que estamos comprobando el mismo valor repetidamente,
// en lugar de escribir condiciones diferentes.

// PD: He cubierto la palabra clave fallthrough porque es importante para la gente que viene de otros lenguajes
// de programación, pero es bastante raro verla usada en Swift. No te preocupes si estás luchando por pensar en
// escenarios en los que podría ser útil, ¡porque honestamente la mayoría de las veces no lo es!


// ---- Enlace de ejercicios Switch statements ----
// https://www.hackingwithswift.com/review/switch-statements



// ----- Operadores de rango -----

// Swift nos da dos formas de hacer rangos: los operadores ..< y .... El operador de rango medio abierto, ..<,
// crea rangos hasta pero excluyendo el valor final, y el operador de rango cerrado, ..., crea rangos hasta e
// incluyendo el valor final.

// Por ejemplo, el rango 1..<5 contiene los números 1, 2, 3 y 4, mientras que el rango 1...5 contiene los
// números 1, 2, 3, 4 y 5.

// Los rangos son útiles con los bloques de interruptores, porque puedes usarlos para cada uno de tus casos.
// Por ejemplo, si alguien asiste a un examen, podríamos imprimir diferentes mensajes dependiendo de su puntuación:

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// Como antes, el caso predeterminado debe estar allí para garantizar que todos los
// valores posibles estén cubiertos.


// ----- ¿Por qué Swift tiene dos operadores de rango? -----

// Cuando pensamos en rangos de valores, el inglés es bastante confuso. Si digo "dame las cifras de ventas
// hasta ayer", ¿significa eso incluir ayer o excluir ayer? Ambos son útiles por derecho propio, por lo que
// Swift nos da una forma de representarlos a ambos: ..< es el rango medio abierto que especifica "hasta pero
// excluyendo" y ... es el operador de rango cerrado que especifica "hasta e incluyendo".

// Para facilitar la distinción al hablar, Swift utiliza regularmente un lenguaje muy específico: "1 a 5"
// significa 1, 2, 3 y 4, pero "1 a 5" significa 1, 2, 3, 4 y 5. Si recuerdas, las matrices de Swift comienzan
// en el índice 0, lo que significa que una matriz que contiene tres elementos tiene elementos en los índices
// 0, 1 y 2, un caso de uso perfecto para el operador de rango medio abierto.

// Las cosas se ponen más interesantes cuando solo quieres una parte de un rango, como "cualquier cosa desde
// 0 hacia arriba" o "índice 5 hasta el final de la matriz". Verás, estos son bastante útiles en la programación,
// por lo que Swift los hace más fáciles de crear al permitirnos especificar solo una parte de un rango.
// Por ejemplo, si tuviéramos una variedad de nombres como este:

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

// Podríamos leer un nombre individual como este:

print(names[0])

// Con los rangos, también podemos imprimir un rango de valores como este:

print(names[1...3])

// Sin embargo, eso conlleva un pequeño riesgo: si nuestra matriz no contudiera al menos cuatro elementos,
// entonces 1...3 fallaría. Afortunadamente, podemos usar un rango unilateral para decir
// "dame 1 hasta el final de la matriz", así:

print(names[1...])

// Por lo tanto, los rangos son excelentes para contar a través de valores específicos, pero también son
// útiles para leer grupos de elementos de matrices.

// ---- Enlace de ejercicios Switch statements ----
// https://www.hackingwithswift.com/review/range-operators




// ---- Resumen de operadores y condiciones ----

// Has llegado al final de la tercera parte de esta serie, así que resumamos:

// Swift tiene operadores para hacer aritmética y para comparar; en su mayoría funcionan como ya sabes.

// Hay variantes compuestas de operadores aritméticos que modifican sus variables en su lugar: +=, -=, etc.

// Puedes usar if, else y else if para ejecutar código basado en el resultado de una condición.

// Swift tiene un operador ternario que combina una comprobación con bloques de código verdadero y falso.
// Aunque puede que lo veas en otro código, no recomendaría usarlo tú mismo.

// Si tiene varias condiciones que utilizan el mismo valor, a menudo es más claro usar el interruptor en su lugar.

// Puedes hacer rangos usando .... y ... dependiendo de si el último número debe excluirse o incluirse.


// ---- Enlace de ejercicios Resumen de operadores y condiciones ----
// https://www.hackingwithswift.com/review/operators-and-conditions-summary



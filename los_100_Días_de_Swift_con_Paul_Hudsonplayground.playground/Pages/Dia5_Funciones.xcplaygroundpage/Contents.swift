import Foundation


// ----- Funciones -----

// Las funciones nos permiten envolver piezas de código para que se puedan usar en muchos lugares.
// Podemos enviar datos a funciones para personalizar cómo funcionan y recuperar datos que nos
// indiquen el resultado que se calculó.

// Lo creas o no, las llamadas a las funciones solían ser muy lentas. Steve Johnson, el autor de
// muchas de las primeras herramientas de codificación para el sistema operativo Unix, dijo esto:

// "Dennis Ritchie (el creador del lenguaje de programación C) alentó la modularidad diciéndole a
// todos y varios que las llamadas de función eran muy, muy baratas en C. Todo el mundo empezó a
// escribir pequeñas funciones y a modularizar. Años más tarde descubrimos que las llamadas a
// funciones todavía eran caras, y nuestro código a menudo pasaba el 50 % de su tiempo solo
// llamándolas. ¡Dennis nos había mentido! Pero era demasiado tarde; todos estábamos enganchados..."

// Hoy tienes 11 vídeos de un minuto para ver, y te encontrarás con cosas como funciones variadas,
// errores de lanzamiento y más. Una vez que hayas visto cada vídeo y, opcionalmente, hayas pasado
// por la lectura adicional, hay una breve prueba para asegurarte
// de que has entendido lo que se enseñó.


// ----- Funciones de escritura -----

// Las funciones nos permiten reutilizar el código, lo que significa que podemos escribir una función
// para hacer algo interesante y luego ejecutar esa función desde muchos lugares. Repetir código es
// generalmente una mala idea, y las funciones nos ayudan a evitar hacerlo.

// Para empezar, vamos a escribir una función que imprima información de ayuda para los usuarios de
// nuestra aplicación. Es posible que necesitemos esto en cualquier lugar de nuestra aplicación, por
// lo que tenerla como una función es una buena idea.

// Las funciones Swift comienzan con la palabra clave func, luego con el nombre de tu función y luego
// abre y cierra los paréntesis. Todo el cuerpo de su función, el código que se debe ejecutar cuando
// se solicita la función, se coloca dentro de llaves.

// Escribamos la función printHelp() ahora:

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

// Ahora podemos ejecutar eso usando printHelp() por sí mismo:

printHelp()

// La ejecución de una función a menudo se conoce como llamar a una función.



// ---- ¿Qué código se debe poner en una función? ----

// Las funciones están diseñadas para que podamos reutilizar el código fácilmente, lo que significa
// que no tenemos que copiar y pegar código para obtener comportamientos comunes. Podrías usarlos muy
// raramente si quisieras, pero honestamente no tiene sentido: son herramientas maravillosas para
// ayudarnos a escribir un código más claro y flexible.

// Hay tres veces que querrás crear tus propias funciones:

// El momento más común es cuando quieres la misma funcionalidad en muchos lugares. El uso de una
// función aquí significa que puede cambiar una pieza de código y tener en todas partes que use
// su función se actualice.

// Las funciones también son útiles para romper el código. Si tienes una función larga, puede ser
// difícil seguir todo lo que está sucediendo, pero si la divides en tres o cuatro funciones más
// pequeñas, entonces se vuelve más fácil de seguir.

// La última razón es más avanzada: Swift nos permite construir nuevas funciones a función de las
// funciones existentes, que es una técnica llamada composición de funciones. Al dividir su trabajo
// en múltiples funciones pequeñas, la composición de funciones nos permite construir grandes
// funciones combinando esas pequeñas funciones de varias maneras, un poco como los ladrillos de Lego.


// ---- Enlace de ejercicios Funciones ----
// https://www.hackingwithswift.com/review/writing-functions




// ----- Aceptando parámetros -----

// Las funciones se vuelven más potentes cuando se pueden personalizar cada vez que las ejecutas.
// Swift le permite enviar valores a una función que luego se puede usar dentro de la función para
// cambiar la forma en que se comporta. Ya hemos usado esto: hemos estado enviando cadenas y enteros
// a la función print(), así:

print("Hello, world!")

// Los valores enviados a las funciones de esta manera se llaman parámetros.

// Para hacer que sus propias funciones acepten parámetros, dé a cada parámetro un nombre, luego dos
// puntos y luego dígale a Swift el tipo de datos que debe ser. Todo esto va dentro de los paréntesis
// después del nombre de tu función.

//Por ejemplo, podemos escribir una función para imprimir el cuadrado de cualquier número:

func square(number: Int) {
    print(number * number)
}

// Eso le dice a Swift que esperamos recibir un Int, y debería llamarse número. Este nombre se utiliza
// tanto dentro de la función cuando se desea hacer referencia al parámetro, como cuando
// se ejecuta la función, así:

square(number: 8)



// ------ ¿Cuántos parámetros debe aceptar una función? ------

// A primera vista, esta pregunta parece "¿cuánto dura un trozo de cuerda?" Es decir, es algo en lo que
// no hay una respuesta real y difícil: una función podría tomar ningún parámetro o tomar 20 de ellos.

// Eso es ciertamente cierto, pero cuando una función toma muchos parámetros, tal vez seis o más, pero
// esto es extremadamente subjetivo, tienes que empezar a preguntarte si esa función tal vez esté
// haciendo demasiado trabajo.

// ¿Necesita esos seis parámetros?

// ¿Podría dividirse esa función en funciones más pequeñas que tomen menos parámetros?

// ¿Deberían agruparse esos parámetros de alguna manera?

// Examinaremos algunas técnicas para resolver esto más adelante, pero hay una lección importante que
// aprender aquí: esto se llama un "olor a código", algo sobre nuestro código que sugiere un problema
// subyacente en la forma en que hemos estructurado nuestro programa.


// ---- Enlace de ejercicios Aceptando parámetros ----
// https://www.hackingwithswift.com/review/accepting-parameters



// ----- Valores de retorno ----

// Además de recibir datos, las funciones también pueden devolver datos. Para hacer esto, escriba un
// guión y luego un corchete en ángulo recto después de la lista de parámetros de su función, y luego
// dígale a Swift qué tipo de datos se devolverán.

// Dentro de su función, utiliza la palabra clave return para devolver un valor si tiene uno.
// Su función se cierra inmediatamente, enviando de vuelta ese valor: no se ejecutará ningún otro código
// de esa función.

// Podríamos reescribir nuestra función square() para devolver un valor en lugar de imprimirlo directamente:

func square(number: Int) -> Int {
    return number * number
}

// Ahora podemos tomar ese valor de retorno cuando se ejecuta la función e imprimirlo allí:

let result = square(number: 8)
print(result)

// Si necesita devolver varios valores, este es un ejemplo perfecto de cuándo usar tuplas.



// ----- ¿Cuándo no se necesita la palabra clave return en una función Swift? -----

// Utilizamos la palabra clave return para devolver valores de las funciones en Swift, pero hay un caso 
// específico en el que no es necesario: cuando nuestra función contiene una sola expresión.

// Ahora, "expresión" no es una palabra que uso a menudo, pero es importante entenderla aquí.
// Cuando escribimos programas hacemos cosas como esta:

5 + 8

// O esto:

greet("Paul")

// Estas líneas de código se resuelven a un solo valor: 5 + 8 se resuelve a 13, y greet ("Paul") podría
// devolver una cadena "¡Hola, Paul!"

// Incluso un código más largo se resolverá en un solo valor. Por ejemplo, si tuviéramos tres constantes
// booleanas como esta:

let isAdmin = true
let isOwner = false
let isEditingEnabled = false

// Entonces esta línea de código se resolvería en un solo valor:

isOwner == true && isEditingEnabled || isAdmin == true

// Eso se convertiría en "verdadero", porque a pesar de que isOwner es falso, isAdmin es verdadero, 
// por lo que toda la expresión se vuelve verdadera.

// Por lo tanto, mucho código que escribimos se puede resolver en un solo valor. Pero también hay mucho
// código que no se puede resolver en un solo valor. Por ejemplo, ¿cuál es el valor aquí?

let name = "Otis"

// Sí, eso crea una constante, pero no se convierte en un valor en sí mismo, no podríamos escribir el retorno
// let name = "Otis".

// Del mismo modo, escribimos condiciones como esta:

if name == "Maeve" {
    print("Hello, Maeve!")
}

// Eso tampoco puede convertirse en un solo valor, porque tiene una condición ahí.

// Ahora, todo esto importa porque estas divisiones tienen nombres: cuando nuestro código se puede reducir
// a un solo valor, como verdadero, falso, "Hola" o 19, lo llamamos una expresión. Las expresiones son
// cosas que se pueden asignar a una variable o imprimir usando print(). Por otro lado,
// cuando estamos realizando acciones como crear variables, iniciar un bucle o comprobar una condición,
// entonces lo llamamos una declaración.

// Todo esto importa porque Swift nos permite omitir el uso de la palabra clave return cuando solo
// tenemos una expresión en nuestra función. Por lo tanto, estas dos funciones hacen lo mismo:

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

// Recuerda, la expresión dentro de allí puede ser todo el tiempo que quieras, pero no puede contener
// ninguna declaración: sin bucles, sin condiciones, sin nuevas variables, y así suceder.

// Ahora, podrías pensar que esto no tiene sentido, y siempre usarías la palabra clave return.
// Sin embargo, esta funcionalidad se usa muy comúnmente con SwiftUI, por lo que vale
// la pena tenerla en cuenta.

// Antes de que terminemos, quiero mencionar una cosa más. Has visto cómo podemos usar operadores como
// +, && y || en nuestras expresiones, porque todavía se resuelven en un solo valor. Bueno, el operador
// ternario también funciona aquí, y de hecho este es el caso de uso principal para ello: cuando quieres
// tener una sola expresión, pero no quieres tener un if completo.

//Para demostrar esto, considere la siguiente función:

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

// Si quisiéramos eliminar las declaraciones de devolución allí, no podríamos escribir esto:

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
}

// Eso no está permitido, porque tenemos declaraciones reales allí, si y de lo contrario.

// Sin embargo, podríamos usar el operador ternario de esta manera:

func greet(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

// Esa es una sola expresión. Si el nombre es igual a "Taylor Swift", entonces resolverá algo como esto:

// Swift comprobará si el nombre es Taylor Swift o no.

// Lo es, así que el nombre == "Taylor Swift" es cierto.

// El operador ternario se dará cuenta de que su condición ahora es verdadera, por lo que elegirá
// "Oh wow" en lugar de "Hola, (nombre)".

// Por lo tanto, cuando esa función se ejecuta, se reduce efectivamente a esto:

func greet(name: String) -> String {
    "Oh wow!"
}

// Dejar que pongamos la funcionalidad condicional en una sola línea de código es donde el operador
// ternario realmente brilla. Y, debido a que SwiftUI utiliza bastante las funciones de expresión única,
// esto significa que los operadores ternarios también se utilizan bastante en SwiftUI.




// ---- ¿Cómo se pueden devolver dos o más valores de una función? ----

// Las funciones de Swift tienen un solo tipo de retorno, como Int o String, pero eso no significa que
// solo podamos devolver un solo valor. De hecho, hay dos formas de devolver varios datos:

// Usando una tupla, como (nombre: Cadena, edad: Int)

// Usando algún tipo de colección, como una matriz o un diccionario.

// Si te costó entender por qué las tuplas eran importantes, este es un muy buen ejemplo de un lugar
// donde realmente se destacan.

//Si quisiéramos hacer una función que devuelva el nombre y el apellido de una persona, podríamos hacerlo así:

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

// Eso devuelve una matriz que contiene dos cadenas y la almacena en el usuario, que hace el trabajo.
// Sin embargo, el código es problemático por dos razones:

// Algunas culturas escriben sus apellidos primero ("Swift Taylor"), por lo que es posible que otros
// desarrolladores esperen que el índice 0 sea el apellido y que el índice 1 sea el primer nombre.

// ¿Qué pasa si insertamos un segundo nombre? Volvería a empujar "Swift" del índice 1 al índice 2,
// causando problemas.

// Un segundo paso en la función podría verse así:

func getUser() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

let user = getUser()
print(user["first"])

// Eso es definitivamente mejor, porque ahora podemos estar seguros de dónde encontrar
// exactamente cada valor: user["first"] siempre será "Taylor" sin importar si cambiamos
// el orden del diccionario o si insertamos un segundo nombre.

// Sin embargo, esta solución aún no es la ideal:

// Tenemos que buscar valores usando cadenas, lo que significa que el usuario ["Primero"]
// fallará porque escribimos "Primero" en lugar de "primero".

// Nuestro diccionario podría no contener ningún valor, tal vez nuestro usuario era Prince,
// Plato, Beyonce o alguien más que tiene un solo nombre.

// Cada vez que leemos un valor del diccionario, necesitamos desenvolver el opcional, porque
// Swift no puede estar seguro de que el valor esté definitivamente ahí.

// Las tuplas pueden resolver el problema permitiéndonos ser específicos sobre qué datos volverán:
// su nombre, su tipo, su orden y si es opcional o no.
// Esto significa que podemos escribir funciones para devolver múltiples valores de forma mucho más segura:

func getUser() -> (first: String, last: String) {
    (first: "Taylor", last: "Swift")
}

let user = getUser()
print(user.first)

// Ahora hemos escrito un código que es inmune a todos nuestros problemas:

// Nuestros datos deben ser devueltos el primer nombre y el apellido segundo.

// Si insertamos un segundo nombre, no afectará a la posición de otros valores.

// No podemos cometer errores que se distinguan entre mayúsculas y minúsculas al leer valores.

// No hay manera de que no obtengamos un nombre o apellido; si alguien solo usa un nombre,
// entonces recuperaremos una cadena vacía.

// No hay opción.

// Por lo tanto, las tuplas son candidatos fantásticos para devolver múltiples valores de las funciones.


// ---- Enlace de ejercicios Valores de retorno ----
// https://www.hackingwithswift.com/review/returning-values



// ----- Etiquetas de parámetros -----

// Escribimos nuestra función square() de esta manera:

func square(number: Int) -> Int {
    return number * number
}

// Eso nombra su número de parámetro, por lo que podemos usar el número dentro de la función para
// hacer referencia a él, pero también debemos usar el nombre al ejecutar la función, así:

let result = square(number: 8)

// Swift nos permite proporcionar dos nombres para cada parámetro: uno para ser utilizado
// externamente al llamar a la función, y otro para ser utilizado internamente dentro de la función.
// Esto es tan simple como escribir dos nombres, separados por un espacio.

// Para demostrar esto, aquí hay una función que utiliza dos nombres para su parámetro de cadena:

func sayHello(to name: String) {
    print("Hello, \(name)!")
}

// El parámetro se llama a nombre, lo que significa que externamente se llama a, pero internamente
// se llama nombre. Esto le da a las variables un nombre sensato dentro de la función, pero significa
// que llamar a la función se lee de forma natural:

sayHello(to: "Taylor")



// ---- ¿Por qué Swift usa etiquetas de parámetros? ----

// Muchos lenguajes de programación no utilizan etiquetas de parámetros o las hacen opcionales.
// Swift es inusual en el sentido de que los usa ampliamente, e incluso nos permite diferenciar
// entre nombres de parámetros externos y nombres de parámetros internos, ¡es doblemente inusual!

// Para ver por qué las etiquetas son útiles, considere un código como este:

setReactorStatus(true, true, false)

// Ese es un código perfectamente normal en muchos idiomas, pero rara vez lo verás en Swift porque
// preferimos dar nombres a nuestros parámetros. Por lo tanto, escribiríamos nuestra función de esta manera:

func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
    // code here
}

// Como resultado, Swift requerirá que se utilicen esos booleanos al llamar a la función, así:

setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)

// Y ahora nuestro código se vuelve mucho más claro: sabemos exactamente lo que hace cada valor cuando 
// llamamos a la función, en lugar de tener que recordar si la emergencia es lo primero o el último.

// Por supuesto, Swift lleva esto aún más lejos al permitirnos escribir nuestras etiquetas dos veces, así:

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}

// Esto resuelve dos problemas a la vez: hace que esas etiquetas sean más significativas dentro de la
// función, y también hace que esas etiquetas sean más significativas fuera de la función.

// Para demostrar esto, así es como se llama a la función en este momento:

setAge(for: "Paul", to: 40)

// Si solo huéramos usado las etiquetas de persona y valor, tendríamos que escribir esto en su lugar:

setAge(person: "Paul", value: 40)

// Espero que puedas ver que el código original se puede leer en voz alta como una declaración estándar
// en inglés: "establecer la edad de Paul en 40 años". Por otro lado, "establecer la edad de la persona
// Paul valora 40" no es natural en absoluto.

// Yendo hacia otro lado, si huéramos usado solo las etiquetas para y para, entonces llamar a la función
// se vería natural, pero usar esos valores dentro de la función sería raro:

/*
func setAge(for: String, to: Int) {
    print("\(for) is now \(to)")
}
*/

// ¡ De hecho, Swift ni siquiera lo permitiría porque pensará for es el comienzo de un bucle!

// Al tener las etiquetas internas y externas, nuestras funciones se leen de forma más natural tanto
// donde las llamamos como dentro de la propia función. No son obligatorios, y a menudo solo tendrás
// una etiqueta para tus parámetros, pero aún así es bueno tenerlos cerca.



// ---- Enlace de ejercicios Etiquetas de parámetros ----
// https://www.hackingwithswift.com/review/parameter-labels



// ---- Omisión de etiquetas de parámetros ----

// Es posible que hayas notado que en realidad no enviamos ningún nombre de parámetro cuando llamamos
// a print() - decimos print("Hola") en lugar de print(mensaje: "Hola").

// Puede obtener este mismo comportamiento en sus propias funciones usando un guión bajo, _, para el
// nombre de su parámetro externo, de esta manera:

func greet(_ person: String) {
    print("Hello, \(person)!")
}

// Ahora puedes llamar a greet() sin tener que usar el nombre del parámetro de la persona:

greet("Taylor")

// Esto puede hacer que algo de código sea más natural de leer, pero generalmente es mejor dar a sus
// parámetros nombres externos para evitar confusiones. Por ejemplo, si digo setAlarm(5) es difícil
// saber lo que eso significa: ¿establesce una alarma para las cinco en punto, establece una alarma
// para cinco horas a partir de ahora o activa la alarma preconfigurada número 5?

// ----- ¿Cuándo deberías omitir una etiqueta de parámetro? -----

// Si usamos un guión bajo para la etiqueta externa de un parámetro de función, Swift no nos permite
// usar ningún nombre para ese parámetro. Esta es una práctica muy común
// en algunas partes del desarrollo

// de Swift, particularmente cuando se crean aplicaciones que no usan SwiftUI, pero hay muchas otras
// ocasiones en las que también querrás usar esto.

// La razón principal para omitir el nombre de un parámetro es cuando el nombre de su función es un 
// verbo y el primer parámetro es un sustantivo sobre el que actúa el verbo. Por ejemplo:

// Saludar a una persona sería saludar (taylor) en lugar de saludar (persona: taylor)

// Comprar un producto sería comprar (cepillo de dientes) en lugar de comprar (artículo:
// cepillo de dientes)

// Encontrar un cliente sería encontrar (cliente) en lugar de encontrar (usuario: cliente)

// Esto es particularmente importante cuando es probable que la etiqueta de parámetros sea
// la misma que el nombre de lo que sea que estés pasando:

// Cantar una canción sería cantar (canción) en lugar de cantar (canción: canción)

// Habilitar una alarma sería habilitar (alarma) en lugar de habilitar (alarma: alarma)

// Leer un libro se leería (libro) en lugar de leer (libro: libro)

// Antes de que llegara SwiftUI, las aplicaciones se creaban utilizando los marcos UIKit, AppKit
// y WatchKit de Apple, que se diseñaron utilizando un lenguaje más antiguo llamado Objective-C.
// En ese lenguaje, el primer parámetro de una función siempre se dejó sin nombre, por lo que
// cuando uses esos marcos en Swift verás muchas funciones que tienen guiones bajos para su primera
// etiqueta de parámetro para preservar la interoperabilidad con Objective-C.

// ---- Enlace de ejercicios Etiquetas de parámetros ----
// https://www.hackingwithswift.com/review/omitting-parameter-labels



// ----- Parámetros predeterminados -----

//7La función print() imprime algo en la pantalla, pero siempre añade una nueva línea al final de lo
// que haya impreso, para que no aparezcan todas las múltiples llamadas a print() en la misma línea.

// Puedes cambiar ese comportamiento si quieres, por lo que puedes usar espacios en lugar de saltos
// de línea. Sin embargo, la mayoría de las veces, la gente quiere nuevas líneas, por lo que print()
// tiene un parámetro terminador que utiliza una nueva línea como su valor predeterminado.

// Puedes dar a tus propios parámetros un valor predeterminado simplemente escribiendo un = después de
// su tipo seguido del valor predeterminado que quieres darle. Por lo tanto, podríamos escribir una
// función greet() que pueda imprimir opcionalmente buenos saludos:

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

// Eso se puede llamar de dos maneras:

greet("Taylor")
greet("Taylor", nicely: false)



// ---- Cuándo usar los parámetros predeterminados para las funciones ----

// Los parámetros predeterminados nos permiten hacer que las funciones sean más fáciles de llamar al
// permitirnos proporcionar valores predeterminados comunes para los parámetros. Por lo tanto, cuando
// queremos llamar a esa función usando esos valores predeterminados, podemos ignorar los parámetros
// por completo, como si no existieran, y nuestra función hará lo correcto. Por supuesto,
// cuando queremos algo personalizado, está ahí para que lo cambiemos.

// Los desarrolladores de Swift utilizan los parámetros predeterminados con mucha frecuencia, porque
// nos permiten centrarnos en las partes importantes que necesitan cambiar regularmente.
// Esto realmente puede ayudar a simplificar una función compleja y hacer que su código
// sea más fácil de escribir.

// Por ejemplo, imagina algún código de búsqueda de rutas como este:

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    // code here
}

// Eso supone que la mayoría de las veces la gente quiere conducir entre dos lugares por la ruta más rápida,
// sin evitar las autopistas, valores predeterminados sensatos que probablemente funcionen la mayor parte del
// tiempo, al tiempo que nos da el margen para proporcionar valores personalizados cuando sea necesario.

// Como resultado, podemos llamar a esa misma función de cualquiera de tres maneras:

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)

// Código más corto y simple la mayor parte del tiempo, pero flexible cuando lo necesitamos, perfecto.


// ---- Enlace de ejercicios Parámetros predeterminados ----
// https://www.hackingwithswift.com/review/default-parameters




// ----- Funciones variáticas -----

// Algunas funciones son variadas, lo que es una forma elegante de decir que aceptan cualquier número de
// parámetros del mismo tipo. La función print() es en realidad variada: si pasas muchos parámetros,
// todos se imprimen en una línea con espacios entre ellos:

print("Haters", "gonna", "hate")

// Puedes hacer que cualquier parámetro sea variado escribiendo... después de su tipo. Por lo tanto, un
// parámetro Int es un solo entero, mientras que Int... es cero o más enteros, potencialmente cientos.

// Dentro de la función, Swift convierte los valores que se pasaron en una matriz de enteros, para que
// pueda revisarlos según sea necesario.

// Para probar esto, escribamos una función square() que pueda cuadrar muchos números:

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

// Ahora podemos ejecutar eso con muchos números simplemente pasándolos separados por comas:

square(numbers: 1, 2, 3, 4, 5)


// ----- Cuándo usar funciones variadas -----

// Las funciones variadas de Swift nos permiten aceptar cualquier número de parámetros del mismo tipo,
// separados por una coma. Dentro de la función, se nos entregan como una matriz, 
// en la que podemos indexar, hacer un bucle, etc.

// El poder de los parámetros variádicos es que podemos tratarlos como si no fueran variados la mayor
// parte del tiempo. Por ejemplo, si tenías una función open() que abría un archivo para editarlo en
// Preview, TextEdit o lo que fuera el programa correcto, podrías llamarlo así:

open("photo.jpg")

// Pero esa misma función podría tomar un parámetro variádico: muchos nombres de archivo para abrir,
// por lo que se podrían abrir varios a la vez:

open("photo.jpg", "recipes.txt", "myCode.swift")

// Por lo tanto, al hacer que ese parámetro sea variado, podemos abrir toda una gama de funcionalidades
// adicionales sin tener que cambiar la forma en que se llama a la función, ¡es realmente útil!

// En cuanto a cuándo deberías usarlos, lo más probable es que no los uses tanto mientras aprendes porque
// te vas a centrar en problemas muy específicos que suelen ser bastante pequeños. Pero a medida que
// aumenten sus habilidades, encontrará que puede cambiar sus funciones existentes para hacerlas variadas
// sin romper nada de su código; puede agregar funcionalidad sin cambiar lo que ya tiene.

// ---- Enlace de ejercicios Funciones variáticas ----
// https://www.hackingwithswift.com/review/variadic-functions



// ---- Funciones de lanzamiento de escritura ----

// A veces las funciones fallan porque tienen una entrada incorrecta o porque algo salió mal internamente.
// Swift nos permite lanzar errores de las funciones marchándolos como lanzamientos antes de su tipo de
// retorno, y luego usando la palabra clave throw cuando algo sale mal.

// Primero tenemos que definir una enumeración que describa los errores que podemos lanzar.
// Estos siempre deben basarse en el tipo de error existente de Swift. Vamos a escribir una función que
// compruebe si una contraseña es buena, así que lanzaremos un error si el usuario intenta una contraseña obvia

enum PasswordError: Error {
    case obvious
}

// Ahora escribiremos una función checkPassword() que lanzará ese error si algo sale mal. Esto significa usar
// la palabra clave throws antes del valor de retorno de la función, luego usar throw PasswordError.obvious
// si su contraseña es "contraseña".

// Esto es lo que hay en Swift:

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

// ---- ¿Cuándo deberías escribir funciones de lanzamiento? ----

// Las funciones de lanzamiento en Swift son aquellas que son capaces de encontrar errores que no pueden o no
// quieren manejar. Eso no significa que lancen errores, solo que es posible que puedan. Como resultado,
// Swift se asegurará de que tengamos cuidado cuando los usemos,
// para que cualquier error que ocurra sea atendido.

// Pero cuando escribas tu código, lo más probable es que pienses para ti mismo "¿debería esta función lanzar
// algún error que encuentre, o tal vez debería manejarlos por sí misma?" Esto es muy común, y para ser honesto,
// no hay una sola respuesta: puede manejar los errores dentro de la función (por lo que no es una función de
// lanzamiento), puede enviarlos todos de vuelta a lo que sea que se llame la función (llamada "propación de
// errores" o a veces "errores de burbuja"), e incluso puede manejar algunos errores en la función y enviar
// algunos de vuelta. Todas esas son soluciones válidas, y las usarás todas en algún momento.

// Cuando acabas de empezar, te recomiendo que evites lanzar funciones la mayor parte del tiempo. 
// Al principio pueden sentirse un poco torpes porque necesitas asegurarte de que todos los errores se manejen
// dondequiera que uses la función, por lo que se siente casi un poco "infeccioso" - de repente tienes errores
// que necesitan ser manejados en varios lugares de tu código, y si esos errores burbujean más, entonces la
// "infección" simplemente se propaga.

// Por lo tanto, cuando estés aprendiendo, empieza poco a poco: mantén el número de funciones de lanzamiento bajo
// y trabaja hacia a partir de ahí. Con el tiempo, obtendrá un mejor control sobre la gestión de errores para
// mantener el flujo de su programa sin problemas, y se sentirá
// más seguro a la hora de agregar funciones de lanzamiento.

// Para una perspectiva diferente sobre las funciones de lanzamiento, consulte esta entrada de blog de Donny Wals:
// https://www.donnywals.com/working-with-throwing-functions-in-swift/

// ---- Enlace de ejercicios Funciones de lanzamiento de escritur ----
// https://www.hackingwithswift.com/review/writing-throwing-functions


// ----- Funciones de lanzamiento en ejecución -----

// A Swift no le gusta que ocurran errores cuando se ejecuta su programa, lo que significa que no le permitirá
// ejecutar una función de lanzamiento de errores por accidente.

// En su lugar, debe llamar a estas funciones usando tres nuevas palabras clave: iniciar una sección de código
// que podría causar problemas, try se usa antes de cada función que podría generar un error, y catch le permite
// manejar los errores con gracia.

// Si se lanza algún error dentro del bloque do, la ejecución salta inmediatamente al bloque catch. Intentemos
// llamar a checkPassword() con un parámetro que genera un error

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// Cuando se ejecuta ese código, se imprime "No puedes usar esa contraseña", pero "Esa contraseña es buena" no lo
// será; nunca se alcanzará a ese código, porque se lanza el error.


// ----- ¿Por qué Swift nos hace probar antes de cada función de lanzamiento? -----

// El uso de las funciones de lanzamiento de Swift se basa en tres palabras clave únicas: hacer, probar y atrapar.
// Necesitamos los tres para poder llamar a una función de lanzamiento, lo cual es inusual: la mayoría de los otros
// lenguajes usan solo dos, porque no necesitan escribir intentos antes de cada función de lanzamiento.

// La razón por la que Swift es diferente es bastante simple: al obligarnos a probar antes de cada función de
// lanzamiento, estamos reconociendo explícitamente qué partes de nuestro código pueden causar errores.
// Esto es particularmente útil si tienes varias funciones de lanzamiento en un solo bloque de do, como esta:

do {
    try throwingFunction1()
    nonThrowingFunction1()
    try throwingFunction2()
    nonThrowingFunction2()
    try throwingFunction3()
} catch {
    // handle errors
}

// Como puedes ver, el uso de try deja claro que las llamadas a la primera, tercera y quinta función pueden lanzar
// errores, pero la segunda y la cuarta pueden

// ---- Enlace de ejercicios Funciones de lanzamiento en ejecución ----
// https://www.hackingwithswift.com/review/running-throwing-functions



// ---- Parámetros de entrada ----

// Todos los parámetros pasados a una función Swift son constantes, por lo que no puedes cambiarlos.
// Si lo desea, puede pasar uno o más parámetros como inout, lo que significa que se pueden cambiar
// dentro de su función, y esos cambios se reflejan en el valor original fuera de la función.

// Por ejemplo, si desea duplicar un número en su lugar, es decir, cambiar el valor directamente en
// lugar de devolver uno nuevo, podría escribir una función como esta:

func doubleInPlace(number: inout Int) {
    number *= 2
}

// Para usar eso, primero necesitas hacer un número entero variable: no puedes usar enteros constantes
// con inout, porque podrían cambiarse. También debe pasar el parámetro a doubleInPlace usando un
// ampersand, &, antes de su nombre, que es un reconocimiento explícito de que es consciente de que se
// está utilizando como inout.

// En el código, escribirías esto:

var myNum = 10
doubleInPlace(number: &myNum)


// ----- ¿Cuándo deberías usar los parámetros de entrada? -----

// Los parámetros de entrada de Swift se utilizan muy comúnmente, pero se crean con menos frecuencia.
// Es decir, son el tipo de cosas en las que confiarás mucho, tal vez sin siquiera darte cuenta, pero
// no es común que quieras crear funciones con ellas, al menos no mientras estás aprendiendo.

// ¿Qué tan comunes son? Bueno, todos los operadores de Swift se implementan como funciones detrás de
// escena, cosas como +, -, y así suces. Sí, en realidad son solo funciones detrás de escena.
// Puedes imaginarlos un poco así:

func +(leftNumber: Int, rightNumber: Int) -> Int {
    // code here
}

// Por lo tanto, al escribir 5 + 3, en realidad estamos llamando a una función llamada + toma un entero
// a la izquierda (5) y un entero a la derecha (3), y devuelve un nuevo entero que contiene el resultado.

// Ahora piensa en el operador +=, que añade y asigna al mismo tiempo. Eso no tiene un valor de retorno,
// pero en realidad modifica el valor original directamente. Como resultado, se parece un poco más a esto:

func +=(leftNumber: inout Int, rightNumber: Int) {
    // code here
}

// En términos generales, es mejor evitar crear parámetros de entrada hasta que estés seguro de que son
// definitivamente la elección correcta. Cuando estás aprendiendo (¡y en realidad cuando también tienes
// mucha experiencia!) Por lo general, es mejor enviar algunos datos a una función y recuperar nuevos
// datos, porque hace que sea más fácil seguir la lógica de su programa.

// Eso no significa que no valga la pena saberlo, solo que quieres estar realmente seguro de que lo
// necesitas antes de empezar.

// ---- Enlace de ejercicios Parámetros de entrada ----
// https://www.hackingwithswift.com/review/inout-parameters



// ----- Resumen de funciones -----

// Has llegado al final de la quinta parte de esta serie, así que resumamos:

// Las funciones nos permiten reutilizar el código sin repetirnos.

// Las funciones pueden aceptar parámetros, solo dile a Swift el tipo de cada parámetro.

// Las funciones pueden devolver valores y, de nuevo, solo tienes que especificar qué 
// tipo se enviará de vuelta. Usa tuplas si quieres devolver varias cosas.

// Puede usar diferentes nombres para los parámetros externos e internos, u omitir el 
// nombre externo por completo.

// Los parámetros pueden tener valores predeterminados, lo que le ayuda a escribir menos
// código cuando los valores específicos son comunes.

// Las funciones variádicas aceptan cero o más de un parámetro específico, y Swift 
// convierte la entrada en una matriz.

// Las funciones pueden lanzar errores, pero debes llamarlos usando try and handle 
// errors usando catch.

// Puedes usar inout para cambiar las variables dentro de una función, pero por lo general
// es mejor devolver un nuevo valor.

// ---- Enlace de ejercicios Resumen de funciones ----
// https://www.hackingwithswift.com/review/functions-summary



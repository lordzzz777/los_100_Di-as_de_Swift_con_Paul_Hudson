import Foundation


// ----- Cierres, segunda parte -----


// Ayer aprendiste los conceptos básicos de los cierres, pero hoy las cosas se ponen un
// poco más complicadas. Pero eso está bien: Benjamin Franklin dijo una vez: "la energía
// y la persistencia conquistan todas las cosas" - ¡puedes hacer esto!

// A veces, la sintaxis de cierre puede ser un poco difícil para tus ojos. Si te parece
// un poco abrumador, si estás mirando algún código y no estás 100% seguro de lo que
// significa, simplemente vuelve un vídeo y míralo de nuevo.

// Hoy tienes siete vídeos de un minuto para ver, y aprenderás sobre cómo los cierres
// aceptan parámetros y valores de retorno. Una vez que hayas completado cada vídeo,
// puedes repasar cualquier lectura opcional si lo necesitas, y luego hacer una breve
// prueba para asegurarte de que has entendido lo que se enseñó.

// Para hacer las cosas un poco menos intimidantes, he dividido los temas de hoy en dos
// secciones: lo menos que necesitas saber para continuar, y temas más avanzados que
// realmente desarrollarán tu aprendizaje. Ten en cuenta que ya he dicho que los cierres
// son difíciles, así que espero que puedas apreciar que los cierres más avanzados son
// doblemente difíciles. ¡No te sientas mal si pruebas los temas más avanzados y crees
// que has tenido suficiente y quieres seguir adelante!




// ---- Usar los cierres como parámetros cuando aceptan parámetros ----

// Aquí es donde los cierres pueden comenzar a leerse un poco como el ruido de la línea:
// un cierre que se pasa a una función también puede aceptar sus propios parámetros.

// Hemos estado usando () -> Vacío para significar "no acepta ningún parámetro y no
// devuelve nada", pero puede seguir adelante y rellenar el () con los tipos de cualquier
// parámetro que su cierre debería aceptar.

// Para demostrar esto, podemos escribir una función travel() que acepte un cierre como su
// único parámetro, y que el cierre a su vez acepte una cadena:

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

// Ahora, cuando llamamos a travel() usando la sintaxis de cierre final, se requiere que
// nuestro código de cierre acepte una cadena:

travel { (place: String) in
    print("I'm going to \(place) in my car")
}


// ---- ¿Cuándo se usarían como parámetros los cierres con parámetros? ----

// Los cierres que aceptan parámetros son un poco difíciles de leer, pero ese problema
// empeora cuando los propios cierres se utilizan como parámetros: se siente casi como
// una prueba de coeficiente intelectual solo tratando de entender lo que está pasando.
// Sin embargo, se usan comúnmente, por lo que vale la pena tomarse el tiempo para
// entender la forma en que se ven y la forma en que funcionan, y si los encuentras un
// poco abrumadores, no tengas miedo de volver un poco y revisar lo que vino antes.

// Para darte un ejemplo práctico, imagina que estabas construyendo un coche. 
// El coche necesita saber qué motor tiene, qué volante tiene, cuántos asientos tiene,
// etc. Claro, el motor podría ser solo una serie de información, pero en realidad
// debería ser capaz de acelerar o desacelerar a cierta velocidad.

// Así que, primero podríamos escribir un cierre como este:

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

// Y ahora podemos crear una función buildCar() que acepte cualquier tipo de cierre para el
// motor, siempre y cuando se le pueda decir a ese cierre que acelere o desacelere
// a un valor entero específico:

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}

// Una vez que te sientas más cómodo con los cierres, comenzarás a darte cuenta de que el poder
// aquí es que nuestro cierre es efectivamente una caja sellada. Sí, sabemos que imprimirá un
// mensaje de que estamos cambiando la velocidad, pero todo lo que buildCar() sabe es que toma
// un entero y no devuelve nada. Podríamos crear un cierre completamente diferente para manejar
// coches voladores o coches submarinos, y a buildCar() no le importaría porque cumple con las
// mismas reglas de aceptar un número entero y no devolver nada.


// Antes de terminar, quiero repetir una advertencia anterior, porque aquí es donde los cierres
// realmente pueden empezar a lastimarte la cabeza:


// Si estás sentado aquí pensando "guau, los cierres son muy difíciles", no te desormes, son
// difíciles, y si los encuentras difíciles solo significa que
// tu cerebro está funcionando correctamente.

// Recibio muchos mensajes de la gente que dice que están luchando con los cierres, y digo
// exactamente lo mismo: está bien. Es mejor que está bien, ¡es genial! Cuando te cuesta
// aprender información, encontrarás que se hunde mucho más, así que cuando finalmente la
// domines, estarás listo.

// Y créeme: esto importa, porque se usa por todas partes en SwiftUI. ¡Así que tómate tu
// tiempo y sigue adelante!

// ---- Enlace de ejercicios Usar los cierres como parámetros cuando aceptan parámetros ----
// https://www.hackingwithswift.com/review/using-closures-as-parameters-when-they-accept-parameters





// ----- Uso de cierres como parámetros cuando devuelven valores -----

// Hemos estado usando () -> Vacío para significar "no acepta parámetros y no devuelve nada",
// pero puede reemplazar ese Vacío con cualquier tipo de datos para 
// forzar el cierre a devolver un valor.

// Para demostrar esto, podemos escribir una función travel() que acepte un cierre como su
// único parámetro, y que el cierre a su vez acepte una cadena y devuelva una cadena:

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Ahora, cuando llamamos a travel() usando la sintaxis de cierre final, nuestro código de
// cierre es necesario para aceptar una cadena y devolver una cadena:

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


// ----- ¿Cuándo usarías los cierres con valores de retorno como parámetros para una función? -----

// Los cierres de Swift pueden devolver valores, así como tomar parámetros, y puedes usar esos
// cierres en funciones. Aún mejor, esas funciones también pueden devolver valores, pero es fácil
// que tu cerebro se vuelva un poco borroso aquí porque hay mucha sintaxis.

// Para demostrar un uso común para este tipo de cierres, vamos a implementar un método de
// reducción simple. Este es un comportamiento común que está diseñado para resumir matrices,
// para tomar muchos números, o cadenas, o lo que sea, y reducirlos a un solo valor.

// En nuestro ejemplo simplificado, nuestro reductor aceptará dos parámetros: una matriz de números
// y un cierre que puede reducir esa matriz a un solo valor. Por ejemplo, podría aceptar una matriz
// de números y sumarlos, y luego devolver el total final. Para hacer eso, el cierre aceptará dos
// parámetros: uno para rastrear el valor actual (todo lo que se ha reducido hasta ahora) y el valor
// actual que debe agregarse al valor reducido. El cierre también devolverá un valor, que es el nuevo
// valor reducido, y toda la función devolverá el valor totalmente reducido,
// el total de todos los números, por ejemplo.

//Por ejemplo, si quisiéramos reducir la matriz [10, 20, 30], funcionaría algo como esto:

// Crearía una variable llamada corriente con un valor establecido en el primer elemento de su matriz.
// Este es nuestro valor inicial.

// Luego comenzaría un bucle sobre los elementos de la matriz que se pasaron, usando el rango 1...
// para que cuente desde el índice 1 hasta el final.
 
// Luego llamaría al cierre con 10 (el valor actual) y 20 (el segundo valor de la matriz).
 
// El cierre podría estar reduciendo la matriz usando la adición, por lo que añadiría de 10 a 20 y devolvería la suma, 30.

// Nuestra función llamaría entonces al cierre con 30 (el nuevo valor actual) y 30 (el tercer elemento de la matriz).

// El cierre añadiría de 30 a 30 y devolvería la suma, que es de 60.

// Nuestra función devolvería 60 como su valor de devolución.

// En el código se ve así:

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}


// Con ese código en su lugar, ahora podemos escribir esto, así que suma una matriz de números:

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

print(sum)

// Consejo: En ese código estamos explícitos de que runningTotal y next serán enteros, pero en
// realidad podemos dejar de lado la anotación de tipo y Swift lo averiguará. Tenga en cuenta
// que no hemos tenido que decir que nuestro cierre devuelve un entero, de nuevo porque Swift
// puede averiguarlo por sí mismo.

// Lo bueno aquí es que a reduce() no le importa lo que haga su cierre, solo le importa que
// acepte dos enteros y devuelva un entero. Por lo tanto, podríamos multiplicar todos los
// elementos de nuestra matriz de esta manera:

let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal * next
}

// Aunque esto fue solo un ejemplo para demostrar por qué los cierres con valores de retorno
// hacen parámetros funcionales útiles, quiero mencionar tres cosas más.

// En primer lugar, nuestra función reduce() utiliza valores[0] para su valor inicial, pero
// ¿qué sucede si llamamos a reduce() con una matriz vacía? Tenemos un accidente,
// eso es lo que pasa. Está claro que eso no es algo bueno, así que no querrías usar este
// código fuera de una caja de arena de aprendizaje.

// En segundo lugar, mencioné anteriormente que los operadores de Swift son en realidad
// funciones por derecho propio. Por ejemplo, + es una función que acepta dos números
// (por ejemplo, 5 y 10) y devuelve otro número (15).

// Por lo tanto, + toma dos números y devuelve un número. Y nuestra función reduce()
// espera un cierre que tome dos números y devuelva un número. ¡Eso es lo mismo! La
// función + cumple con el mismo contrato que reduce() quiere: toma los mismos parámetros
// y devuelve el mismo valor.

// Como resultado, en realidad podemos escribir esto:

let sum = reduce(numbers, using: +)

//Sí, de verdad. Limpio, ¿eh?

// En tercer lugar, esta función reduce() es tan importante que una variante en realidad
// viene con Swift como estándar. 
// El concepto es el mismo, pero es más avanzado de varias maneras:

// Puedes especificar tu propio valor inicial.

// Funcionará en matrices de cualquier tipo, incluidas las cadenas.

// Maneja los errores con gracia.

// Aún mejor, ¡no se bloqueará cuando se use en una matriz vacía!

// Esto necesitó bastante explicación, pero espero que te haya dado un ejemplo práctico de
// por qué los cierres que devuelven valores pueden ser útiles como parámetros.
// A medida que progreses en tus habilidades, aprenderás muchos más ejemplos,
// es sorprendentemente común.


// ---- Enlace de ejercicios Uso de cierres como parámetros cuando devuelven valores ----
// https://www.hackingwithswift.com/review/using-closures-as-parameters-when-they-return-values



// ----- Nombres de parámetros abreviados -----


// Acabamos de hacer una función travel(). Acepta un parámetro, que es un cierre que en sí
// mismo acepta un parámetro y devuelve una cadena.
// Ese cierre se ejecuta entre dos llamadas a print().

// Aquí está el código:

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

// Podemos llamar a travel() usando algo como esto:

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Sin embargo, Swift sabe que el parámetro de ese cierre debe ser una cadena,
// por lo que podemos eliminarlo:

travel { place -> String in
    return "I'm going to \(place) in my car"
}

// También sabe que el cierre debe devolver una cadena, por lo que podemos eliminarla:

travel { place in
    return "I'm going to \(place) in my car"
}

// Como el cierre solo tiene una línea de código que debe ser la que devuelva el valor,
// Swift también nos permite eliminar la palabra clave return:

travel { place in
    "I'm going to \(place) in my car"
}

// Swift tiene una sintaxis abreviada que te permite ir aún más corto. En lugar de escribir
// el lugar, podemos dejar que Swift proporcione nombres automáticos para los parámetros del cierre.
// Estos se nombran con un signo de dólar, luego un número que cuenta desde 0.

travel {
    "I'm going to \($0) in my car"
}



// ----- ¿Cuándo deberías usar los nombres de los parámetros abreviados? -----


// Cuando se trabaja con cierres, Swift nos da una sintaxis especial de parámetros abreviados
// que hace que sea extremadamente conciso escribir cierres. Esta sintaxis numera automáticamente
// los nombres de los parámetros como $0, $1, $2, y así suces. - no podemos usar nombres como
// estos en nuestro propio código, por lo que cuando los ves, está inmediatamente claro que se
// trata de sintaxis abreviada para los cierres.

// En cuanto a cuándo deberías usarlos, es realmente un gran "depende":

// ¿Hay muchos parámetros? Si es así, la sintaxis abreviada deja de ser útil y, de hecho,
// comienza a ser contraproducente: ¿fue $3 o $4 que necesitas comparar con $0? Dales nombres
// reales y su significado se vuelve más claro.

// ¿Se usa comúnmente la función? A medida que progresen tus habilidades de Swift, comenzarás
// a darte cuenta de que hay un puñado, tal vez 10 más o menos, de funciones extremadamente
// comunes que usan cierres, por lo que otros que lean tu código entenderán
// fácilmente lo que significa $0.

// ¿Los nombres abreviados se usan varias veces en su método? Si necesitas referirte a 0 $
// más de tal vez dos o tres veces, probablemente deberías darle un nombre real.

// Lo que importa es que tu código sea fácil de leer y de entender.
// A veces eso significa hacerlo corto y simple, pero no siempre:
// elija la sintaxis abreviada caso por caso.


// ---- Enlace de ejercicios Nombres de parámetros abreviados ----
// https://www.hackingwithswift.com/review/shorthand-parameter-names


//------------------------------------------------------------------------------------------//
// Si lo superas, eres la mayor parte del camino para entender cómo se utilizan los cierres //
// en Swift y por qué son importantes. Sin embargo, si quieres ver usos más avanzados       //
// de los cierres, ¡puedes pulsar!                                                          //
//------------------------------------------------------------------------------------------//



// ****************** Cierres avanzados ******************


// ---- Closures with multiple parameters -----

// Solo para asegurarnos de que todo esté claro, vamos a escribir otro ejemplo de cierre
// usando dos parámetros.

// Esta vez, nuestra función travel() requerirá un cierre que especifique a dónde viaja
// alguien y la velocidad a la que va. Esto significa que tenemos que usar (String, Int) ->
// String para el tipo de parámetro:

func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

// Vamos a llamar a eso usando un cierre final y nombres de parámetros de cierre abreviados.
// Debido a que esto acepta dos parámetros, recibiremos tanto 0 $ como 1 $:

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// Algunas personas prefieren no usar nombres de parámetros abreviados como $0 porque puede
// ser confuso, y eso está bien, haz lo que mejor te convenga.


// ----- ¿Cuántos parámetros puede tomar un cierre? -----


// Los cierres de Swift son como las funciones de Swift, por lo que pueden tomar cualquier 
// número de parámetros. Sin embargo, debe ejercer su poder con moderación:
// anteriormente he dicho que las funciones que aceptan muchos parámetros pueden ser
// difíciles de entender, y los cierres llevan ese mismo problema más allá al agregar su
// complejidad natural en la parte superior.

// Por lo tanto, en teoría, un cierre puede tomar tantos parámetros como quieras, pero en 
// la práctica la abrumadora mayoría de los ejemplos que verás tomar de cero a tres parámetros.
// Es probable que esto se vea ayudado por el hecho de que usar 0 $, 1 $ y 2 $ es probablemente
// los nombres de parámetros más cortos con los que podemos trabajar razonablemente.

// No estoy diciendo que no se puedan escribir cierres que tomen cuatro o más parámetros, solo
// que es extremadamente raro: uno o dos parámetros cubren la gran mayoría de los casos, siendo
// tres parámetros la mayor parte del resto.

// ---- Enlace de ejercicios Closures with multiple parameters ----
// https://www.hackingwithswift.com/review/closures-with-multiple-parameters


// ----- Returning closures from functions -----


// De la misma manera que puede pasar un cierre a una función, también puede obtener cierres 
// devueltos de una función.

// La sintaxis de esto es un poco confusa al principio, porque usa -> dos veces: una vez para
// especificar el valor de retorno de su función, y una segunda vez para especificar el valor
// de retorno de su cierre.

// Para probar esto, vamos a escribir una función travel() que no acepta parámetros, pero
// devuelve un cierre. El cierre que se devuelve debe llamarse con una cadena y no devolverá nada.

//Así es como se ve en Swift:

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

// Ahora podemos llamar a travel() para recuperar ese cierre, y luego llamarlo como una función:

let result = travel()
result("London")

// Es técnicamente permisible, ¡aunque realmente no se recomienda! - llamar al valor de retorno
// de travel() directamente:

let result2 = travel()("London")



// ----- Retorno de cierres de funciones -----

// Las funciones pueden devolver cadenas, enteros, matrices y más, y debido a que Swift nos
// permite usar cierres en cualquier lugar, también podemos devolver cierres de funciones.
// Pero, ¿por qué querrías hacer esto? ¿Es realmente algo razonable querer hacerlo?

// La situación más común es efectivamente esta: necesito una función para llamar, pero no sé
// cuál es esa función. Sé cómo encontrar esa función, sé a quién pedir que encuentre la
// función, pero no me conozco a mí mismo.

// Por ejemplo, quiero generar muchos números aleatorios, pero no sé qué algoritmo usar.
// Todo lo que sé es que si llamo a makeRandomGenerator() recuperaré una función a la que
// puedo llamar y que generará un nuevo número aleatorio cada vez que lo llame.

// Este comportamiento significa que no necesitamos saber qué hace el generador de números
// aleatorios real, o cómo se creó. Detrás de escena, es posible que nos envíen el mismo
// cierre cada vez o tal vez un cierre diferente; no nos importa. Sin esto, tendríamos que
// escribir el nombre preciso de la función en todos los lugares donde quisiéramos usarla.

// Eso conduce a un segundo beneficio: podemos cambiar de opinión cuando queramos, solo
// cambiando la función que crea el generador de números aleatorios. Todos los lugares que
// llaman a la función no cambiarán, porque todavía llaman a makeRandomGenerator(). Y todas
// las formas en que usan el generador de números aleatorios devueltos no cambiarán, porque
// es solo un cierre que de alguna manera devuelve un número aleatorio cada vez que se llama.

// Por lo tanto, si desea cambiar el generador a un algoritmo "justo", donde cada número se
// genera un número igual de veces, en un orden aleatorio, entonces simplemente cambie el
// cierre devuelto en makeRandomGenerator(). O si desea cambiarlo para que tenga una
// distribución gaussiana, lo que significa que obtiene una curva de campana donde los
// números en el medio de su rango se devuelven con más frecuencia que los números hacia el
// final de su rango, entonces, de nuevo, simplemente cambia el cierre devuelto: dondequiera
// que lo use permanece absolutamente sin cambios.

// Quiero darte un pequeño ejemplo de cómo se ve esto, porque Swift en realidad viene con un
// generador de números aleatorios incorporado. Se ve así:

print(Int.random(in: 1...10))

// Eso imprimirá un número del 1 al 10.

// Si quisiéramos escribir una función que devolviera un número aleatorio entre 1 y 10,
// escribiríamos esto:

func getRandomNumber()-> Int {
    Int.random(in: 1...10)
}

// Eso devolverá un entero aleatorio cada vez que se llame, por lo que podemos usarlo así:

print(getRandomNumber())

// Ahora vayamos un paso más allá: vamos a hacer una función que devuelva un cierre que, cuando
// se llame, generará un número aleatorio del 1 al 10:

func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}

// Tenga en cuenta que nuestro tipo de retorno es ahora () -> Int, lo que significa "un cierre 
// que no toma parámetros y devuelve un entero". Luego, dentro de la función, creamos un cierre
// que envuelve Int.random (en: 1...10) y devolvemos ese cierre.

// Ahora podemos usar makeRandomGenerator() de esta manera:

let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

// Una vez más, la flexibilidad aquí es que todo nuestro código puede llamar a makeRandomGenerator()
// para ser devuelto algún tipo de código que pueda generar un número aleatorio.
// No tiene que importarle lo que haga; solo nos importa que genere un nuevo número cada vez que se llama.

// ---- Enlace de ejercicios Returning closures from functions ----
// https://www.hackingwithswift.com/review/returning-closures-from-functions


// ----- Captura de valores -----

// Si utiliza algún valor externo dentro de su cierre, Swift los captura: los almacena junto con el cierre,
// por lo que se pueden modificar incluso si ya no existen.

// Ahora mismo tenemos una función travel() que devuelve un cierre, y el cierre devuelto acepta una cadena 
// como su único parámetro y no devuelve nada:

func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

// Podemos llamar a travel() para recuperar el cierre, y luego llamar a ese cierre libremente:

let result = travel()
result("London")

// La captura de cierre ocurre si creamos valores en travel() que se utilizan dentro del cierre.
// Por ejemplo, es posible que queramos hacer un seguimiento de la frecuencia con la que se llama
// el cierre devuelto:

func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

// A pesar de que esa variable de contador se creó dentro de travel(), es capturada por el cierre,
// por lo que seguirá viva para ese cierre.

// Por lo tanto, si llamamos al resultado ("Londres") varias veces, el contador subirá y subirá:

result("London")
result("London")
result("London")


// ----- ¿Por qué los cierres de Swift capturan valores? -----

// Una de las características más importantes de los cierres de Swift es que capturan los valores 
// que utilizan. Al mismo tiempo, una de las características más confusas de Swift es que capturan
// los valores que utilizan. En pocas palabras, la captura de valor se lleva a cabo para que su
// cierre siempre tenga acceso a los datos que necesita para funcionar, lo que significa que Swift
// puede ejecutar el cierre de forma segura.

// Como ejemplo, intentemos escribir una función que genere números aleatorios, pero con un giro:
// no devolverá el mismo número dos veces seguidas.

// La lógica de esto es bastante simple:

// Comenzaremos con un valor inicial de 0, almacenado en previousValue.

// A continuación, crearemos una nueva variable llamada newNumber para almacenar un nuevo número aleatorio.

// Utilizaremos un bucle de repetición con Int.random (en: 1...3).

// La condición para ese bucle será newNumber == previousNumber - mantenga el bucle
// recogiendo nuevos números siempre y cuando el nuevo número aleatorio sea el mismo
// que el número aleatorio anterior.

// Una vez que el bucle termina, significa que nuestro número es definitivamente diferente del
// anterior, por lo que actualizamos el valor anterior para que sea newValue
// y luego lo enviamos de vuelta.
// Recuerde, esto debe devolverse como un cierre, para que podamos generar números aleatorios
// desde donde queramos.

// Así es como podríamos escribir todo eso:

func makeRandomNumberGenerator() -> () -> Int {
    return {
        var previousNumber = 0
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

// Ahora podemos tomar ese código para una prueba de manejo como esta:

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}

// ¡Pruébalo! Lo más probable es que veas que las cosas no salieron según lo planeado: 
// me repitieron los números varias veces, p. ej. 1, 2, 1, 1, 3, 1, 3, 3, 3, 2.

// Eso no era lo que queríamos; no queríamos repetir los números, así que ¿qué pasó?

// El problema está aquí:

/*
return {
    var previousNumber = 0
    var newNumber: Int
    
*/

// Eso devuelve el cierre que estamos llamando, lo que significa que cada vez que llamamos
// a generator() se crea una nueva variable previousNumber establecida en 0; no almacena
// el valor anterior en absoluto.

// Ahora quiero que muevas esa línea var previousNumber = 0 para
// que llegue antes del regreso, así:

var previousNumber = 0

return {
    var newNumber: Int
    
// Si ejecutas el código ahora, verás que funciona tal y como esperábamos: obtenemos un
// nuevo valor aleatorio cada vez, pero no obtendremos ninguna repetición.
    
// Lo que estás viendo aquí es el poder de la captura de cierre: esa variable anteriorNumber
// no está dentro del cierre, pero debido a que el cierre requiere que exista para poder ejecutarla,
// será capturada. Es decir, Swift se asegurará de que siga existiendo incluso después de
// que makeRandomNumberGenerator() haya terminado de ejecutarse y normalmente habría sido destruido.
    
// Esto es importante por dos razones:
    
// Si la variable hubiera sido destruida, entonces nuestro cierre ya no podría funcionar.
// Intenta leer y escribir el número anterior, por lo que el mantenimiento de Swift lo mantiene vivo
// garantiza que el cierre funcione según lo previsto.
    
// Aunque la variable es utilizada por el cierre, se crea fuera del cierre.
// Esto significa que solo se establece en 0 una vez, en lugar de cada vez que se ejecuta el cierre,
// por lo que ahora almacena el valor anterior correctamente.
    
// Por lo tanto, este es un ejemplo real de por qué cerrar la captura es importante:
// tener un valor externo se asegura de que podamos rastrear algún estado fuera de un
// cierre mientras lo usamos dentro.
    
// La captura de cierres es un tema complicado, pero si quieres leer aún más al respecto,
// echa un vistazo
    
    
// ---- Enlace de ejercicios Returning closures from functions ----
// https://www.hackingwithswift.com/review/capturing-values
    
    
// ------ Resumen de cierres ------
    
// Has llegado al final de la sexta parte de esta serie, así que resumamos:

// Puedes asignar cierres a variables y luego llamarlos más tarde.

// Los cierres pueden aceptar parámetros y valores de retorno, como las funciones regulares.

// Puede pasar los cierres a funciones como parámetros, y esos cierres pueden tener 
// parámetros propios y un valor de retorno.

// Si el último parámetro de su función es un cierre, puede usar la sintaxis de cierre final.

// Swift proporciona automáticamente nombres de parámetros abreviados como 0 $ y 1 $,
// pero no todo el mundo los usa.

// Si utiliza valores externos dentro de sus cierres, se capturarán para que el cierre pueda
// referirse a ellos más adelante.

// ---- Enlace de ejercicios Resumen de cierres ----
// https://www.hackingwithswift.com/review/closures-summary


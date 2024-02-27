import Foundation



// ----- Revisión rápida, segundo día -----

// Este es el segundo día de consolidación, y de nuevo el objetivo es repasar
// los fundamentos de Swift antes de seguir adelante. Esta vez cubriremos los
// opcionales, entre otras cosas, así que si los encontraste difíciles antes,
// esta es tu oportunidad de clavarlos de verdad.

// Hoy tienes seis temas que revisar. Una vez que los hayas completado, puedes,
// si quieres, volver a repasar las pruebas de días anteriores para mejorar tus
// puntuaciones.

// ----- Funciones -----

// Las funciones le permiten definir piezas de código reutilizables que 
// realizan piezas específicas de funcionalidad. Por lo general, las funciones
// pueden recibir algunos valores para modificar la forma en que funcionan,
// pero no es necesario.

// Empecemos con una función sencilla

func favoriteAlbum() {
    print("My favorite is Fearless")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-1@2x.png

// Si pones ese código en tu patio de recreo, no se imprimirá nada. Y sí, es
// correcto. La razón por la que no se imprime nada es que hemos colocado el
// mensaje "Mi favorito es Fearless" en una función llamada favoriteAlbum(),
// y ese código no se llamará hasta que le pidamos a Swift que ejecute la
// función favoriteAlbum(). Para ello, añade esta línea de código:

favoriteAlbum()

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-2@2x.png

// Eso ejecuta la función (o "la llama"), así que ahora verás "Mi favorito es
// Fearless" impreso.

// Como puede ver, define una función escribiendo func, luego el nombre de su
// función, luego abrir y cerrar paréntesis, luego un bloque de código marcado
// con llaves abiertas y cerradas. A continuación, llama a esa función
// escribiendo su nombre seguido de un paréntesis abierto y cerrado.

// Por supuesto, ese es un ejemplo tonto: esa función hace lo mismo pase lo que
// pase, por lo que no tiene sentido que exista. Pero, ¿y si quisiéramos imprimir
// un álbum diferente cada vez? En ese caso, podríamos decirle a Swift que
// queremos que nuestra función acepte un valor cuando se llame, y luego usar
// ese valor dentro de él.

// Hagámoslo ahora:

func favoriteAlbum(name: String) {
    print("My favorite is \(name)")
}

// Eso le dice a Swift que queremos que la función acepte un valor (llamado
// "parámetro"), llamado "nombre", que debería ser una cadena. Luego usamos
// la interpolación de cadenas para escribir el nombre de ese álbum favorito
// directamente en nuestro mensaje de salida. Para llamar a la función ahora,
// escribirías esto:

favoriteAlbum(name: "Fearless")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-3@2x.png


// Es posible que todavía te estés preguntando cuál es el punto, dado que 
// sigue siendo solo una línea de código. Bueno, imagina que usamos esa función
// en 20 lugares diferentes alrededor de una gran aplicación, luego tu diseñador
// principal viene y te dice que cambies el mensaje a "Me encanta Fearless, ¡es
// mi favorito!" ¿De verdad quieres encontrar y cambiar las 20 instancias de tu
// código? Probablemente no. Con una función la cambias una vez,
// y todo se actualiza.

// Puedes hacer que tus funciones acepten tantos parámetros como quieras, así
// que vamos a hacer que acepten un nombre y un año:

func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speak Now", year: 2010)
printAlbumRelease(name: "Red", year: 2012)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-4@2x.png

// Estos nombres de parámetros de función son importantes y en realidad forman
// parte de la función en sí. A veces verás varias funciones con el mismo nombre,
// por ejemplo, handle(), pero con diferentes nombres de parámetros para
// distinguir las diferentes acciones.


// ***** Nombres de parámetros externos e internos *****

// A veces quieres que los parámetros se nombren de una manera cuando se llama
// a una función, pero de otra manera dentro de la función en sí. Esto significa
// que cuando llamas a una función, utiliza un inglés casi natural, pero dentro
// de la función los parámetros tienen nombres sensatos. Esta técnica se emplea
// con mucha frecuencia en Swift, por lo que vale la pena entenderla ahora.

// Para demostrar esto, escribamos una función que imprima el número de letras
// en una cadena. Esto está disponible usando la propiedad de recuento de
// cadenas, por lo que podríamos escribir esto:

func countLettersInString(string: String) {
    print("The string \(string) has \(string.count) letters.")
}

// Con esa función en su lugar, podríamos llamarla así:

countLettersInString(string: "Hello")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-5@2x.png


// Aunque eso ciertamente funciona, es un poco trolito. Además, no es el tipo
// de cosas que dirías en voz alta: "contar letras en cadena de cadena hola".

// La solución de Swift es que puedas especificar un nombre para el parámetro
// cuando se llama y otro dentro del método. Para usar esto, simplemente escriba
// el nombre del parámetro dos veces: una vez para externo y otra para interno.

// Por ejemplo, podríamos nombrar el parámetro myString cuando se llama, y str
// dentro del método, así:

func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString(myString: "Hello")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-6@2x.png

// También puede especificar un guión bajo, _, como el nombre del parámetro
// externo, que le dice a Swift que no debería tener ningún nombre externo en
// absoluto. Por ejemplo:

func countLettersInString(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInString("Hello")


// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-7@2x.png


// Como puedes ver, eso hace que la línea de código se lea como una oración
// en inglés: "contar letras en cadena hola".

// Si bien hay muchos casos en los que usar _ es la opción correcta, los
// programadores de Swift generalmente prefieren nombrar todos sus parámetros.
// Y piénsalo: ¿por qué necesitamos la palabra "Cadena" en la función? ¿En qué
// más querríamos contar las letras?

// Por lo tanto, lo que normalmente verás son nombres de parámetros externos
// como "en", "para" y "con", y nombres internos más significativos.
// Por lo tanto, la forma "Swifty" de escribir esta función es así:

func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

// Eso significa que llamas a la función con el nombre del parámetro "in",
// que no tendría sentido dentro de la función. Sin embargo, dentro de la
// función, el mismo parámetro se llama "cadena", que es más útil.
// Por lo tanto, la función se puede llamar así:

countLetters(in: "Hello")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-8@2x.png


// Y ese es realmente el código Swifty: "contar letras en hola" se lee como
// un inglés natural, pero el código también es claro y conciso.



// ***** Valores de devolución *****

// Las funciones Swift pueden devolver un valor escribiendo -> luego un tipo
// de datos después de su lista de parámetros. Una vez que hagas esto, Swift
// se asegurará de que tu función devuelva un valor pase lo que pase, así que
// de nuevo esto es hacer una promesa sobre lo que hace tu código.

// Como ejemplo, escribamos una función que devuelva verdadero si un álbum es
// uno de Taylor Swift, o falso de lo contrario. Esto debe aceptar un parámetro
// (el nombre del álbum a comprobar) y devolverá un booleano. Aquí está el código:

func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

// Si quisieras probar tu nuevo conocimiento del interruptor/caso, esta función
// es un lugar en el que funcionaría bien.

// Ahora puedes llamar a eso pasando el nombre del álbum y actuando sobre el
// resultado:

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-9@2x.png

// Si su función devuelve un valor y tiene solo una línea de código dentro de 
// ella, puede omitir la palabra clave return por completo - Swift sabe que un
// valor debe ser devuelto, y porque solo hay una línea que debe ser la que
// devuelve un valor.

// Por ejemplo, podríamos escribir esto:

func getMeaningOfLife() -> Int {
    return 42
}

// O podríamos simplemente escribir esto:

func getMeaningOfLife() -> Int {
    42
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/functions-10@2x.png


// Esto se usa muy comúnmente en el código SwiftUI.




// ----- Opcionales -----

// Swift es un lenguaje muy seguro, por lo que quiero decir que trabaja duro
// para garantizar que su código nunca falle de maneras sorprendentes.

// Una de las formas más comunes en que el código falla es cuando intenta usar
// datos que son malos o que faltan. Por ejemplo, imagina una función como esta:

func getHaterStatus() -> String {
    return "Hate"
}

// Esa función no acepta ningún parámetro y devuelve una cadena: "Odio". 
// Pero ¿qué pasa si hoy es un día particularmente soleado, y esos que odian
// no tienen ganas de odiar, entonces qué? Bueno,
// tal vez no queramos devolver nada: este hater no está odiando hoy.

// Ahora, cuando se trata de una cadena, podrías pensar que una cadena vacía
// es una gran manera de no comunicar nada, y eso podría ser cierto a veces.
// Pero, ¿qué hay de los números? ¿Es 0 un "número vacío"? ¿O -1?

// Antes de empezar a intentar crear reglas imaginarias para ti mismo, Swift
// tiene una solución: opcionales. Un valor opcional es uno que podría tener
// un valor o no. A la mayoría de la gente le resulta difícil entender los
// opcionales, y eso está bien. Voy a intentar explicarlo de varias maneras,
// así que espero que uno funcione.

// Por ahora, imagina una encuesta en la que le preguntas a alguien:
// "En una escala del 1 al 5, ¿qué tan increíble es Taylor Swift?"
// - ¿qué respondería alguien si de alguna manera nunca hubiera oído hablar
// de ella? 1 la estaría elogiando injustamente, y 5 la elogiarían cuando no
// tenían ni idea de quién era Taylor Swift. La solución es opcional:
// "No quiero proporcionar un número en absoluto".

// Cuando usamos -> Cadena, significa "esto definitivamente devolverá una
// cadena", lo que significa que esta función no puede devolver ningún
// valor y, por lo tanto, se puede llamar segura sabiendo que siempre
// recuperará un valor que puede usar como una cadena. Si quisiéramos
// decirle a Swift que esta función podría devolver un valor o no,
// tenemos que usar esto en su lugar:

func getHaterStatus() -> String? {
    return "Hate"
}

// Tenga en cuenta el signo de interrogación adicional: ¿cadena? Significa
// "cadena opcional". Ahora, en nuestro caso, todavía estamos devolviendo
// "Odio" pase lo que pase, pero sigamos adelante y modifiquemos esa función
// aún más: si el clima es soleado, los que odian han dado la vuelta a una
// nueva página y han renunciado a su vida de odio, por lo que no queremos
// devolver ningún valor. En Swift, este "sin valor"
// tiene un nombre especial: nil.

// Cambie la función a esta:

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

// Eso acepta un parámetro de cadena (el clima) y devuelve una cadena
// (estado de odio), pero ese valor de retorno podría estar ahí o puede que
// no, es nulo. En este caso, significa que podríamos obtener una cadena, o
// podríamos obtener nil.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-1.png

// Ahora, para las cosas importantes: Swift quiere que tu código sea realmente
// seguro, y tratar de usar un valor nulo es una mala idea. Podría bloquear su
// código, podría arruinar la lógica de su aplicación o podría hacer que su
// interfaz de usuario muestre algo equivocado. Como resultado, cuando declares
// un valor como opcional, Swift se asegurará de que lo manejes de forma segura.

// Vamos a probar esto ahora: añade estas líneas de código a tu patio de recreo:

var status: String
status = getHaterStatus(weather: "rainy")

// La primera línea crea una variable de cadena, y la segunda le asigna el valor
// de getHaterStatus(), y hoy el clima es lluvioso, por lo que esos enemigos
// están odiando con seguridad.

// Ese código no se ejecutará, porque dijimos que el estado es de tipo String,
// que requiere un valor, pero getHaterStatus() podría no proporcionar uno porque
// devuelve una cadena opcional. Es decir, dijimos que definitivamente habría una
// cadena en el estado, pero getHaterStatus() podría no devolver nada en absoluto.
// Swift simplemente no te dejará cometer este error, lo cual es extremadamente
// útil porque detiene efectivamente toda una clase de errores comunes.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-2.png


// Para solucionar el problema, necesitamos hacer que la variable de estado sea
// una cadena, o simplemente eliminar la anotación de tipo por completo y dejar
// que Swift use la inferencia de tipo. La primera opción se ve así:

var status: String?
status = getHaterStatus(weather: "rainy")

// Y el segundo así:

var status = getHaterStatus(weather: "rainy")

// Independientemente de cuál elijas, ese valor podría estar ahí o no, y por
// defecto Swift no te deja usarlo peligrosamente. Como ejemplo, imagina una
// función como esta

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

// Eso toma una cadena e imprime un mensaje dependiendo de su contenido. 
// ¿Esta función toma un valor de cadena, y no una cadena? Valor: no se puede
// pasar un opcional aquí, quiere una cadena real, lo que significa que no
// podemos llamarla usando la variable de estado que hicimos.

// Swift tiene dos soluciones. Ambos se utilizan, pero definitivamente se
// prefiere uno sobre el otro. La primera solución se llama desenvoltorio
// opcional, y se hace dentro de una declaración condicional utilizando una
// sintaxis especial. Hace dos cosas al mismo tiempo: comprueba si un opcional
// tiene un valor y, si es así, lo desenvuelve en un tipo no opcional y luego
// ejecuta un bloque de código.

// La sintaxis se ve así:

if let unwrappedStatus = status {
    // unwrappedStatus contains a non-optional value!
} else {
    // in case you want an else block, here you go…
}

// Estas declaraciones se comprueban y se desenvuelven en una línea sucinta
// de código, lo que las hace muy comunes. Usando este método, podemos
// desenvolver de forma segura el valor de retorno de getHaterStatus() y
// asegurarnos de que solo llamamos a takeHaterAction() con una cadena válida
// y no opcional. Aquí está el código completo:

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-3.png

// Si entiendes este concepto, puedes saltar al título que dice "Forzar el
// desenvoltorio de opciones". Si todavía no estás muy seguro de los
// opcionales, sigue leyendo.

// Vale, si todavía estás aquí, significa que la explicación anterior no tenía
// sentido, o que lo entendiste, pero probablemente te vendría bien alguna
// aclaración. Los opcionales se utilizan ampliamente en Swift, por lo que
// realmente necesitas entenderlos. Voy a intentar explicarlo de nuevo, de 
// una manera diferente, ¡y espero que eso ayude!

// Aquí hay una nueva función:

func yearAlbumReleased(name: String) -> Int {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return 0
}

// Eso toma el nombre de un álbum de Taylor Swift, y vuelve el año en que fue
// lanzado. Pero si lo llamamos con el nombre del álbum "Lantern" porque
// confundimos a Taylor Swift con Hudson Mohawke (un error fácil de cometer,
// ¿verdad?) Entonces devuelve 0 porque no es uno de los álbumes de Taylor.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-4.png

// ¿Pero 0 tiene sentido aquí? Claro, si el álbum fue lanzado en 0 d.C. 
// cuando César Augusto era emperador de Roma, 0 podría tener sentido,
// pero aquí es confuso: la gente necesita saber de antemano que 0 significa
// "no reconocido".

// Una idea mucho mejor es reescribir esa función para que devuelva un entero
// (cuando se encontró un año) o cero (cuando no se encontró nada), lo cual es
// fácil gracias a los opcionales. Aquí está la nueva función:

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-5.png


// Ahora que devuelve nulo, tenemos que desenvolver el resultado usando
// if let porque tenemos que comprobar si existe un valor o no.

// Si entiendes el concepto ahora, puedes saltar al título que dice
// "Forzar la desenvoltura opcionales". Si todavía no estás muy seguro
// de los opcionales, sigue leyendo.

// Vale, si todavía estás aquí, significa que realmente estás luchando
// con los opcionales, así que voy a tener una última vez para explicarlos.

// Aquí hay una serie de nombres:

var items = ["James", "John", "Sally"]

// Si quisiéramos escribir una función que mirara en esa matriz y nos dijera
// el índice de un nombre en particular, podríamos escribir algo como esto:

func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}

// Eso hace un bucle a través de todos los elementos de la matriz, devolviendo
// su posición si encuentra una coincidencia, de lo contrario devolviendo 0.

// Ahora intenta ejecutar estas cuatro líneas de código

let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-6.png

// Eso dará 0, 1, 2, 0 - las posiciones de James y Bob son las mismas, a pesar
// de que una existe y la otra no. Esto se debe a que usé 0 para significar
// "no encontrado". La solución fácil podría ser hacer que -1 no se encuentre,
// pero ya sea 0 o -1, todavía tienes un problema porque tienes que recordar que
// ese número específico significa "no encontrado".

// La solución es opcional: devuelve un número entero si encontraste la
// coincidencia, o nulo de lo contrario. De hecho, este es exactamente el
// enfoque que utilizan los métodos integrados de "encontrar en matriz":
// someArray.firstIndex(of: someValue).

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-7.png

// Cuando trabajas con estos valores de "podría estar ahí, puede que no esté", 
// Swift te obliga a desenvolverlos antes de usarlos, reconociendo así que
// podría no haber un valor. Eso es lo que pasa si la sintaxis lo hace:
// si el opcional tiene un valor, desenvuélvelo y úsalo, de lo contrario no lo
// uses en absoluto. No puedes usar un valor posiblemente vacío por accidente,
// porque Swift no te lo permite.

// Si todavía no estás seguro de cómo funcionan los opcionales, entonces lo
// mejor que puedes hacer es preguntarme en Twitter y trataré de ayudarte:
// puedes encontrarme @twostraws.


// ******** Forzar el desenvoltorio opcionales ********

// Swift te permite anular su seguridad usando el carácter de signo de 
// exclamación: !. Si sabes que un opcional definitivamente tiene un valor,
// puedes forzarlo para desenvolverlo colocando este signo de exclamación
// después de él.

// Sin embargo, tenga cuidado: si prueba esto en una variable que no tiene
// un valor, su código se bloqueará.

// Para armar un ejemplo de trabajo, aquí hay un código básico:

func yearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}

var year = yearAlbumReleased(name: "Red")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year)")
}

// Ese es el año en que se lanzó un álbum. Si no se pudo encontrar el álbum,
// el año se establecerá en nulo y se imprimirá un mensaje de error.
// De lo contrario, se imprimirá el año.

// ¿O lo hará? Bueno, yearAlbumReleased() devuelve un entero opcional,
// y este código no se usa si se permite desenvolver ese opcional.
// Como resultado, imprimirá lo siguiente: "Fue lanzado en Opcional (2012)",
// ¡probablemente no sea lo que queríamos!

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-8.png

// En este punto del código, ya hemos comprobado que tenemos un valor válido,
// por lo que es un poco inútil tener otro si se deja entrar allí para
// desenvolver de forma segura el opcional. Por lo tanto, Swift proporciona
// una solución: cambie la segunda llamada print() a esta:

print("It was released in \(year!)")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-9.png

// Tenga en cuenta el signo de exclamación: significa "Estoy seguro de que
// esto contiene un valor, así que forza desenvuélvelo ahora".

// En términos generales, la fuerza de desenvolver los opcionales está mal
// visto: si te encuentras haciéndolo con frecuencia, es posible que quieras
// repensar tu enfoque.




// ******** Forzar el desenvoltorio opcionales ********

// También puedes usar esta sintaxis de signo de exclamación para crear 
// opciones implícitamente desenvueltas, que es donde algunas personas
// realmente comienzan a confundirse. ¡Así que, por favor,
// lea esto detenidamente!

// Una variable regular debe contener un valor. Ejemplo: La cadena debe
// contener una cadena, incluso si esa cadena está vacía, es decir, "".
// No puede ser nulo.

// Una variable opcional puede contener un valor, o puede que no. Debe
// desenvolverse antes de usarlo. Ejemplo: ¿Senda? Podría contener una
// cadena, o podría contener nil. La única manera de averiguarlo
// es desenvolverlo.

// Un opcional implícitamente desenvuelto puede contener un valor, o
// puede que no, pero no es necesario desenvolverlo antes de usarlo.
// Swift no comprobará por ti, así que tienes que tener mucho cuidado.
// Ejemplo: ¡String! Podría contener una cadena, o podría contener
// nula, y decende a ti usarla adecuadamente. Es como un opcional
// normal, pero Swift te permite acceder al valor directamente sin la
// seguridad de desenvolver. Si intentas hacerlo, significa que sabes
// que hay un valor allí, pero si te equivocas, tu aplicación se bloqueará.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optionals-10.png

// The main times you're going to meet implicitly unwrapped optionals
// is when you're working with user interface elements in UIKit on iOS
// or AppKit on macOS. These need to be declared up front, but you can't
// use them until they have been created – and Apple likes to create user
// interface elements at the last possible moment to avoid any unnecessary
// work. Having to continually unwrap values you definitely know will be
// there is annoying, so these are made implicitly unwrapped.

// Don't worry if you find implicitly unwrapped optionals a bit hard to
// grasp – it will become clear as you work with the language, and
// you’ll be pleased to know they are rare in SwiftUI projects.



// ----- Encadenamiento opcional -----

// Trabajar con opcionales puede parecer un poco torpe a veces, y todo el
// desenvoltorio y la comprobación pueden llegar a ser tan onerosos que
// podrías tener la tentación de lanzar algunos signos de exclamación para
// forzar la desenvolución de las cosas para que puedas seguir con el trabajo.
// Sin embargo, tenga cuidado: si obliga a desenvolver un opcional que no
// tiene un valor, su código se bloqueará.

// Swift tiene dos técnicas para ayudar a que tu código sea menos complicado.
// El primero se llama encadenamiento opcional, que le permite ejecutar código
// solo si su opcional tiene un valor. Ponga el siguiente código en su patio de
// recreo para que comencemos:

func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)
print("The album is \(album)")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optional-chaining-1.png

// Eso mostrará "El álbum es opcional ("Taylor Swift")" en el 
// panel de resultados.

// Si quisiéramos convertir el valor de retorno de albumReleased()
// en letras mayúsculas (es decir, "TAYLOR SWIFT" en lugar de
// "Taylor Swift") podríamos llamar al método en mayúsculas ()
// de esa cadena. Por ejemplo:

let str = "Hello world"
print(str.uppercased())

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optional-chaining-2.png

// El problema es que albumReleased() devuelve una cadena opcional:
// podría devolver una cadena o podría no devolver nada en absoluto.
// Entonces, lo que realmente queremos decir es:
// "si tenemos una cuerda hacia atrás, hazla en mayúsculas, de lo
// contrario no hagas nada". Y ahí es donde entra en juego el
// encadenamiento opcional, porque proporciona exactamente ese
// comportamiento.

// Intenta cambiar las dos últimas líneas de código a esto:

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optional-chaining-3.png


// Tenga en cuenta que hay un signo de interrogación allí, que es el
// encadenamiento opcional: todo después del signo de interrogación
// solo se ejecutará si todo antes del signo de interrogación tiene
// un valor. Esto no afecta al tipo de datos subyacente del álbum,
// porque esa línea de código ahora devolverá nil o devolverá el
// nombre del álbum en mayúsculas; sigue siendo una cadena opcional.

// Sus cadenas opcionales pueden ser de todo el tiempo que necesite, por ejemplo:

let album = albumReleased(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever

// Swift los revisará de izquierda a derecha hasta que encuentre nolo,
// momento en el que se detendrá.


// ******** El operador de coalesción nil ********

// La fusión de Nil hace que su código sea mucho más simple y seguro y,
// sin embargo, tiene un nombre tan grandioso que mucha gente le tiene
// miedo. ¡Esto es una pena, porque el operador de fusión nula te hará
// la vida más fácil si te tomas el tiempo para averiguarlo!

// Lo que hace es dejarte decir "usa el valor A si puedes, pero si el
// valor A es nulo, entonces usa el valor B". Eso es todo.
// Es particularmente útil con los opcionales, porque efectivamente
// evita que sean opcionales porque usted proporciona un valor no
// opcional B. Por lo tanto, si A es opcional y tiene un valor, se usa
// (tenemos un valor). Si A está presente y no tiene valor, B se usa
// (por lo que todavía tenemos un valor). De cualquier manera,
// definitivamente tenemos un valor.

// Para darte un contexto real, intenta usar este código en tu patio de recreo:

let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")

// Ese signo de interrogación doble es el operador de coalesación nil,
// y en esta situación significa "si albumReleased() devolvió un valor,
// entonces póngalo en la variable del álbum, pero si albumReleased()
// devolvió nil, entonces use 'desconocido' en su lugar".

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/optional-chaining-4.png

// Si miras en el panel de resultados ahora, verás "El álbum es Taylor Swift"
// impreso allí, no más opciones. Esto se debe a que Swift ahora puede estar
// seguro de que recuperará un valor real, ya sea porque la función devolvió
// uno o porque está proporcionando "desconocido". Esto a su vez significa
// que no necesita desenvolver nada ni arriesgarse a que se bloquee:
// se garantiza que tiene datos reales con los que trabajar, lo que hace que
// su código sea más seguro y fácil de trabajar.



// ----- Enumeraciones -----

// Las enumeraciones, generalmente llamadas "enum" y pronunciadas "ee-num",
// son una forma de definir tu propio tipo de valor en Swift.
// En algunos lenguajes de programación son pequeñas cosas simples, pero
// Swift les añade una gran cantidad de poder si quieres
// ir más allá de lo básico.

// Comencemos con un ejemplo sencillo de antes:

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

// Esa función acepta una cadena que define el clima actual. El problema es
// que una cadena es una mala opción para ese tipo de datos: ¿es "llueva",
// "llueve" o "llueve"? ¿O tal vez "ducha", "llovizna" o "tormentoso"? Peor
// aún, ¿qué pasa si una persona escribe "Lluve" con una R mayúscula y
// alguien más escribe "Ran" porque no estaba mirando lo que escribió

// Las enumeraciones resuelven este problema permitiéndote definir un nuevo
// tipo de datos y luego definir los posibles valores que puede contener.
// Por ejemplo, podríamos decir que hay cinco tipos de clima: sol, nube,
// lluvia, viento y nieve. Si hacemos de esto una enumeración, significa que
// Swift aceptará solo esos cinco valores; cualquier otra cosa desencadenará
// un error. Y las enumeraciones entre bastidores suelen ser solo números simples,
// que son mucho más rápidas que las cadenas con las que trabajan los ordenadores.

// Vamos a poner eso en código:

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: WeatherType.cloud)

// Echa un vistazo a las tres primeras líneas: la línea 1 le da a nuestro tipo
// un nombre, WeatherType. Esto es lo que usarás en lugar de String o Int en tu
// código. La línea 2 define los cinco casos posibles que nuestra enumeració
// puede ser, como ya he descrito. La convención hace que estos comiencen con
// una letra minúscula, por lo que "sol", "nube", etc. Y la línea 3 es solo un
// corsé de cierre, que termina con la enumeración.

// Ahora echa un vistazo a cómo se usa: Modifiqué el getHaterStatus() para que
// tome un valor de WeatherType. La declaración condicional también se reescribe
// para compararla con WeatherType.sun, que es nuestro valor. Recuerda, este
// cheque es solo un número detrás de escena, que es muy rápido.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/enumerations-1.png

// Ahora, vuelve atrás y lee ese código de nuevo, porque estoy a punto de
// reescribirlo con dos cambios que son importantes. ¿Todo listo?

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatus(weather: WeatherType) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatus(weather: .cloud)

// Hice dos cambios allí. En primer lugar, cada uno de los tipos meteorológicos
// está ahora en su propia línea. Esto puede parecer un pequeño cambio, y de
// hecho en este ejemplo lo es, pero pronto se vuelve importante. El segundo
// cambio fue que escribí si weather == .sun - No necesitaba deletrear que me
// refería a WeatherType.sun porque Swift sabe que estoy comparando con una
// variable WeatherType, por lo que está usando la inferencia de tipo.

// Las enumeraciones son particularmente útiles dentro de los bloques de
// interruptores/casos, especialmente porque Swift conoce todos los valores
// que su enumeración puede tener, por lo que puede asegurarse de que los
// cubra todos. Por ejemplo, podríamos intentar reescribir el método
// getHaterStatus() en estes:

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    }
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/enumerations-2.png

// Sí, me doy cuenta de que "a los que no les va a gustar" no es una gran
// letra, pero es académica de todos modos porque este código no se
// construirá: no maneja el caso .snow, y Swift quiere que todos los casos
// estén cubiertos. Tienes que añadir un caso para ello o añadir un caso
// predeterminado.


// ******** Enums con valores adicionales ********

// Una de las características más poderosas de Swift es que las enumeraciones
// pueden tener valores adjuntos que usted define. Para ampliar un poco más
// nuestro ejemplo cada vez más dudoso, voy a añadir un valor al caso .wind
// para que podamos decir qué tan rápido es el viento. Modifica tu código a
// esto:

enum WeatherType {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

// Como puedes ver, los otros casos no necesitan un valor de velocidad, 
// lo pongo solo en el viento. Ahora, para la verdadera magia: Swift nos
// permite agregar condiciones adicionales al bloque de interruptor/caso
// para que un caso coincida solo si esas condiciones son ciertas.
// Esto utiliza la palabra clave let para acceder al valor dentro de un caso,
// luego la palabra clave where para la coincidencia de patrones.

// Aquí está la nueva función:

func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .wind:
        return "dislike"
    case .rain, .snow:
        return "hate"
    }
}

getHaterStatus(weather: WeatherType.wind(speed: 5))


// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/enumerations-3.png

// Puedes ver que el viento aparece allí dos veces, pero la primera vez es
// cierta solo si el viento es más lento que 10 kilómetros por hora.
// Si el viento es de 10 o más, eso no coincidirá. La clave es que usas let
// para obtener el valor dentro de la enumeración (es decir, para declarar
// un nombre constante al que puedes hacer referencia) y luego usas una
// condición where para comprobar.

// Swift evalúa el interruptor/caso de arriba a abajo y se detiene tan pronto
// como encuentra una coincidencia. Esto significa que si case .cloud, .wind:
// aparece antes de case .wind(let speed) donde la velocidad es
// < 10: entonces se ejecutará en su lugar, y la salida cambia.

// ¡Así que piensa cuidadosamente en cómo pides los estuches!

// Consejo: Los opcionales de Swift en realidad se implementan utilizando
// enumeraciones con valores asociados. Hay dos casos: ninguno, y algunos,
// con algunos que tienen cualquier valor dentro del opcional.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/enumerations-4.png


// ----- Estructuras -----

// Structs are complex data types, meaning that they are made up of multiple values.
// You then create an instance of the struct and fill in its values, then you can
// pass it around as a single value in your code. For example, we could define a
// Person struct type that contains two properties: clothes and shoes:

struct Person {
    var clothes: String
    var shoes: String
}

// Cuando defines una estructura, Swift la hace muy fácil de crear porque genera
// automáticamente lo que se llama un inicializador por miembros. En habla simple,
// significa que creas la estructura pasando los valores iniciales para sus dos
// propiedades, como esta:

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/structs-1.png

// Una vez que haya creado una instancia de una estructura, puede leer sus
// propiedades simplemente escribiendo el nombre de la estructura, un punto
// y luego la propiedad que desea leer:

print(taylor.clothes)
print(other.shoes)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/structs-2.png

// Si asignas una estructura a otra, Swift la copia detrás de escena para que 
// sea un duplicado completo e independiente del original. Bueno, eso no es
// estrictamente cierto: Swift utiliza una técnica llamada "copiar al escribir",
// lo que significa que en realidad solo copia tus datos si intentas cambiarlos.

// Para ayudarte a ver cómo funcionan las copias de estructuras, pon esto en tu
// patio de recreo:

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)


// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/structs-3.png

// Eso crea dos estructuras de personas, luego crea una tercera llamada 
// taylorCopy como una copia de taylor. Lo que sucede a continuación es
// la parte interesante: el código cambia taylorCopy e imprime tanto él
// como taylor. Si miras en tu panel de resultados (es posible que tengas
// que cambiar su tamaño para que quepa), verás que la copia tiene un
// valor diferente al original: cambiar uno no cambió el otro.


// ******** Funciones dentro de estructuras ********

// Puedes colocar funciones dentro de las estructuras, y de hecho es una
// buena idea hacerlo para todas las funciones que leen o cambian datos
// dentro de la estructura. Por ejemplo, podríamos añadir una función a
// nuestra estructura Persona para describir lo que lleva puesto, así:

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/structs-4.png

// Hay una cosa más que deberías saber pero que no puedes ver en ese código:
// cuando escribes una función dentro de una estructura, en su lugar se llama
// método. En Swift escribes func, ya sea una función o un método, pero la
// distinción se conserva cuando hablas de ellos.




// ----- Clases -----

// Swift tiene otra forma de construir tipos de datos complejos llamados clases.
// Se parecen a las estructuras, pero tienen una serie de diferencias importantes,
// entre las que se incluyen:

// No obtienes un inicializador automático por miembro para tus clases;
// necesitas escribir el tuyo propio.

// Puedes definir una clase como basada en otra clase, añadiendo cualquier cosa
// nueva que quieras.

// Cuando creas una instancia de una clase, se llama objeto. Si copia ese objeto,
// ambas copias apuntan a los mismos datos de forma predeterminada: cambie uno y
// la copia también cambia.

// Las tres son diferencias masivas, así que voy a cubrirlas con más profundidad
// antes de continuar.


// ******** Inicialización de un objeto ********

// Si tuviéramos que convertir nuestra estructura Person en una clase Person,
// Swift no nos dejaría escribir esto:

class Person {
    var clothes: String
    var shoes: String
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/classes-1@2x.png


// Esto se debe a que estamos declarando que las dos propiedades son String, 
// lo que si lo recuerdas significa que absolutamente deben tener un valor.
// Esto estuvo bien en una estructura porque Swift produce automáticamente
// un inicializador por miembros para nosotros que nos obligó a proporcionar
// valores para las dos propiedades, pero esto no sucede con las clases, por
// lo que Swift no puede estar seguro de que se les darán valores.

// Hay tres soluciones: hacer que los dos valores sean cadenas opcionales,
// darles valores predeterminados o escribir nuestro propio inicializador.
// La primera opción es torpe porque introduce opciones en todo nuestro
// código donde no tienen que estar. La segunda opción funciona, pero es un
// poco derrochadora a menos que se utilicen realmente esos valores
// predeterminados. Eso deja la tercera opción, y realmente es la correcta:
// escribir nuestro propio inicializador.

// Para hacer esto, crea un método dentro de la clase llamado init() que tome
// los dos parámetros que nos importan:

class Person {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

// Hay dos cosas que podrían saltar a ti en ese código.

// En primer lugar, no escribes func antes de tu método init(), porque es
// especial. En segundo lugar, debido a que los nombres de los parámetros
// que se pasan son los mismos que los nombres de las propiedades que
// queremos asignar, usted usa self. para dejar claro su significado:
// "la propiedad de ropa de este objeto debe establecerse en el parámetro
// de ropa que se pasó". Puedes darles nombres únicos si quieres, de pende
// de ti.

// Importante: Swift requiere que todas las propiedades no opcionales tengan
// un valor al final del inicializador, o para el momento en que el
// inicializador llame a cualquier otro método, lo que ocurra primero.


// ******** Herencia de clase ********

// La segunda diferencia entre las clases y las estructuras es que las clases
// pueden construirse unas sobre otras para producir cosas más grandes,
// conocidas como herencia de clases. Esta es una técnica ampliamente utilizada
// tanto en UIKit como en AppKit, incluso en los programas más básicos, por lo
// que es algo con lo que tendrás que familiarizarte con el tiempo.

// Comencemos con algo simple: una clase de Singer que tiene propiedades, que
// es su nombre y edad. En cuanto a los métodos, habrá un inicializador simple
// para manejar la configuración de las propiedades, además de un método sing()
// que genera algunas palabras:

class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

// Ahora podemos crear una instancia de ese objeto llamando a ese inicializador,
// luego leer sus propiedades y llamar a su método:

var taylor = Singer(name: "Taylor", age: 25)
taylor.name
taylor.age
taylor.sing()

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/classes-2@2x.png


// Esa es nuestra clase básica, pero vamos a construir sobre ella: quiero definir
// una clase de CountrySinger que tenga todo lo que hace la clase Singer, pero
// cuando llamo a sing() en ella quiero imprimir "Camiones, guitarras y licor" en
// su lugar.

// Por supuesto, podrías copiar y pegar el Singer original en una nueva clase
// llamada CountrySinger, pero esa es una forma perezosa de programar y volverá
// a perseguirte si haces cambios más tarde en Singer y te olvidas de copiarlos.
// En cambio, Swift tiene una solución más inteligente: podemos definir
// CountrySinger como basado en Singer y obtendrá todas sus propiedades y métodos
// para que podamos construir:

class CountrySinger: Singer {

}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/classes-3@2x.png


// Esos dos puntos son lo que hace la magia: significa "CountrySinger extiende a
// Singer". Ahora, esa nueva clase de CountrySinger (llamada subclase) aún no
// añade nada a Singer (llamada clase principal o superclase). Queremos que tenga
// su propio método sing(), pero en Swift necesitas aprender una nueva palabra
// clave: override. Esto significa: "Sé que este método fue implementado por mi
// clase principal, pero quiero cambiarlo para esta subclase".

// Tener la palabra clave de anulación es útil, porque deja clara tu intención.
// También permite a Swift comprobar tu código: si no usas la anulación, Swift
// no te permitirá cambiar un método que obtuviste de tu superclase, o si usas
// la anulación y no había nada que anular, Swift señalará tu error.

// Por lo tanto, necesitamos usar override func, así:

class CountrySinger: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

// Ahora modifica la forma en que se crea el objeto taylor:

var taylor = CountrySinger(name: "Taylor", age: 25)
taylor.sing()

// Si cambias CountrySinger a solo Singer, deberías poder ver los diferentes
// mensajes que aparecen en el panel de resultados.


// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/classes-4@2x.png

// Ahora, para complicar las cosas, vamos a definir una nueva clase llamada
// HeavyMetalSinger. Pero esta vez vamos a almacenar una nueva propiedad
// llamada noiseLevel que define lo fuerte que a este cantante de heavy metal
// en particular le gusta gritar por su micrófono.

// Esto causa un problema, y es uno que necesita ser resuelto de una manera
// muy particular:

// Swift quiere que todas las propiedades no opcionales tengan un valor.

// Nuestra clase Singer no tiene una propiedad noiseLevel.

// Por lo tanto, necesitamos crear un inicializador personalizado para
// HeavyMetalSinger que acepte un nivel de ruido.

// Ese nuevo inicializador también necesita saber el nombre y la edad del
// cantante de heavy metal, para que pueda pasarlo al cantante de superclase.

// El paso de datos a la superclase se realiza a través de una llamada de método,
// y no puede hacer llamadas de método en los inicializadores hasta que haya dado
// todos los valores de sus propiedades.

// Por lo tanto, primero tenemos que establecer nuestra propia propiedad
// (nivel de ruido) y luego pasar los otros parámetros para que la
// superclase los use.

// Eso puede sonar muy complicado, pero en el código es sencillo.
// Aquí está la clase HeavyMetalSinger, completa con su propio método sing():

class HeavyMetalSinger: Singer {
    var noiseLevel: Int

    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }

    override func sing() {
        print("Grrrrr rargh rargh rarrrrgh!")
    }
}

// Observe cómo su inicializador toma tres parámetros, luego llama a 
// super.init() para pasar el nombre y la edad a la superclase de Singer,
// pero solo después de que se haya establecido su propia propiedad.
// Verás que se usa mucho cuando se trabaja con objetos, y solo significa
// "llamar a un método en la clase de la que heredé". Por lo general, se
// usa para significar "dejar que mi clase de padres haga todo lo que tiene
// que hacer primero, luego haré mis partes extras".

// La herencia de la clase es un tema importante, así que no te preocupes si
// aún no está claro. Sin embargo, hay una cosa más que necesitas saber:
// la herencia de clases a menudo abarca muchos niveles. Por ejemplo, A podría
// heredar de B, y B podría heredar de C, y C podría heredar de D, y así suce.
// Esto le permite crear funcionalidad y reutilizar en una serie de clases, lo
// que le ayuda a mantener su código modular y fácil de entender.


// ******** Trabajar con el código Objective-C ********

// Si quieres que alguna parte del sistema operativo de Apple llame al método 
// de tu clase Swift, debes marcarlo con un atributo especial: @objc. Esto es
// la abreviatura de "Objetivo-C", y el atributo marca efectivamente el método
// como disponible para que se ejecute el código Objective-C más antiguo, que
// es casi todo iOS, macOS, watchOS y tvOS. Por ejemplo, si le pides al sistema
// que llame a tu método después de que haya pasado un segundo, tendrás que
// marcarlo con @objc.

// No te preocupes demasiado por @objc por ahora, no solo lo explicaré en
// contexto más adelante, sino que Xcode siempre te dirá cuándo es necesario.
// Alternativamente, si no quieres usar @objc para métodos individuales, puedes
// poner a @objcMembers antes de tu clase para que todos sus métodos estén
// disponibles automáticamente para Objective-C.


// ******** Valores vs Referencias ********

// When you copy a struct, the whole thing is duplicated, including 
// all its values. This means that changing one copy of a struct
// doesn't change the other copies – they are all individual. With
// classes, each copy of an object points at the same original object,
// so if you change one they all change. Swift calls structs
// "value types" because they just point at a value, and classes
// "reference types" because objects are just shared references to the
// real value.

// This is an important difference, and it means the choice between
// structs and classes is an important one:

// If you want to have one shared state that gets passed around and modified
// in place, you're looking for classes. You can pass them into functions or
// store them in arrays, modify them in there, and have that change reflected
// in the rest of your program.

// If you want to avoid shared state where one copy can't affect all the others,
// you're looking for structs. You can pass them into functions or store them in
// arrays, modify them in there, and they won't change wherever else they are
// referenced.

// If I were to summarize this key difference between structs and classes,
// I'd say this: classes offer more flexibility, whereas structs offer more
// safety. In practice, which you choose depends on the Apple framework
// you’re working with: UIKit, AppKit, SpriteKit and the other older
// frameworks rely heavily on structs for data and classes for user interface
// elements, whereas SwiftUI flips things around and uses structs for user
// interface elements and classes for data.


// Opcional: una vez que haya terminado de revisarlos, puede volver a la página
// de revisión y repasar las pruebas relacionadas con los temas anteriores.
// https://www.hackingwithswift.com/review

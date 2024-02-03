import Foundation


// ---- Tipos de datos complejos ----
// https://www.hackingwithswift.com/100/2

// La ley de Lynch dice que "cuando las cosas
// se ponen difíciles, todo el mundo se va".
// Cualquiera puede completar el primer día
// de un curso, pero se necesita diligencia
// para volver para el día 2,
// ¡bien hecho por seguir con él!

// Hoy tienes once vídeos de un minuto para ver,
// y conocerás cosas como matrices, diccionarios
// y enumeraciones.
// Como antes, si quieres profundizar en cada tema,
// hay una lectura adicional opcional, pero no
// necesitas leer eso a menos que quieras.
// En cualquier caso, hay una breve prueba para
// asegurarte de que has entendido lo que se enseñó.


// ---- Matrices (Array) ----
// https://www.hackingwithswift.com/sixty/2/1/arrays

// Las matrices son colecciones de valores que se 
// almacenan como un solo valor. Por ejemplo,
// John, Paul, George y Ringo son nombres,
// pero las matrices te permiten agruparlos en un
// solo valor llamado The Beatles.

// En código, escribimos esto:

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

// Esa última línea hace la matriz: comienza
// y termina con corchetes, con cada elemento
// de la matriz separado por una coma.

// Puedes leer los valores de una matriz escribiendo
// un número entre corchetes. Las posiciones de la
// matriz cuentan desde 0, así que si quieres leer
// "Paul McCartney" escribirías esto:

beatles[1]

// Ten cuidado: Swift se bloquea si lees un 
// elemento que no existe.
// Por ejemplo, intentar leer beatles[9] es una mala idea.

// Nota: Si está utilizando anotaciones de tipo,
// las matrices se escriben entre paréntesis:
// [String], [Int], [Double] y [Bool].


// ---- ¿Por qué Swift tiene matrices? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-arrays

// Las cadenas, los enteros, los booleanos y los dobles
// de Swift nos permiten almacenar temporalmente valores
// individuales, pero si desea almacenar muchos valores,
// a menudo utilizará matrices en su lugar.

// Podemos crear constantes y variables de matrices
// al igual que otros tipos de datos, pero la diferencia
// es que las matrices tienen muchos
// valores dentro de ellas. Por lo tanto, si quieres
// almacenar los nombres de los días de la semana, el
// pronóstico de temperatura para la próxima semana
// o las puntuaciones más altas de un videojuego,
// querrás una matriz en lugar de un solo valor.

// Las matrices en Swift pueden ser tan grandes o tan
// pequeñas como quieras. Si son variables, puede
// agregarlos libremente para acumular sus datos con
// el tiempo, o puede eliminar o incluso reorganizar
// elementos si lo desea.

// Leemos los valores de las matrices usando su posición
// numérica, contando desde 0. Este "contar desde 0" tiene
// un término técnico: podemos decir que las matrices de
// Swift se basan en cero. Swift bloqueará automáticamente
// su programa si intenta leer una matriz utilizando un
// índice no válido. Por ejemplo, crear una matriz con tres
// elementos y luego intentar leer el índice 10.

// Sé lo que estás pensando: un bloqueo de una aplicación
// es malo, ¿verdad? Correcto. Pero créeme: si Swift no se
// bloqueó, entonces es muy probable que recuperaras datos
// malos, porque intentaste leer un valor fuera de lo que
// contiene tu matriz.

// ---- Enlace de ejercicios Matrices (Array) ----
// https://www.hackingwithswift.com/review/arrays



// ---- Conjuntos ----
// https://www.hackingwithswift.com/sixty/2/2/sets

// Los conjuntos son colecciones de valores al igual
// que las matrices, excepto que tienen dos diferencias:

// Los artículos no se almacenan en ningún orden;
// se almacenan en lo que efectivamente es un pedido aleatorio.

// Ningún elemento puede aparecer dos veces en un conjunto;
// todos los elementos deben ser únicos.

// Puedes crear conjuntos directamente desde matrices, como esta:

let colors = Set(["red", "green", "blue"])

// Cuando mires el valor de los colores dentro de la salida
// del patio de recreo, verás que no coincide con el orden
// que usamos para crearlo. No es realmente un pedido
// aleatorio, simplemente no está ordenado:
// Swift no ofrece garantías sobre su pedido.
// Debido a que no están ordenados, no se pueden leer los
// valores de un conjunto usando posiciones numéricas como
// se puede hacer con las matrices.

// Si intentas insertar un elemento duplicado en un conjunto,
// los duplicados se ignoran. Por ejemplo:

let colors2 = Set(["red", "green", "blue", "red", "blue"])

// El conjunto final de colores2 solo incluirá rojo,
// verde y azul una vez.

// ---- ¿Por qué los conjuntos son diferentes de las matrices en Swift? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-are-sets-different-from-arrays-in-swift

// Tanto los conjuntos como las matrices son importantes
// en Swift, y entender cuáles son sus diferencias te
// ayudará a entender cuál elegir para
// cualquier circunstancia dada.

// Tanto los conjuntos como las matrices son colecciones
// de datos, lo que significa que tienen múltiples valores
// dentro de una sola variable. Sin embargo, lo que importa
// es cómo mantienen sus valores: los conjuntos no están
// ordenados y no pueden contener duplicados, mientras que
// las matrices conservan su orden y pueden contener duplicados.

// Esas dos diferencias pueden parecer pequeñas, pero tienen
// un efecto secundario interesante: debido a que los
// conjuntos no necesitan almacenar sus objetos en el orden
// en que los agrega, en su lugar pueden almacenarlos en un
// orden aparentemente aleatorio que los optimiza para una
// recuperación rápida. Por lo tanto, cuando dices "este
// conjunto contiene el elemento X", obtendrás una respuesta
// en una fracción de segundo, sin importar
// lo grande que sea el conjunto.

// En comparación, las matrices deben almacenar sus artículos
// en el orden que les das, por lo que para comprobar
// si el artículo X existe en una matriz que contiene
// 10.000 artículos, Swift debe comenzar en el primer
// artículo y comprobar cada artículo hasta que se
// encuentre, o tal vez no se encuentre en absoluto.

// Esta diferencia significa que los conjuntos son más
// útiles para los momentos en los que quieres decir
// "¿existe este artículo?" Por ejemplo, si quieres
// comprobar si una palabra aparece en un diccionario,
// debes usar un conjunto: no tienes duplicados y
// quieres hacer una búsqueda rápida.

// Para obtener más información sobre este tema, e
// cha un vistazo a la publicación de Antoine van
// der Lee:
// https://www.avanderlee.com/swift/array-vs-set-differences-explained/

// ---- Enlace de ejercicios Conjuntos ----
// https://www.hackingwithswift.com/review/sets


// ---- Tuplas ----
// https://www.hackingwithswift.com/sixty/2/3/tuples

// Las tuplas le permiten almacenar varios valores juntos
// en un solo valor. Eso puede sonar como matrices,
// pero las tuplas son diferentes:

// No puedes añadir o eliminar elementos de una tupla;
// son de tamaño fijo.

// No se puede cambiar el tipo de elementos en una tupla;
// siempre tienen los mismos tipos con los que se crearon.

// Puedes acceder a los elementos de una tupla usando
// posiciones numéricas o nombrándolos, pero Swift no
// te permite leer números o nombres que no existen.

// Las tuplas se crean colocando varios elementos
// entre paréntesis, de esta manera:

var name = (first: "Taylor", last: "Swift")

// A continuación, accede a los elementos utilizando
// posiciones numéricas a partir de 0:

name.0

// O puedes acceder a los artículos usando sus nombres:

name.first

// Recuerda, puedes cambiar los valores dentro de una tupla
// después de crearla, pero no los tipos de valores.
// Por lo tanto, si intentaras cambiar el nombre para que sea
// (primero: "Justin", edad: 25 años), obtendrías un error.


// ---- ¿En qué se diferencian las tuplas de las matrices en Swift? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/how-are-tuples-different-from-arrays-in-swift

// Cuando estás aprendiendo, las tuplas y matrices de Swift
// pueden parecer que son lo mismo, pero en realidad no
// podrían ser mucho más diferentes.

// Tanto las tuplas como las matrices nos permiten mantener
// varios valores en una variable, pero las tuplas tienen
// un conjunto fijo de cosas que no se pueden cambiar,
// mientras que las matrices variables pueden tener elementos
// añadidos indefinidamente.

// Por ejemplo, si quisiéramos una tupla variable para
// almacenar un sitio web, podríamos escribir esto:

var website = (name: "Apple", url: "www.apple.com")

// Si quisiéramos añadir a eso la fecha de la última vez que
// visitamos el sitio, no podríamos, son dos elementos de cadena,
// nombre y url, nada más. Debido a que son específicos
// y tienen nombre, Swift nos permite leerlos como
// website.name y website.url.

// En comparación, si quisiéramos una matriz en su lugar,
// podríamos haber escrito esto:

var website = ["Apple", "www.apple.com"]

// Eso ya no tiene nombres, por lo que necesitamos leer
// los valores usando números enteros:
// sitio web[0] y sitio web[1]. También podemos añadir
// más cosas libremente, porque es una matriz variable:
// puede contener cualquier número de cadenas, en lugar
// de solo las dos que especificamos.

// Otra ventaja de las tuplas es que cada valor es creado
// específicamente por usted, por lo que, además de
// proporcionar un nombre, también proporciona un tipo.
// Por lo tanto, podrías crear una tupla como esta:

var person = (name: "Paul", age: 40, isMarried: true)

// Eso combina una cadena, un entero y un booleano en un
// solo valor, lo que sería bastante feo en una matriz.

// Los diccionarios proporcionan un tercer caso interesante,
// porque nos dan parte del nombre de seguridad de las tuplas,
// pero pueden crecer y cambiar como matrices.
// Digo "algo de la seguridad del nombre" porque no podemos
// garantizar que exista un valor en particular en un
// diccionario como podemos con una tupla, solo tenemos que
// intentar leerlo y manejar el opcional que vuelve.

// ---- Enlace de ejercicios Tuplas ----
//https://www.hackingwithswift.com/review/tuples



// ---- Matrices vs conjuntos vs tuplas ----
// https://www.hackingwithswift.com/sixty/2/4/arrays-vs-sets-vs-tuples

// Las matrices, conjuntos y tuplas pueden parecer
// similares al principio, pero tienen usos distintos.
// Para ayudarte a saber cuál usar, aquí hay algunas reglas.

// Si necesita una colección específica y fija de valores
// relacionados donde cada elemento tiene una posición o
// nombre precisos, debe usar una tupla:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// Si necesita una colección de valores que deben ser únicos
// o necesita poder comprobar si un elemento específico está
// allí extremadamente rápido, debe usar un conjunto:

let set = Set(["aardvark", "astronaut", "azalea"])

// Si necesita una colección de valores que puedan contener
// duplicados, o si el orden de sus artículos es importante,
// debe usar una matriz:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Las matrices son, con mucho, las más comunes de los tres tipos.


// ---- ¿Cuándo deberías usar una matriz, un conjunto o una tupla en Swift?
// https://www.hackingwithswift.com/quick-start/understanding-swift/when-should-you-use-an-array-a-set-or-a-tuple-in-swift

// Debido a que las matrices, los conjuntos y las tuplas
// funcionan de maneras ligeramente diferentes,
// es importante asegurarse de elegir la correcta para
// que sus datos se almacenen de manera correcta y eficiente.

// Recuerde: las matrices mantienen el orden y pueden tener
// duplicados, los conjuntos no están ordenados y no pueden
// tener duplicados, y las tuplas tienen un número fijo de
// valores de tipos fijos dentro de ellas.

// Así que:

// Si quieres almacenar una lista de todas las palabras en un
// diccionario para un juego, que no tiene duplicados y el
// orden no importa, así que irías por un set.

// Si desea almacenar todos los artículos leídos por un
// usuario, usaría un conjunto si el pedido no importaba
// (si todo lo que le importaba era si lo habían leído o no),
// o usaría una matriz si el orden sí importaba.

// Si quieres almacenar una lista de puntuaciones altas para
// un videojuego, que tiene un orden que importa y podría
// contener duplicados (si dos jugadores obtienen la misma
// puntuación), por lo que usarías una matriz.

// Si quieres almacenar artículos para una lista de tareas
// pendientes, eso funciona mejor cuando el pedido es
// predecible, por lo que debes usar una matriz.

// Si quieres tener con precisión dos cadenas,
// o precisamente dos cadenas y un entero, o
// precisamente tres booleanos, o similar,
// debes usar una tupla.

// ---- Enlace de ejercicios Matrices vs conjuntos vs tuplas ----
// https://www.hackingwithswift.com/review/arrays-vs-sets-vs-tuples



// ---- Diccionarios ----
// https://www.hackingwithswift.com/sixty/2/5/dictionaries

// Los diccionarios son colecciones de valores al igual que 
// las matrices, pero en lugar de almacenar cosas con una
// posición entera, puedes acceder a ellas usando lo que quieras.

// La forma más común de almacenar los datos del diccionario
// es el uso de cadenas. Por ejemplo, podríamos crear un
// diccionario que almacene la altura de los
// cantantes usando su nombre:

let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// Al igual que las matrices, los diccionarios comienzan y
// terminan con corchetes y cada elemento está separado
// con una coma.
// Sin embargo, también usamos dos puntos para separar
// el valor que desea almacenar (p. ej. 1.78) del
// identificador bajo el que desea almacenarlo
// (p. ej. "Taylor Swift").

// Estos identificadores se llaman claves, y puedes usarlos
// para leer los datos del diccionario:

heights["Taylor Swift"]

// Nota: Cuando se utilizan anotaciones de tipo, los diccionarios
// se escriben entre paréntesis con dos puntos entre el
// identificador y los tipos de valor.
// Por ejemplo, [Cadena:Doble] y [Cadena: Cadena].


// ----  ¿Por qué Swift tiene diccionarios y matrices? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-dictionaries-as-well-as-arrays

// Los diccionarios y las matrices son ambas formas de almacenar muchos 
// datos en una variable, pero los almacenan de diferentes maneras:
// los diccionarios nos permiten elegir una "clave" que identifique el
// elemento que queremos agregar, mientras que las matrices solo agregan
// cada elemento de forma secuencial.

// Por lo tanto, en lugar de tratar de recordar que el índice de matriz 7
// significa el país de un usuario, podríamos simplemente escribir
// user["country"], es mucho más conveniente.

// Los diccionarios no almacenan nuestros artículos utilizando un índice,
// sino que optimizan la forma en que almacenan los artículos para una
// recuperación rápida. Por lo tanto, cuando decimos user["country"],
// devolverá el artículo en esa clave (o nil) al instante, incluso si
// tenemos un diccionario con 100.000 artículos en su interior.

// Recuerde, no se puede garantizar que exista una clave en un diccionario.
// Esta es la razón por la que leer un valor de un diccionario podría no
// devolver nada: ¡es posible que hayas solicitado una clave que no existe!


// ---- Enlace de ejercicios Diccionarios ----
// https://www.hackingwithswift.com/review/dictionaries



// ---- Valores predeterminados del diccionario ----
//https://www.hackingwithswift.com/sixty/2/6/dictionary-default-values

// Si intentas leer un valor de un diccionario usando una clave que no
// existe, Swift te enviará de vuelta a nil, nada en absoluto.
// Si bien esto podría ser lo que quieres, hay una alternativa:
// podemos proporcionar al diccionario un valor predeterminado para usar
// si solicitamos una clave que falta.

// Para demostrar esto, creemos un diccionario de helados
// favoritos para dos personas:ç

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

// Podemos leer el helado favorito de Paul así:

favoriteIceCream["Paul"]

// Pero si intentáramos leer el helado favorito de Charlotte,
// volveríamos a ser nero, lo que significa que Swift
// no tiene un valor para esa clave:

favoriteIceCream["Charlotte"]

// Podemos arreglar esto dándole al diccionario un valor predeterminado
// de "Desconocido", de modo que cuando no se encuentra ningún helado
// para Charlotte, obtengamos "Desconocido" en lugar de nulo:

favoriteIceCream["Charlotte", default: "Unknown"]


// ---- ¿Por qué Swift tiene valores predeterminados para los diccionarios? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-default-values-for-dictionaries

// Cada vez que leas un valor de un diccionario, puedes recuperar
// un valor o podrías recuperar el valor, es posible que no haya
// ningún valor para esa clave.
// No tener ningún valor puede causar problemas en su código,
// sobre todo porque necesita agregar funcionalidad adicional
// para manejar los valores que faltan de forma segura,
// y ahí es donde entran en adía los valores predeterminados
// del diccionario:
// le permiten proporcionar un valor de copia de seguridad
// para usar cuando la clave que solicita no existe.

// Por ejemplo, aquí hay un diccionario que almacena los
// resultados del examen para un estudiante:

let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]

// Como puedes ver, hicieron tres exámenes y obtuvieron una puntuación
// del 100 %, el 85 % y el 75 % en inglés, francés y geografía.
// Si quisiéramos leer su puntuación de historia, la forma en que
// lo hagamos depende de lo que queramos:

// Si un valor que falta significa que el estudiante no resistó
// a la prueba, entonces podríamos usar un valor predeterminado
// de 0 para que siempre obtengamos un número entero.

// Si un valor que falta significa que el estudiante aún no ha
// hecho el examen, entonces deberíamos omitir el valor
// predeterminado y, en su lugar, buscar un valor nulo.

// Por lo tanto, no es que siempre necesites un valor predeterminado
// cuando trabajas con diccionarios, pero cuando lo haces es fácil:

let historyResult = results["history", default: 0]


// ---- Enlace de ejercicios Valores predeterminados del diccionario ----
// https://www.hackingwithswift.com/review/dictionary-default-values



// ---- Creación de colecciones vacías ----
// https://www.hackingwithswift.com/sixty/2/7/creating-empty-collections

// Las matrices, conjuntos y diccionarios se llaman colecciones, 
// porque recopilan valores juntos en un solo lugar.

// Si desea crear una colección vacía, simplemente escriba su tipo
// seguido de paréntesis de apertura y cierre. 
// Por ejemplo, podemos crear un diccionario vacío con cadenas
// para claves y valores como este:

var teams = [String: String]()

// Luego podemos añadir entradas más adelante, así:

teams["Paul"] = "Red"

// Del mismo modo, puedes crear una matriz vacía
// para almacenar enteros como este:

var results = [Int]()

// La excepción es crear un conjunto vacío, que se hace de manera diferente:

var words = Set<String>()
var numbers = Set<Int>()

// Esto se debe a que Swift tiene una sintaxis especial solo para
// diccionarios y matrices; otros tipos deben usar la sintaxis de
// corchetes de ángulo como conjuntos.

// Si lo deseas, podrías crear matrices y diccionarios
// con una sintaxis similar:

var scores = Dictionary<String, Int>()
var results = Array<Int>()


// ---- ¿Por qué querrías crear una colección vacía? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-create-an-empty-collection

// Cuando estás aprendiendo Swift, es común ver ejemplos como este:

let names = ["Eleanor", "Chidi", "Tahani", "Jianyu", "Michael", "Janet"]

// Esa es una matriz constante de seis cadenas, y debido a que es constante,
// significa que no podemos agregar más cosas a la matriz:
// conocemos todos nuestros elementos cuando se crea la matriz,
// por lo que el resto de nuestro programa
// solo está usando esos datos fijos.

// Pero a veces no conoces todos tus datos por adelantado, y en esos casos
// es más común crear una colección vacía y luego añadir
// cosas a medida que calculas tus datos.

// Por ejemplo, tenemos nuestra matriz de nombres fijos arriba,
// y si quisiéramos averiguar qué nombres
// comenzaron con J, entonces lo haríamos:

// Crear una matriz de cadenas vacía llamada algo así comojNames

// Go over every name in the original names array and check
// whether it starts with “J” 

// Si lo hace, añádelo a la matriz jNames.

// Cuando hayamos repasado todos los nombres, terminaremos
// con dos cadenas en jNames: Jianyu y Janet.

// Por supuesto, si nuestra comprobación fuera qué nombres
// comenzaron con "X", entonces terminaríamos sin nombres en
// la matriz, y eso está bien. Comenzó como vacío y terminó como vacío.

// Más adelante en este libro veremos el código Swift necesario para
// que todo esto funcione de verdad.

// ---- Enlace de ejercicios Creación de colecciones vacías ----
// https://www.hackingwithswift.com/review/creating-empty-collections


// ---- Enumeraciones ----
// https://www.hackingwithswift.com/sixty/2/8/enumerations

// Las enumeraciones, generalmente llamadas solo enumeraciones, son una
// forma de definir grupos de valores relacionados de una manera que los
// haga más fáciles de usar.

// Por ejemplo, si quisieras escribir algún código para representar el
// éxito o el fracaso de algún trabajo que estabas haciendo, podrías
// representarlo como cadenas:

let result = "failure"

// Pero, ¿qué pasa si alguien usa accidentalmente un nombre diferente?

let result2 = "failed"
let result3 = "fail"

// Esas tres son cuerdas diferentes, por lo que significan cosas diferentes.

// Con las enumeraciones podemos definir un tipo de resultado que puede ser
// éxito o fracaso, como este:

enum Result {
    case success
    case failure
}

// Y ahora, cuando lo usamos, debemos elegir uno de esos dos valores:

let result4 = Result.failure

// Esto evita que utilices accidentalmente cadenas diferentes cada vez.


// ----  ¿Por qué Swift necesita enumeraciones? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-enums

// Las enumeraciones son una característica extraordinariamente poderosa
// de Swift, y las verás usadas de muchas maneras y lugares. Muchos idiomas
// no tienen enumeraciones y se las las pasan bien, ¡así que podrías
// preguntarte por qué Swift necesita enumeraciones!

// Bueno, en su forma más simple, una enumerada es simplemente
// un buen nombre para un valor.
// Podemos hacer una enumerada llamada Dirección con casos para
// norte, sur, este y oeste, y referirnos a los de nuestro código.
// Claro, podríamos haber usado un entero en su lugar,
// en cuyo caso nos referiríamos a 1, 2, 3 y 4, pero ¿realmente
// podrías recordar lo que significaba 3? ¿Y si escribiste 5 por error?

// Por lo tanto, las enumeraciones son una forma de decir que
// Direction.north significa algo específico y seguro.
// Si huéramos escrito Direction.thatWay y no existiera tal caso,
// Swift simplemente se negaría a construir nuestro código,
// no entiende el caso de la enumeración. Detrás de escena,
// Swift puede almacenar sus valores de enumeración de forma
// muy sencilla, por lo que son mucho más rápidos de crear y
// almacenar que algo así como una cadena.

// A medida que progreses, aprenderás cómo Swift nos permite añadir más
// funcionalidad a las enumeraciones: son más potentes en Swift que en
// cualquier otro idioma que haya visto.

// ---- Enlace de ejercicios Enumeraciones ----
// https://www.hackingwithswift.com/review/enumerations



// ---- Valores asociados a Enum ----
//https://www.hackingwithswift.com/sixty/2/9/enum-associated-values

// Además de almacenar un valor simple, las enumeraciones también pueden
// almacenar los valores asociados adjuntos a cada caso.
// Esto le permite adjuntar información adicional a sus enumeraciones
// para que puedan representar datos más matizados.

// Por ejemplo, podríamos definir una enumeración que almacena
// varios tipos de actividades:

enum Activity {
    case bored
    case running
    case talking
    case singing
}

// Eso nos permite decir que alguien está hablando, pero no sabemos de
// qué están hablando, o podemos saber que alguien está corriendo,
// pero no sabemos a dónde está corriendo.


// Los valores asociados a Enum nos permiten
// añadir esos detalles adicionales:

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

// Ahora podemos ser más precisos: podemos decir que alguien
// está hablando de fútbol:

let talking = Activity.talking(topic: "football")


// ---- ¿Por qué querrías asociar un valor con un caso de enumeración? ----
//https://www.hackingwithswift.com/quick-start/understanding-swift/why-would-you-want-to-associate-a-value-with-an-enum-case

// Una de las características más poderosas de las enumeraciones de Swift
// es su capacidad para almacenar uno o más valores asociados,
// piezas adicionales de información que describen el caso de
// la enumeración con más detalle.

// Los valores asociados se pueden adjuntar a cada caso,
// o solo a algunos casos.
// Además, cada caso puede tener tantos valores asociados como quieras,
// siempre y cuando cada uno tenga un tipo.

// Por ejemplo, podríamos crear una enumeración meteorológica con tres casos:

enum Weather {
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
}

// Eso significa que nuestro clima puede ser soleado, puede ser ventoso o puede
// ser lluvioso. Sin embargo, cuando hace viento, también pedimos almacenar lo
// rápido que es el viento como un entero, ya sean 10 kilómetros por hora
// (kph), 20, 30, y así suces. Y cuando llueve, estamos almacenando un porcentaje
// de probabilidad de que ocurra la lluvia y un valor de volumen,
// almacenando cuánta lluvia se almacenará.

// Podríamos hacer algo similar, pero sería bastante desagradable.
// Imagina esto:

enum Weather {
    case sunny
    case lightBreeze
    case aBitWindy
    case quiteBlusteryNow
    case nowThatsAStrongWind
    case thisIsSeriousNow
    case itsAHurricane
}

// Eso nos da más formas de describir el clima ventoso,
// pero es muy impreciso:
// hemos pasado de ser capaces de distinguir entre un
// viento de 10 km por h y un viento de 15 km por h. Peor aún,
// si no hubieras visto la lista ordenada como está arriba,
// ¿sabrías que se suponía que aBitWindy era más fuerte que
// lightBreeze, pero menos fuerte que bastanteBlusteryNow?

// Ahora imagina tratar de trabajar con el caso rainy, 
// donde necesitamos almacenar dos números enteros.
// Terminaríamos teniendo que tener casos que describan
// una baja probabilidad de lluvia ligera, una baja
// probabilidad de lluvia moderada, una baja probabilidad
// de lluvia intensa, una probabilidad moderada de lluvia
// ligera, una probabilidad moderada de lluvia moderada...
// bueno, ya lo entiendes.

// Por lo tanto, las enumeraciones con valores asociados
// nos permiten agregar información adicional a un caso
// de enumeración: piense en ellos como adjetivos de un
// sustantivo, porque nos permite describir la cosa con
// más detalle.

// ---- Enlace de ejercicios  Valores asociados a Enum ----
// https://www.hackingwithswift.com/review/enum-associated-values



// ---- Valores brutos de Enum ----
// https://www.hackingwithswift.com/sixty/2/10/enum-raw-values

// A veces necesitas ser capaz de asignar valores a las enumeraciones para
// que tengan significado. Esto te permite crearlos dinámicamente
// y también usarlos de diferentes maneras.

// Por ejemplo, podrías crear una enumeración de Planet que almacene valores
// enteros para cada uno de sus casos:

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

// Swift asignará automáticamente a cada uno de ellos un número a partir
// de 0, y puede usar ese número para crear una instancia del caso de
// enumeración apropiado. Por ejemplo, a la tierra se le dará el
// número 2, así que puedes escribir esto:

let earth = Planet(rawValue: 2)

// Si lo desea, puede asignar a uno o más casos un valor específico,
// y Swift generará el resto. No es muy natural que pensemos en la
// Tierra como el segundo planeta, así que podrías escribir esto:

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

// Ahora Swift asignará 1 al mercurio y contará hacia arriba a partir
// de ahí, lo que significa que la Tierra es ahora el tercer planeta.


// ----  ¿Por qué las enumeraciones de Swift tienen valores brutos? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-do-swifts-enums-have-raw-values

// Piensa en una enumeración como esta:

enum Mood {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}

// Eso nos permite usar valores como Mood.happy en nuestro código,
// que es mucho más seguro y eficiente que almacenar "happy" como una cadena.

// Ahora piensa en cosas fuera de nuestro código, si estuviéramos leyendo los
// datos guardados del usuario o descargando algo de Internet.
// Claro, nuestro código Swift sabe lo que significa Mood.happy, pero
// ¿cómo podríamos enviar ese valor a través de Internet?

// Sé que esto suena un poco filosófico, pero quiero que pienses en lo que
// realmente es Mood.happy. ¿Cómo se almacena cuando se ejecuta nuestro programa?
// El punto es que realmente no nos importa la mayor parte del
// tiempo: Swift podría almacenarlo internamente como el número 556,
// y no haría ninguna diferencia.
// Todo lo que nos importa es que obtengamos la seguridad y el rendimiento que
// aportan las enumeraciones.

// Sin embargo, las cosas se complican cuando necesitamos saber
// cómo se almacena el valor.
// Si necesitamos descargar una lista de usuarios de Internet
// y saber cuál es su estado de ánimo actual, entonces ese servidor
// necesita ser capaz de enviar esos datos
// de una manera que podamos entender.

// Ahí es donde entran en ado los valores bruto de la enumeración:
// nos permiten usar enumeraciones como lo haríamos normalmente,
// pero también adjuntan un valor subyacente a cada caso.
// Dentro de nuestro código Swift, esto en su mayoría no tendrá
// ningún efecto, pero significa que ahora tenemos una forma
// específica y fija de referirnos a cada valor para
// las veces que lo necesitamos.

// Por lo tanto, para nuestra enumeración de Mood podríamos pedirle
// a Swift que proporcione valores enteros
// para cada uno de nuestros casos como este:

enum Mood: Int {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}

// En nuestro código podemos seguir escribiendo Mood.happy, Mood.sad,
// y así suceder, como antes. Sin embargo, ahora también podemos
// descargar algunos datos de un servidor, y que nos digan "este
// usuario tiene estado de ánimo 0", y emparejarlo con Mood.happy.

// Si estás interesado en seguir aprendiendo más sobre las enumeraciones,
// puedo recomendar el artículo de Antoine van der Lee sobre el tema:
// https://www.avanderlee.com/swift/enumerations/

// ---- Enlace de ejercicios Valores brutos de Enum ----
// https://www.hackingwithswift.com/review/enum-raw-values



// ----  Resumen ----

// Has llegado al final de la segunda parte de esta serie, así que resumamos:

// Las matrices, conjuntos, tuplas y diccionarios le permiten almacenar un
// grupo de elementos bajo un solo valor. Cada uno hace esto de diferentes
// maneras, por lo que lo que usas depende del comportamiento que quieras.

// Las matrices almacenan los elementos en el orden en que los agregas,
// y se accede a ellos utilizando posiciones numéricas.

// Establece los artículos de la tienda sin ningún pedido, por lo que no
// puede acceder a ellos usando posiciones numéricas.

// Las tuplas son de tamaño fijo, y puedes adjuntar nombres a cada uno de
// sus artículos. Puedes leer elementos usando
// posiciones numéricas o usando tus nombres.

// Los diccionarios almacenan los elementos de acuerdo con una clave,
// y puedes leer los elementos usando esas claves.

// Las enumeraciones son una forma de agrupar valores relacionados
// para que puedas usarlos sin errores ortográficos.

// Puede adjuntar valores sin procesar a enumeraciones para que se
// puedan crear a partir de números enteros o cadenas, o puede
// agregar valores asociados para
// almacenar información adicional sobre cada caso.

// ---- Enlace de ejercicios Resumen ----
// https://www.hackingwithswift.com/review/complex-types-summary


import Foundation


// ---- **** Primeros pasos en Swift **** ----
// https://www.hackingwithswift.com/100/1

// Como dijo Mark Twain una vez,
// "el secreto para salir adelante es empezar".
// Bueno, estás empezando ahora, así que vamos
// a sumergirnos y aprender sobre variables,
// constantes y tipos de datos simples.

// Hoy tienes ocho vídeos de un minuto para ver.
// Si quieres profundizar en cada tema, hay una
// lectura adicional opcional, pero no necesitas
// leer eso a menos que quieras. En cualquier caso,
// una vez que hayas terminado cada tema, hay una
// breve prueba para asegurarte de que has
// entendido lo que se enseñó.

// Lo sé, lo sé: la tentación es fuerte de seguir
// viendo más vídeos y hacer más pruebas más allá
// de las enlazadas a continuación, pero recuerda:
// ¡no te apresures! Es mucho mejor hacer una hora
// al día todos los días que hacer trozos con
// grandes espacios entre ellos.


// ************************************************


// ---- Variables ----
// https://www.hackingwithswift.com/sixty/1/1/variables

// Cuando inicies Xcode, te preguntará qué quieres
// hacer, y me gustaría que eligieras
// "Empezar con un parque infantil":
// esta es una caja de arena donde puedes escribir
// código Swift y ver resultados inmediatos.

// El valor predeterminado es un patio de recreo
// en blanco para iOS, lo cual está bien, así que
// haz clic en Siguiente y luego en Crear para
// guardarlo en tu escritorio.

// En este vídeo quiero presentarte
// las variables,que son lugares donde puedes
// almacenar datos del programa.
// Se llaman variables porque pueden variar;
// puedes cambiar sus valores libremente.

// Los parques infantiles comienzan con una
// línea de código que crea una variable para nosotros:

var str = "Hello, playground"

// Eso crea una nueva variable llamada str, que le da el
// valor "Hola, patio de recreo". A la derecha del patio
// de recreo se puede ver "Hola, patio de recreo" en el
// área de salida, que es Xcode que nos muestra el
// valor establecido.

// Debido a que str es una variable, podemos cambiarla:

str = "Goodbye"

// No necesitamos var la segunda vez porque la variable
// ya se ha creado, solo la estamos cambiando.


// -----  ¿Por qué Swift tiene variables? -----
//https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-variables

// Las variables nos permiten almacenar información
// temporal en nuestro programa y forman una parte
// clave de casi todos los programas de Swift.
// En última instancia, tu programa va a transformar
// los datos de alguna manera: tal vez dejes que el
// usuario ingrese en las tareas de la lista de tareas
// pendientes y luego las marques, tal vez los dejes
// vagar por una isla desierta trabajando para un
// mapache capitalista, o tal vez leas la hora del
// dispositivo y la muestres en un reloj.
// En cualquier caso, estás tomando algún
// tipo de datos, transformándolos de alguna manera
// y mostrándolos al usuario.

// Por supuesto, el "transformarlo de alguna manera"
// es donde entra la verdadera magia, porque esa es
// la parte en la que ocurre tu brillante
// idea de aplicación.
// Pero el proceso de almacenar datos en la memoria,
// aferrarse a algo que el usuario escribió o algo
// que descargó de Internet, es donde entran
// en maden las variables.

// Una vez que crees una variable usando var,
// puedes cambiarla tantas veces como quieras
// sin volver a usar var. Por ejemplo:

var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

// Si ayuda, intenta leer var como 
// "crear una nueva variable".
// Por lo tanto, la primera línea anterior
// podría leerse en voz alta como
// "crear una nueva variable llamada
// favoriteShow y darle el valor Orange
// is the New Black".
// Las líneas 2 y 3 no tienen var allí,
// por lo que modifican el valor existente
// en lugar de crear una nueva variable.

// Ahora imagina que tenías var en las
// tres líneas:
// usaste var favoriteShow cada vez.
// Eso no tendría mucho sentido, porque
// estarías diciendo "crear una nueva
// variable llamada favoriteShow"
// tres veces, y la variable claramente
// no es nueva después de tu primer intento.
// Swift marcará esto como un error,
// lo que significa que no te permitirá
// ejecutar tu código hasta que elijas
// un nombre diferente para tus variables.

// Eso puede parecer un comportamiento
// molesto, pero créeme:
// ¡es útil! Swift quiere que seas claro:
// ¿estás tratando de modificar una variable
// existente (si es así, elimina la var la
// segunda y las siguientes veces), o estás
// tratando de crear una nueva variable
// (en cuyo caso, nómbrala de otra manera).

// Una última cosa: aunque las variables
// forman el núcleo de muchos programas Swift,
// aprenderás que a veces es mejor evitarlas.
// ¡Más sobre eso más adelante!

// ---- Enlace de ejercicios Variables ----
// https://www.hackingwithswift.com/review/variables




// ---- Cadenas y números enteros ----
//https://www.hackingwithswift.com/sixty/1/2/strings-and-integers

// Swift es lo que se conoce como un lenguaje
// seguro para tipos, lo que significa que cada
// variable debe ser de un tipo específico.
// La variable str que Xcode creó para nosotros
// tiene una cadena de letras que deletrean
// "Hola, patio de recreo", por lo que Swift
// le asigna el tipo String.

// Por otro lado, si queremos almacenar
// la edad de alguien, podríamos hacer
// una variable como esta:

var age = 38

// Eso tiene un número entero, por lo que Swift
// asigna el tipo Int, abreviatura de "entero".

// Si tienes números grandes, Swift te permite
// usar guiones bajos como separadores de miles:
// no cambian el número, pero hacen que
// sea más fácil de leer. Por ejemplo:

var population = 8_000_000

// Las cadenas y los enteros son de diferentes
// tipos y no se pueden mezclar. Así que,
// aunque es seguro cambiar str a "Adiós",
// no puedo llegar a 38 porque eso es un Int,
// no una cadena.

// ---- ¿Por qué Swift es un lenguaje seguro para escribir? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-is-swift-a-type-safe-language

// Swift nos permite crear variables como cadenas
// y enteros, pero también muchos otros tipos
// de datos. Cuando creas una variable,
// Swift puede averiguar qué tipo es la variable
// en función del tipo de datos que le asignas,
// y a partir de entonces esa variable siempre
// tendrá ese tipo específico.

// Por ejemplo, esto crea una nueva variable
// llamada meaningOfLife igual a 42:

var meaningOfLife = 42

// Debido a que asignamos 42 como el valor inicial
// de meaningOfLife, Swift le asignará el tipo entero:
// un número entero. Es una variable, lo que significa
// que podemos cambiar su valor tan a menudo como sea
// necesario, pero no podemos cambiar su tipo:
// siempre será un entero.

// Esto es extremadamente útil al crear aplicaciones,
// porque significa que Swift se asegurará de que no
// cometamos errores con nuestros datos. Por ejemplo,
// no podemos escribir esto:

meaningOfLife = "Forty two"

// Eso intenta asignar una cadena a una variable que
// es un entero, lo cual no está permitido.
// Aunque rara vez cometemos un error tan obvio,
// encontrarás que este tipo de seguridad ayuda
// todos los días que escribes código con Swift.

// Piénsalo: acabamos de crear una variable
// y luego intentamos cambiar su tipo,
// lo que obviamente fallará.
// Pero a medida que sus programas crecen en
// tamaño y complejidad, se vuelve imposible
// mantener los tipos de sus variables en su
// cabeza en todo momento, por lo que estamos
// cambiando efectivamente ese trabajo
// a Swift en su lugar.

// ---- Enlace de ejercicios Cadenas y números enteros ----
// https://www.hackingwithswift.com/review/strings-and-integers




// ---- Cadenas multilínea ----
// https://www.hackingwithswift.com/sixty/1/3/multi-line-strings

// Las cadenas estándar de Swift usan comillas dobles,
// pero no se pueden incluir saltos de línea allí.

// Si quieres cadenas de varias líneas, necesitas
// una sintaxis ligeramente diferente: comienza
// y termina con tres comillas dobles, como esta:

var str1 = """
This goes
over multiple
lines
"""
// Swift es muy particular sobre cómo
// escribes esas comillas:
// el triple de apertura y cierre debe
// estar en su propia línea, pero los
// saltos de línea de apertura y cierre
// no se incluirán en tu cadena final.

// Si solo desea que las cadenas de
// varias líneas formateen su código
// de manera ordenada, y no desea que
// esos saltos de línea estén realmente
// en su cadena, termine cada línea
// con un \, como este:

var str2 = """
This goes \
over multiple \
lines
"""

// ---- ¿Por qué Swift necesita cadenas de varias líneas? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-multi-line-strings


// Las cadenas estándar de Swift comienzan
// y terminan con comillas, pero nunca deben
// contener ningún salto de línea.
// Por ejemplo, esta es una cadena estándar:

var quote = "Change the world by being yourself"

// Eso funciona bien para trozos pequeños de texto,
// pero se vuelve feo en el código fuente si tienes
// mucho texto que quieres almacenar.
// Ahí es donde entran en las cadenas de varias líneas:
// si usas comillas triples,
// puedes escribir tus cadenas en tantas
// líneas como necesites, lo que significa
// que el texto sigue siendo
// fácil de leer en tu código:

// ---- Enlace de ejercicios Cadenas multilínea ----
// https://www.hackingwithswift.com/review/multi-line-strings



// ---- Dobles y booleanos ----
// https://www.hackingwithswift.com/sixty/1/4/doubles-and-booleans

// Otros dos tipos básicos de datos en Swift son
// los dobles y los booleanos, y los usarás mucho.

// "Doble" es la abreviatura de "número de coma
// flotante de doble precisión", y es una forma
// elegante de decir que tiene valores
// fraccionarios como 38,1 o 3.141592654.

// Cada vez que creas una variable con un número
// fraccional, Swift le da automáticamente a esa
// variable el typeDouble. Por ejemplo:

var pi = 3.141

// Los dobles son diferentes de los números enteros,
// y no se pueden mezclar por accidente.

// En cuanto a los booleanos, son mucho más simples:
// solo tienen verdadero o falso, y Swift asignará
// automáticamente el tipo booleano a cualquier
// variable asignada como verdadero o falso como su valor.

// Por ejemplo:

var awesome = true

// ----  ¿Por qué Swift necesita tanto dobles como enteros? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-need-both-doubles-and-integers

// Swift nos da varias formas diferentes de almacenar
// números en nuestro código, y están diseñadas para
// resolver diferentes problemas.
// Swift no nos deja mezclarlos porque hacerlo
// (como en, 100% garantizado) conducirá a problemas.

// Los dos tipos principales de números que usarás
// se llaman enteros y dobles. Los números enteros
// tienen números enteros, como 0, 1, -100 y 65 millones,
// mientras que los dobles tienen números decimales,
// como 0,1, -1.001 y 3.141592654.

// Al crear una variable numérica, Swift decide si la
// considera un número entero o un doble en función
// de si se incluye un punto decimal. Por ejemplo:

var myInt = 1
var myDouble = 1.0

// Como puedes ver, ambos contienen el número 1,
// pero el primero es un número entero y el segundo un doble.

// Ahora, si ambos contienen el número 1, podrías 
// preguntarte por qué no podemos sumarlos juntos,
// ¿por qué no podemos escribir
// var total = myInt + myDouble? La respuesta es
// que Swift está jugando a lo seguro: ambos
// podemos ver que 1 más 1.0 será 2, pero tu doble
// es una variable, por lo que podría modificarse
// para que sea 1.1 o 3.5 o algo más.
// ¿Cómo puede Swift asegurarse de que es seguro
// agregar un entero a un doble? ¿Cómo puede estar
// seguro de que no perderá el 0,1 o el 0,5?

// La respuesta es que no puede ser seguro,
// por lo que no está permitido. Esto te
// molestará al principio, pero confía en mí:
// es útil.

// ---- Enlace de ejercicios Dobles y booleanos ----
// https://www.hackingwithswift.com/review/doubles-and-booleans



// ---- Interpolación de cadenas ----
// https://www.hackingwithswift.com/sixty/1/5/string-interpolation

//Has visto cómo puedes escribir valores para cadenas
// directamente en tu código, pero Swift también tiene
// una característica llamada interpolación de cadenas:
// la capacidad de colocar variables dentro de tus
// cadenas para hacerlas más útiles.

// Puedes colocar cualquier tipo de variable dentro
// de tu cadena; todo lo que tienes que hacer es escribir
// una barra invertida, \, seguida del nombre
// de tu variable entre paréntesis. Por ejemplo:

var score = 85
var str = "Your score was \(score)"

// Como puedes ver en la salida del patio de recreo,
// eso establece la variable str en
// "Tu puntuación fue de 85".

// Puedes hacer esto tantas veces como necesites,
// haciendo cuerdas con cuerdas si quieres:

var results = "The test results are here: \(str)"

// Como verás más adelante, la interpolación
//de cadenas no se limita solo a colocar variables,
// sino que en realidad puedes ejecutar código dentro de ella.

// ---- ¿Por qué Swift tiene interpolación de cadenas? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-string-interpolation

// Cuando llega el momento de mostrar información
// a su usuario, ya sean mensajes que se impriman,
// texto en los botones o lo que sea que se ajuste
// a la idea de su aplicación, por lo general
// dependerá en gran medida de las cadenas.

// Por supuesto, no solo queremos cadenas estáticas,
// porque queremos mostrar al usuario algún tipo de
// datos relevantes que pueda usar. Por lo tanto,
// Swift nos da la interpolación de cadenas como
// una forma de inyectar datos personalizados en
// cadenas en tiempo de ejecución: reemplaza una
// o más partes de una cadena con datos
// proporcionados por nosotros.

// Por ejemplo:

var city = "Cardiff"
var message = "Welcome to \(city)!"

// Por supuesto, en ese ejemplo trivial podríamos
// haber escrito el nombre de nuestra ciudad
// directamente en la cadena - "¡Bienvenido a Cardiff!"
// - pero en aplicaciones reales tener esto insertado
// dinámicamente es importante porque nos permite
// mostrar datos de usuario del mundo real en lugar
// de cosas que escribimos nosotros mismos.

// Swift es capaz de colocar cualquier tipo de datos
// dentro de la interpolación de cadenas. Puede que
// el resultado no siempre sea útil, pero para todos
// los tipos básicos de Swift (cadenas, enteros,
// booleanos, etc.) los resultados son excelentes.

// Consejo: La interpolación de cadenas es extremadamente
// poderosa en Swift. Si quieres ver lo que puede hacer,
// echa un vistazo a esta publicación
// de blog más avanzada de mi parte: https://www.hackingwithswift.com/articles/178/super-powered-string-interpolation-in-swift-5-0

// ---- Enlace de ejercicios Interpolación de cadenas ----
// https://www.hackingwithswift.com/review/string-interpolation




// ---- Constantes ----
// https://www.hackingwithswift.com/sixty/1/6/constants

// Ya dije que las variables tienen ese nombre porque
// sus valores pueden cambiar con el tiempo, y eso a
// menudo es útil. Sin embargo, muy a menudo quieres
// establecer un valor una vez y nunca cambiarlo,
// por lo que tenemos una alternativa a la palabra
// clave var llamada let.

// La palabra clave let crea constantes,
// que son valores que se pueden establecer
// una vez y nunca más. Por ejemplo:

let taylor = "swift"

// Si intentas cambiar eso, Xcode se negará
// a ejecutar tu código.
// Es una forma de seguridad:
// cuando usas constantes,
// ya no puedes cambiar algo por accidente.

// Cuando escribes tu propio código Swift,
// siempre debes usar let a menos que quieras
// cambiar específicamente un valor. De hecho,
// Xcode te advertirá si usas var, entonces
// no cambies la variable.


// ---- ¿Por qué Swift tiene constantes y variables? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-constants-as-well-as-variables

// Las variables son una excelente manera de almacenar
// datos temporales en sus programas, pero Swift nos
// da una segunda opción que es aún mejor:
// las constantes.
// Son idénticos a las variables en todos los sentidos,
// con una diferencia importante:
// no podemos cambiar sus valores una vez que se establecen.

// A Swift le encantan las constantes y, de hecho,
// te recomendará que uses una si creaste una variable
// y luego nunca cambiaste su valor.
// La razón de esto se trata de evitar problemas:
// cualquier variable que crees puede ser cambiada
// por ti cuando quieras y con la frecuencia
// que quieras, por lo que pierdes algo de control:
// esa pieza importante de los datos del usuario
// que ocordaste podría ser eliminada o reemplazada
// en cualquier momento en el futuro.

// Las constantes no nos permiten cambiar los valores
// una vez que se establecen, por lo que es un poco
// como un contrato con Swift: estás diciendo
// "este valor importa, no me dejes cambiarlo sin
// importar lo que haga".
// Claro, podrías intentar hacer el mismo contrato
// con una variable, pero un deslizamiento de tu
// teclado podría arruinar las cosas y Swift no
// podría ayudar.
// Al usar una constante en su lugar, solo cambiando
// var para dejar, le estás pidiendo a Swift que se
// asegure de que el valor nunca cambie, que es otra
// cosa de la que ya no tienes que preocuparte.

// ---- Enlace de ejercicios Constantes ----
// https://www.hackingwithswift.com/review/constants



// ---- Anotaciones de tipo ----
// https://www.hackingwithswift.com/sixty/1/7/type-annotations

// Swift asigna a cada variable y constante un
// tipo basado en el valor que se le da cuando se crea.
// Por lo tanto, cuando escribes código como este,
// Swift puede ver que contiene una cadena:

let str = "Hello, playground"

// Eso hará que str sea una cadena, por lo que
// no puedes intentar asignarle un entero o un
// booleano más adelante. Esto se llama inferencia
// de tipo: Swift es capaz de inferir el tipo de
// algo en función de cómo lo creaste.

// Si lo desea, puede ser explícito sobre el tipo
// de sus datos en lugar de confiar en la inferencia
// de tipo de Swift, como esto:

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true

// Tenga en cuenta que los booleanos tienen el nombre
// de tipo corto Bool, de la misma manera que los
// enteros tienen el nombre de tipo corto Int.


// ----  ¿Por qué Swift tiene anotaciones de tipo? ----
// https://www.hackingwithswift.com/quick-start/understanding-swift/why-does-swift-have-type-annotations

// Una pregunta común que la gente hace al aprender
// Swift es "¿por qué Swift tiene anotaciones de tipo?",
// que generalmente va seguida de "¿cuándo debo
// usar anotaciones de tipo en Swift?"

// La respuesta a la primera pregunta es
// principalmente una de tres razones:

// Swift no puede averiguar qué tipo se debe usar.

// Quieres que Swift use un tipo diferente al predeterminado.

// Todavía no quieres asignar un valor.

// El primero de ellos suele ocurrir solo
// en un código más avanzado.

// Por ejemplo, si estabas cargando algunos
// datos de Internet que sabes que son el nombre
// de tu político local, Swift no puede saberlo
// con anticipación, así que tendrás que decírselo.

// El segundo escenario es bastante común a medida
// que aprendes más en Swift, pero en este momento
// un ejemplo simple está tratando de crear una
// variable doble sin tener que escribir
// constantemente ".0" en todas partes:

var percentage: Double = 99

// Eso hace que el porcentaje sea el doble con un
// valor de 99,0. Sí, le hemos asignado un número
// entero, pero nuestra anotación de tipo deja
// claro que el tipo de datos real que
// queremos es el doble.

// La tercera opción ocurre cuando quieres decirle
// a Swift que una variable va a existir, pero no
// quieres establecer su valor todavía.
// Esto sucede en muchos lugares de Swift, y se ve así:

var name: String

// Luego puede asignar una cadena para nombrar
// más tarde, pero no puede asignar un tipo
// diferente porque Swift sabe que no sería válido.

// Por supuesto, la segunda pregunta aquí es 
// "¿cuándo debo usar las anotaciones de tipo
// en Swift?" Esto es mucho más subjetivo,
// porque la respuesta generalmente depende
// de tu estilo personal.

// En mi propio código, prefiero usar la inferencia
// de tipo tanto como sea posible. Eso significa que
// dejo de lado las anotaciones de tipo y dejo que
// Swift averigüe el tipo de cosas en función de los
// datos que almaceno en ellas.
// Mis razones para esto son:

// Hace que mi código sea más corto y más fácil de leer.

// Me permite cambiar el tipo de algo simplemente
// cambiando lo que sea su valor inicial.

// Algunas otras personas prefieren usar siempre
// una anotación de tipo explícita, y eso también
// funciona bien, realmente es una cuestión de estilo.

// ---- Enlace de ejercicios Anotaciones de tipo ----
// https://www.hackingwithswift.com/review/type-annotations



// ---- Resumen ----
// https://www.hackingwithswift.com/sixty/1/8/simple-types-summary

// Has llegado al final de la primera parte
// de esta serie, así que vamos a resumir.

// Haces variables usando var y constantes usando let.
// Es preferible usar constantes con la mayor frecuencia posible.

// Las cadenas comienzan y terminan con comillas dobles, 
// pero si quieres que se ejecuten en varias líneas,
// debes usar tres conjuntos de comillas dobles.

// Los enteros tienen números enteros, los dobles tienen
// números fraccionarios y
// los booleanos son verdaderos o falsos.

// La interpolación de cadenas le permite crear cadenas
// a partir de otras variables y constantes,
// colocando sus valores dentro de su cadena.

// Swift utiliza la inferencia de tipo para asignar
// a cada variable o constante un tipo, pero puede
// proporcionar tipos explícitos si lo desea.

// ---- Enlace de ejercicios Resumen ----
// https://www.hackingwithswift.com/review/simple-types-summary

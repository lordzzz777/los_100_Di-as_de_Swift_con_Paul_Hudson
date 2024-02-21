import Foundation


// ---- Estructuras, primera parte ----


// Sé que algunos de ustedes podrían estar dispuestos a hacerse cargo del nuevo aprendizaje de
// Swift de hoy, pero esperen: acaban de terminar de aprender sobre los cierres, que son un
// tema difícil. Y volviste por más. En serio, eso merece mucho respeto.

// Y tengo buenas noticias para ti. En primer lugar, no solo volveremos a cubrir los cierres en
// un día de consolidación la próxima semana, sino que pronto también comenzaremos a ponerlos en
// práctica en proyectos reales de iOS. Por lo tanto, incluso si no estás 100% seguro de cómo
// funcionan o por qué se necesitan, todo quedará claro: ¡quédate con ello!

// De todos modos, el tema de hoy son las estructuras. Las estructuras nos permiten crear
// nuestros propios tipos de datos a partir de varios tipos pequeños. Por ejemplo, podrías
// juntar tres cadenas y un booleano y decir que representa a un usuario en tu aplicación.

// Estos tipos personalizados (usuarios, juegos, documentos y más) forman el núcleo real
// del software que construimos. Si lo haces bien, a menudo tu código te seguirá.

// Como dijo una vez Fred Brooks, el autor del libro enormemente influyente The Mythical
// Man-Month, "el programador al final del ingenio... a menudo puede hacerlo mejor
// desvincularse de su código, levantarse y contemplar sus datos. La representación es la esencia
// de la programación".

// Hoy tienes siete vídeos de un minuto para ver, y aprenderás a crear tus propios tipos, añadiendo
// propiedades, métodos y más. Una vez que hayas completado cada vídeo, hay una breve lectura
// adicional opcional si estás buscando obtener más detalles, y también hay una breve prueba para
// asegurarte de que has entendido lo que se enseñó.


// ---- Creando tus propias estructuras ----

// Swift te permite diseñar tus propios tipos de dos maneras, de las cuales las más comunes se llaman
// estructuras, o simplemente estructuras. A las estructuras se les pueden dar sus propias variables
// y constantes, y sus propias funciones, y luego se pueden crear y usar como quieras.

// Comencemos con un ejemplo simple: vamos a crear una estructura deportiva que almacene su nombre como
// una cadena. Las variables dentro de las estructuras se llaman propiedades, por lo que esta es una
// estructura con una propiedad:

struct Sport {
    var name: String
}

// Eso define el tipo, por lo que ahora podemos crear y usar una instancia de él:

var tennis = Sport(name: "Tennis")
print(tennis.name)

// Hicimos tanto el nombre como la variable de tenis, por lo que podemos cambiarlas al igual que
// las variables normales:

tennis.name = "Lawn tennis"

// Las propiedades pueden tener valores predeterminados al igual que las variables regulares, y por
// lo general puede confiar en la inferencia de tipo de Swift.




// ----- : ¿Cuál es la diferencia entre una estructura y una tupla? -----

// Las tuplas de Swift nos permiten almacenar varios valores con nombre diferentes dentro de una sola
// variable, y una estructura hace lo mismo, así que ¿cuál es la diferencia y
// cuándo deberías elegir uno sobre el otro?

// Cuando solo estás aprendiendo, la diferencia es simple: una tupla es efectivamente solo una
// estructura sin nombre, como una estructura anónima. Esto significa que puedes definirlo como
// (nombre: Cadena, edad: Int, ciudad: Cadena) y hará lo mismo que la siguiente estructura:

struct User {
    var name: String
    var age: Int
    var city: String
}

// Sin embargo, las tuplas tienen un problema: si bien son geniales para un uso único, especialmente
// cuando quieres devolver varios datos de una sola función, pueden ser molestos de usar una y otra vez.

// Piénsalo: si tienes varias funciones que funcionan con la información del usuario,
// ¿prefieres escribir esto?

func authenticate(_ user: User) { //...
}
func showProfile(for user: User) { //...
}
func signOut(_ user: User) { //...
}

// O esto:

func authenticate(_ user: (name: String, age: Int, city: String)) { //...
}
func showProfile(for user: (name: String, age: Int, city: String)) { //...
}
func signOut(_ user: (name: String, age: Int, city: String)) { //...
}

// Piensa en lo difícil que sería agregar una nueva propiedad a tu estructura de usuario 
// (muy fácil de hecho), en comparación con lo difícil que sería agregar otro valor a tu tupla en
// cualquier lugar donde se usara. (¡Muy difícil y propenso a errores!)

// Por lo tanto, use tuplas cuando desee devolver dos o más valores arbitrarios de una función,
// pero prefiera estructuras cuando tenga algunos datos fijos que desea enviar o recibir varias veces.


// ---- Enlace de ejercicios Creando tus propias estructuras ----
// https://www.hackingwithswift.com/review/creating-your-own-structs



// ----- Propiedades calculadas -----

// Acabamos de crear una estructura deportiva como esta:

struct Sport {
    var name: String
}

// Eso tiene una propiedad de nombre que almacena una cadena. Estas se llaman propiedades almacenadas,
// porque Swift tiene un tipo diferente de propiedad llamada propiedad calculada, una propiedad que
// ejecuta código para averiguar su valor.

// Vamos a añadir otra propiedad almacenada a la estructura Sport, luego una propiedad calculada.
// Así es como se ve eso:

struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

// Como puede ver, olympicStatus se parece a una cadena normal, pero devuelve valores diferentes
// dependiendo de las otras propiedades.

// Podemos probarlo creando una nueva instancia de Sport:

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// ---- ¿Cuándo debe usar una propiedad computada o una propiedad almacenada? ----

// Las propiedades nos permiten adjuntar información a las estructuras, y Swift nos da dos variaciones:
// propiedades almacenadas, donde un valor se guarda en alguna memoria para ser utilizado más tarde,
// y propiedades calculadas, donde un valor se vuelve a calcular cada vez que se llama. Detrás de escena,
// una propiedad calculada es en realidad solo una llamada de función que pertenece a su estructura.

// Decidir cuál usar depende en parte de si el valor de su propiedad depende de otros datos,
// y en parte también del rendimiento. La parte de rendimiento es fácil: si lee regularmente la propiedad
// cuando su valor no ha cambiado, entonces usar una propiedad almacenada será mucho más rápido que usar
// una propiedad calculada. Por otro lado, si su propiedad se lee muy raramente y tal vez no en absoluto,
// entonces el uso de una propiedad calculada le ahorra tener que calcular su valor y almacenarla en algún lugar.

// Cuando se trata de dependencias, ya sea que el valor de su propiedad dependa de los valores de sus
// otras propiedades, entonces se giran las tablas: este es un lugar donde las propiedades calculadas
// son útiles, porque puede estar seguro de que el valor que devuelven siempre tiene en cuenta el
// último estado del programa.

// Las propiedades perezosas ayudan a mitigar los problemas de rendimiento de las propiedades almacenadas
// que rara vez se leen, y los observadores de propiedades mitigan los problemas de dependencia de las
// propiedades almacenadas; los veremos pronto.


// ---- Enlace de ejercicios Propiedades calculadas ----
// https://www.hackingwithswift.com/review/computed-properties



// ----- Observadores de propiedades -----

// Los observadores de propiedades le permiten ejecutar el código antes o después de cualquier cambio en
// la propiedad. Para demostrar esto, escribiremos una estructura de progreso que realiza un seguimiento
// de una tarea y un porcentaje de finalización:

struct Progress {
    var task: String
    var amount: Int
}

// Ahora podemos crear una instancia de esa estructura y ajustar su progreso a lo largo del tiempo:

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Lo que queremos que suceda es que Swift imprima un mensaje cada vez que cambie la cantidad, y
// podemos usar un observador de propiedades didSet para eso. Esto ejecutará algo de código cada
// vez que cambie la cantidad:

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

// También puede usar willSet para tomar medidas antes de que una propiedad cambie, pero eso rara vez se usa.


// ----- ¿Cuándo debería usar observadores de propiedades? -----

// Los observadores de propiedades de Swift nos permiten adjuntar la funcionalidad para que se
// ejecute antes o después de cambiar una propiedad, utilizando willSet y didSet, respectivamente.
// La mayoría de las veces no se requieren observadores de propiedades, solo es bueno tenerlo:
// podríamos actualizar una propiedad normalmente y luego llamar a una función nosotros mismos en código.
// Entonces, ¿por qué molestarse? ¿Cuándo usarías realmente observadores de propiedades?

// La razón más importante es la conveniencia: el uso de un observador de propiedades significa que 
// su funcionalidad se ejecutará cada vez que la propiedad cambie. Claro, podrías usar una función
// para hacer eso, pero ¿te acuerdas? ¿Siempre? ¿En cada lugar cambias la propiedad?
 
// Aquí es donde el enfoque de la función se vuelve amargo: depende de ti recordar llamar a esa función 
// cada vez que cambie la propiedad, y si lo olvidas, entonces tendrás misteriosos errores en tu código.
// Por otro lado, si adjuntas tu funcionalidad directamente a la propiedad usando didSet, siempre sucederá,
// y estás transfiriendo el trabajo de asegurarlo a Swift para que tu cerebro pueda centrarse en problemas
// más interesantes.

// Hay un lugar donde usar un observador de propiedades es una mala idea, y eso es si pones un trabajo 
// lento allí. Si tuvieras una estructura de usuario con un número entero de edad, esperarías que el
// cambio de edad tuviera lugar prácticamente al instante; después de todo, es solo un número.
// Si adjunta un observador de propiedades didSet que hace todo tipo de trabajo lento, entonces de repente
// cambiar un solo entero podría llevar mucho más tiempo de lo que esperaba,
// y podría causarle todo tipo de problemas.


// -----  ¿Cuándo deberías usar willSet en lugar de didSet? ----

// Tanto willSet como didSet nos permiten adjuntar observadores a las propiedades, lo que significa que
// Swift ejecutará algo de código cuando cambien para que tengamos la oportunidad de responder al cambio.
// La pregunta es: ¿quieres saber antes de que cambie la propiedad o después?

// La respuesta simple es esta: la mayoría de las veces usarás didSet, porque queremos tomar medidas
// después de que se haya producido el cambio para que podamos actualizar nuestra interfaz de usuario,
// guardar los cambios o lo que sea. Eso no significa que willSet no sea útil, es solo que en la práctica
// es significativamente menos popular que su contraparte.

// El tiempo más común en el que se utiliza willSet es cuando necesita conocer el estado de su programa
// antes de hacer un cambio. Por ejemplo, SwiftUI utiliza willSet en algunos lugares para manejar
// animaciones para que pueda tomar una instantánea de la interfaz de usuario antes de un cambio.
// Cuando tiene la instantánea "antes" y "después", puede comparar las dos para ver todas las partes de
// la interfaz de usuario que necesitan ser actualizadas.


// ---- Enlace de ejercicios Observadores de propiedades ----
// https://www.hackingwithswift.com/review/property-observers




// ----- Métodos -----

// Las estructuras pueden tener funciones dentro de ellas, y esas funciones pueden usar las propiedades
// de la estructura según lo necesiten. Las funciones dentro de las estructuras se llaman métodos, pero
// siguen utilizando la misma palabra clave func.

// Podemos demostrar esto con una estructura de la ciudad. Esto tendrá una propiedad de población que 
// almacena cuántas personas hay en la ciudad, además de un método collectTaxes() que devuelve el
// recuento de población multiplicado por 1000. Debido a que el método pertenece a la ciudad, puede leer
// la propiedad de la población de la ciudad actual.

// Aquí está el código:

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}

// Ese método pertenece a la estructura, por lo que lo llamamos en instancias de la estructura como esta:

let london = City(population: 9_000_000)
london.collectTaxes()

// -----  ¿Cuál es la diferencia entre una función y un método? -----

// Las funciones de Swift nos permiten nombrar una pieza de funcionalidad y ejecutarla repetidamente,
// y los métodos de Swift hacen lo mismo, así que ¿cuál es la diferencia?

// Honestamente, la única diferencia real es que los métodos pertenecen a un tipo, como estructuras,
// enumeraciones y clases, mientras que las funciones no. Eso es todo, esa es la única diferencia.
// Ambos pueden aceptar cualquier número de parámetros, incluidos los parámetros variados, y ambos
// pueden devolver valores. Diablos, son tan similares que Swift todavía usa la palabra clave func
// para definir un método.

// Por supuesto, estar asociado con un tipo específico, como una estructura, significa que los métodos
// obtienen un superpoder importante: pueden referirse a las otras propiedades y métodos dentro de ese
// tipo, lo que significa que puede escribir un método describe() para un tipo de usuario que imprime
// el nombre, la edad y la ciudad del usuario.

// Hay una ventaja más en los métodos, pero es bastante sutil: los métodos evitan la contaminación del
// espacio de nombres. Cada vez que creamos una función, el nombre de esa función comienza a tener
// significado en nuestro código: podemos escribir wakeUp() y hacer que haga algo. Por lo tanto, si
// escribes 100 funciones, terminas con 100 nombres reservados, y si escribes 1000 funciones, tienes
// 1000 nombres reservados.

// Eso puede ensuciarse rápidamente, pero al poner funcionalidad en los métodos, restringimos dónde 
// están disponibles esos nombres: wakeUp() ya no es un nombre reservado a menos que escribamos
// específicamente someUser.wakeUp(). Esto reduce la llamada contaminación, porque si la mayor parte
// de nuestro código está en métodos, entonces no obtendremos conflictos de nombres por accidente.


// ---- Enlace de ejercicios Métodos ----
// https://www.hackingwithswift.com/review/methods



// ----- Métodos de mutación -----

// Si una estructura tiene una propiedad variable, pero la instancia de la estructura se creó como 
// una constante, esa propiedad no se puede cambiar; la estructura es constante, por lo que todas
// sus propiedades también son constantes, independientemente de cómo se crearon.

// El problema es que cuando creas la estructura, Swift no tiene idea de si la usarás con constantes
// o variables, por lo que por defecto adopta el enfoque seguro: Swift no te permite escribir métodos
// que cambien las propiedades a menos que lo solicites específicamente.

// Cuando desea cambiar una propiedad dentro de un método, debe marcarla usando la palabra clave de
// mutación, de la siguiente manera:

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

// Debido a que cambia la propiedad, Swift solo permitirá que se llame a ese método en las instancias
// de Person que son variables:

var person = Person(name: "Ed")
person.makeAnonymous()



// -----  ¿Por qué necesitamos marcar algunos métodos como mutantes? ----

// Es posible modificar las propiedades de una estructura, pero solo si esa estructura se crea como una
// variable. Por supuesto, dentro de su estructura no hay forma de saber si trabajará con una estructura
// variable o una estructura constante, por lo que Swift tiene una solución simple: cada vez que el
// método de una estructura intente cambiar alguna propiedad, debe marcarla como mutante.

// No es necesario hacer nada más que marcar el método como mutante, pero hacer eso le da a Swift 
// suficiente información para evitar que ese método se utilice con instancias de estructura constantes.

// Hay dos detalles importantes que encontrarás útiles:

// Marcar los métodos como mutantes evitará que el método se llame en estructuras constantes, 
// incluso si el método en sí no cambia realmente ninguna propiedad. Si dices que cambia las
// cosas, ¡Swift te cree!

// Un método que no está marcado como mutante no puede llamar a una función mutante;
// debe marcar ambos como mutantes.

// ---- Enlace de ejercicios Métodos de mutación ----
// https://www.hackingwithswift.com/review/mutating-methods



// ----- Propiedades y métodos de las cadenas -----

// Hemos usado muchas cadenas hasta ahora, y resulta que son estructuras: tienen sus propios métodos
// y propiedades que podemos usar para consultar y manipular la cadena.

// Primero, vamos a crear una cadena de prueba:

let string = "Do or do not, there is no try."

// Puedes leer el número de caracteres de una cadena usando su propiedad count:

print(string.count)

// Tienen un método hasPrefix() que devuelve true si la cadena comienza con letras específicas:

print(string.hasPrefix("Do"))

// Puedes hacer una cadena en mayúsculas llamando a su método uppercased():

print(string.uppercased())

// E incluso puedes hacer que Swift clasifique las letras de la cadena en una matriz:

print(string.sorted())

// Las cadenas tienen muchas más propiedades y métodos: intenta escribir una cadena para que apere
// las opciones de finalización de código de Xcode.



// ----- ¿Por qué hay estructuras de cadenas en Swift? -----

// En muchos otros idiomas, las cadenas no son estructuras, son solo una secuencia de letras, 
// y nada más. Swift adopta un enfoque diferente: las cadenas son estructuras y, de hecho, vienen
// llenas de funcionalidad.

// Casi todos los tipos principales de Swift se implementan como estructuras, incluyendo cadenas, 
// enteros, matrices, diccionarios e incluso booleanos. Esto no es un accidente: las estructuras son
// simples, rápidas y eficientes en Swift, lo que significa que podemos crearlas y destruirlas tanto
// como necesitemos sin preocuparnos demasiado por el rendimiento.

// Sin embargo, las cadenas son un problema particularmente complicado de resolver porque el lenguaje
// es complejo. Sí, cosas como el alfabeto inglés toman solo 26 caracteres en minúsculas y 26 mayúsculas,
// pero Swift también necesita ser capaz de manejar otras escrituras: hebreo, árabe, cirílico,
// tamil y muchos más. Diablos, ¡hay más de 50.000 caracteres chinos!

// Donde las cosas se ponen realmente complejas es cómo manejamos los emojis, porque hay innumerables
// variaciones en el tono de la piel y el género. En lugar de almacenar cada emoji como una "letra"
// única, a menudo se dividen en varias letras especiales. Por ejemplo, el emoji "dos mujeres de la mano,
// donde la mujer de la izquierda tiene un tono de piel claro y la mujer de la derecha tiene un tono de
// piel medio oscuro", Swift en realidad almacena:

/*
  - * Woman
 
  - * Light skin tone
 
  - * Joined to
 
  - * Shaking hands
 
  - *Joined to
 
  - * Woman
 
  - * Medium-dark skin tone
 
 */

// Por lo tanto, en realidad usamos siete "letras" para almacenar un emoji en ese caso, ¡es complicado!

// Como resultado, Swift encapsula toda la funcionalidad para manejar las cadenas en la cadena por sí mismas.
// Esto significa que podemos usar una funcionalidad como la propiedad count sin preocuparnos de que cuente
// mal los emojis. La alternativa sería tener cientos de funciones independientes para manejar las cuerdas
// y sus complejidades, lo que no sería agradable.

// Ahora que entiendes algunas de las complejidades de las cadenas, eche otro vistazo
// a estas propiedades y métodos:

print(string.count)
print(string.hasPrefix("Hello"))
print(string.uppercased())
print(string.sorted())

// ¡Espero que puedas ver que hacen mucho trabajo en nuestro nombre! Ordenar una cadena con emoji causaría
// todo tipo de problemas si los caracteres individuales dentro del emoji se separaran. Afortunadamente,
// las cuerdas de Swift están diseñadas para encargarse de todo este trabajo para nosotros, y aunque causa
// algunos baches en la carretera aquí y allá, el beneficio general es enorme.

// ---- Enlace de ejercicios Propiedades y métodos de las cadenas ----
// https://www.hackingwithswift.com/review/properties-and-methods-of-strings



// ----- Propiedades y métodos de las matrices -----

// Las matrices también son estructuras, lo que significa que también tienen sus propios métodos y 
// propiedades que podemos usar para consultar y manipular la matriz.

// Aquí hay una matriz simple para empezar:

var toys = ["Woody"]

// Puedes leer el número de elementos de una matriz usando su propiedad count:

print(toys.count)

// Si quieres añadir un nuevo elemento, utiliza el método append() como este:

toys.append("Buzz")

// Puedes localizar cualquier elemento dentro de una matriz usando su método firstIndex(), de esta manera:

toys.firstIndex(of: "Buzz")

// Eso devolverá 1 porque las matrices cuentan desde 0.

// Al igual que con las cadenas, puedes hacer que Swift ordene los elementos de la matriz alfabéticamente:

print(toys.sorted())

// Por último, si quieres eliminar un elemento, usa el método remove() como este:

toys.remove(at: 0)

// Las matrices tienen muchas más propiedades y métodos: prueba a try typing toys. para que aparecen las
// opciones de finalización de código de Xcode.


// -----  ¿Por qué las cadenas se comportan de manera diferente a las matrices en Swift? -----


// Si lo piensas, las cadenas son en realidad solo un montón de caracteres individuales que se unen para
// formar el texto: "Hola", por ejemplo. Pero mientras que Swift nos permite leer los valores de la matriz
// usando myArray[3], no podemos hacer lo mismo con las cadenas: myString[3] no es válido.

// La razón de esto se remonta a los emojis y otros caracteres igualmente complejos, que se componen de
// múltiples caracteres especiales una y otra. Aunque son letras individuales, deben ser tratadas como
// una unidad cohesiva: no podemos tomar solo una parte de un emoji, porque no tendría sentido.
// Por ejemplo, la bandera de los Estados Unidos se compone de los caracteres "letra del símbolo del
// indicador regional U" y "letra del símbolo del indicador regional S", que, cuando se juntan,
// se interpretan como la bandera de los Estados Unidos.

// Esos dos caracteres no se pueden separar individualmente: si lees el primer carácter de la cadena,
// no querrás recuperar la "letra del símbolo del indicador regional U", o la mitad de la bandera de
// EE. UU., o algo raro. En cambio, ambos deben mantenerse juntos para que el emoji tenga sentido.

// Lo que esto significa es que si tienes una cadena que contiene cuatro emojis, es posible que tu cadena
// contenga 10 o incluso 20 de estos símbolos especiales. Es probable que muchos de ellos no tengan
// sentido para los humanos por sí mismos, y solo tienen el significado correcto del emoji cuando se unen
// a los otros símbolos especiales que los rodean.

// Ahora piensa en intentar leer el cuarto carácter de una cadena usando algo como myString[3].
// Si escribiera una cadena en un papel gráfico, una letra por caja, y te pidiera que saltaras
// a la cuarta letra, podrías contar a lo largo de cuatro cajas y estarías allí, en realidad no
// necesitarías saber cuántas letras había en cada caja. Y ese sistema se escala maravillosamente:
// si nuestro papel gráfico tuviera 50 cajas por página, y te pedí que leyeras la letra 50.000,
// literalmente podrías saltarte cientos de páginas sin siquiera contar las cajas, porque sabes
// que siempre hay exactamente una letra por caja y 50 cajas por página.

// Ahora imagina que te dije que en realidad solo algunas letras ocupaban una caja en el papel de cuadrícula.
// Algunos tomaron dos cajas, otros tres, otros cuatro, algunos cinco y otros incluso más que eso.
// ¿Cómo encontrarías la carta 50.000 ahora?

// La respuesta es que tendrías que empezar por la primera letra, luego moverte cuadro por cuadro,
// uno por uno, marcando cada casilla para ver si contenía una letra por sí misma o si era un carácter
// especial que formaba parte de una letra más grande.

// Bueno, este pequeño experimento mental es en realidad exactamente como funciona Swift: si pides un
// carácter de 50.000 en una cadena, tiene que comenzar desde el principio y contar todo el camino
// carta por letra hasta que encuentre el que quieres. Es lento, y se vuelve más lento cuanto más lejos
// a través de una cadena que quieres leer.

// Y así, el equipo de Swift tomó una decisión: sí, absolutamente podrían hacer que myString[49999]
// funcionara, pero si lo hicieran, podrías pensar que el código era fácil. Por lo tanto, hicieron que
// esa funcionalidad no estuviera disponible para que la gente no la escribiera por accidente y se
// preguntara por qué su código era lento.

// En caso de que tuvieras curiosidad, las matrices no tienen el mismo problema, porque almacenan todo
// en una caja que es exactamente del mismo tamaño. Esto se debe a que su uso es muy diferente al de las
// cadenas: casi siempre usamos cadenas en su totalidad, mientras que es más común leer elementos
// individuales de una matriz.

// Antes de que termine, quiero añadir una cosa que tal vez no se te haya ocurrido: si quieres comprobar
// si una cadena está vacía, deberías escribir esto:

if myString.isEmpty {
    // code
}

// Y no esto:

if myString.count == 0 {
    // code
}

// El primer código puede devolver true si la cadena tiene alguna letra, pero el segundo tiene que contar
// todas las letras de la cadena - tiene que pasar por todos los cuadros de nuestro papel de cuadrícula
// - solo para comparar ese número final con 0.

// ---- Enlace de ejercicios Propiedades y métodos de las cadenas ----
// https://www.hackingwithswift.com/review/properties-and-methods-of-arrays

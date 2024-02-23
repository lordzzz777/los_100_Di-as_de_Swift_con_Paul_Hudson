import Foundation



// ----- Protocolos y extensiones -----

// Hoy vas a aprender algunas funcionalidades verdaderamente Swifty: protocolos y programación orientada a protocolos (POP).

// POP elina las jerarquías de herencia grandes y complejas, y las reemplaza con protocolos mucho más pequeños y simples que
// se pueden combinar. Este es realmente el cumplimiento de algo que Tony Hoare dijo hace muchos años: "dentro de cada 
// programa grande, hay un pequeño programa que intenta salir".

// Hoy tienes seis vídeos de un minuto para ver, y conocerás protocolos, extensiones y la combinación de esos dos: extensiones
// de protocolo. Una vez que hayas visto cada vídeo y cualquier lectura adicional opcional que quisieras, hay una breve prueba
// para asegurarte de que has entendido lo que se enseñó.


// ---- Protocolos ----

// Los protocolos son una forma de describir qué propiedades y métodos debe tener algo. Luego le dices a Swift qué tipos usan 
// ese protocolo, un proceso conocido como adopción o conformidad con un protocolo.

// Por ejemplo, podemos escribir una función que acepte algo con una propiedad de identificación, pero no nos importa exactamente
// qué tipo de datos se utilicen. Comenzaremos creando un protocolo identificable, que requerirá que todos los tipos conformes
// tengan una cadena de identificación que se pueda leer ("get") o escribir ("set"):

protocol Identifiable {
    var id: String { get set }
}

// No podemos crear instancias de ese protocolo, es una descripción de lo que queremos, en lugar de algo que podemos crear y usar
// directamente. Pero podemos crear una estructura que se ajuste a ella:

struct User: Identifiable {
    var id: String
}

// Finalmente, escribiremos una función displayID() que acepte cualquier objeto identificable:

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


// ----- ¿Por qué Swift necesita protocolos? -----

// Los protocolos nos permiten definir cómo deben funcionar las estructuras, las clases y las enumeraciones:
// qué métodos deben tener y qué propiedades deben tener. Swift hará cumplir estas reglas por nosotros, 
// de modo que cuando digamos que un tipo se ajusta a un protocolo, Swift se asegurará de que tenga todos
// los métodos y propiedades requeridos por ese protocolo.

// En la práctica, lo que los protocolos nos permiten hacer es tratar nuestros datos en términos más generales.
// Por lo tanto, en lugar de decir "este método buy() debe aceptar un objeto Book", podemos decir
// "este método puede aceptar cualquier cosa que se ajuste al protocolo que se puede comprar". Eso podría ser un
// libro, pero también podría ser una película, un coche, un poco de café, etc.: hace que nuestro método simple
// sea más flexible, a la vez que garantiza que Swift haga cumplir las reglas para nosotros.

// En términos de código, nuestro simple método buy() que solo funciona con libros se vería así:

struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

// Para crear un enfoque más flexible y basado en el protocolo, primero crearíamos un protocolo que declare la
// funcionalidad básica que necesitamos. Estos pueden ser muchos métodos y propiedades, pero aquí solo vamos a
// decir que necesitamos una cadena de nombre

protocol Purchaseable {
    var name: String { get set }
}

// Ahora podemos seguir adelante y definir tantas estructuras como necesitemos, cada una de las cuales se ajusta
// a ese protocolo al tener una cadena de nombres:

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

// Notarás que cada uno de esos tipos tiene una propiedad diferente que no se declaró en el protocolo, y eso está bien:
// los protocolos determinan la funcionalidad mínima requerida, pero siempre podemos añadir más.

// Por último, podemos reescribir la función buy() para que acepte cualquier tipo de artículo comprable:

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

// Dentro de ese método podemos usar la propiedad de nombre de nuestro artículo de forma segura, porque Swift garantizará
// que cada artículo que se puede comprar tenga una propiedad de nombre. No garantiza que exista ninguna de las otras
// propiedades que definimos, solo las que se declaran específicamente en el protocolo.

// Por lo tanto, los protocolos nos permiten crear planos de cómo nuestros tipos comparten la funcionalidad, y luego usar
// esos planos en nuestras funciones para que trabajen en una variedad más amplia de datos.

// ---- Enlace de ejercicios Protocolos -----
// https://www.hackingwithswift.com/review/protocols


// ----- Herencia de protocolo -----

// Un protocolo puede heredar de otro en un proceso conocido como herencia de protocolo. A diferencia de las clases, puedes
// heredar de varios protocolos al mismo tiempo antes de añadir tus propias personalizaciones en la parte superior.

// Vamos a definir tres protocolos: Payable requiere tipos conformes para implementar un método calculateWages(), NeedsTraining
// requiere tipos conformes para implementar un método study(), y HasVacation requiere tipos conformes para implementar
// un método takeVacation()

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

// Ahora podemos crear un único protocolo de empleado que los reúna en un solo protocolo. No necesitamos añadir nada en la
// parte superior, así que solo escribiremos llaves abiertas y cerradas:

protocol Employee: Payable, NeedsTraining, HasVacation { }

// Ahora podemos hacer que los nuevos tipos se ajusten a ese único protocolo en lugar de a cada uno de los tres individuales.


// -----  ¿Cuándo deberíamos usar la herencia de protocolo? -----

// Swift nos permite construir un nuevo protocolo basado en los protocolos existentes, al igual que la forma en que nos
// permite construir nuevas clases basadas en las clases existentes.

// Una razón común para usar la herencia de protocolos es combinar la funcionalidad para el trabajo común. Por ejemplo:

// Todos los productos tienen un precio y un peso

// Todos los ordenadores tienen una CPU, además de la cantidad de memoria que tienen y la cantidad de almacenamiento

// Todos los portátiles tienen un tamaño de pantalla

// Definitivamente podrías definir un protocolo informático como este:

protocol Computer {
    var price: Double { get set }
    var weight: Int { get set }
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

// Pero, ¿ves cuánta duplicación ya tenemos? Ahora imagina trabajar con teléfonos y tabletas:
// más protocolos y más duplicación.

// Es mucho más simple y más flexible si dividamos nuestros protocolos en partes más pequeñas y luego los volver a
// montar como ladrillos de Lego.

// Por lo tanto, podríamos empezar por definir cómo se ve un producto:


protocol Product {
    var price: Double { get set }
    var weight: Int { get set }
}

// Entonces podríamos definir cómo se ve un ordenador, basándolo en un producto y luego añadiendo algunos extras:

protocol Computer: Product {
    var cpu: String { get set }
    var memory: Int { get set }
    var storage: Int { get set }
}

// Ahora podemos definir cómo se ve un ordenador portátil, basándolo en un ordenador (y, por lo tanto, también en
// un producto) y añadiendo otra propiedad:

protocol Laptop: Computer {
    var screenSize: Int { get set }
}

// Como puede ver, el uso de la herencia de protocolos de esta manera nos permite compartir definiciones y reducir 
// la duplicación, lo que es una excelente manera de construir funcionalidad pieza por pieza.

// La segunda razón común para usar la herencia de protocolos es añadir restricciones adicionales cuando tengan sentido.
// Por ejemplo, Swift tiene un protocolo llamado Equatable, que significa "esta cosa se puede comprobar por la igualdad
// frente a otras instancias del mismo tipo", y es lo que hace que 5 == 6 devuelva falso. Swift también tiene un protocolo
// llamado Comparable, que significa que "este tipo se puede comprobar para ver si es menor o mayor que otra instancia del
// mismo tipo", y es lo que hace que "Hello" < "World" devuelva verdadero.

// Piénsalo: si podemos saber si un objeto es menor o mayor que algún otro objeto, entonces también debemos ser capaces de
// saber cuándo es el mismo que el otro objeto. Es decir, si el número X no es menor que el número Y, y tampoco es mayor
// que el número Y, entonces X e Y deben ser iguales.

// En lugar de copiar toda la funcionalidad de Equatable en Comparable, Swift solo utiliza la herencia de protocolo para 
// que Comparable herede de Equatable.

// ---- Enlace de ejercicios Herencia de protocolo -----
// https://www.hackingwithswift.com/review/protocol-inheritance


// ----- Extensiones -----

// Las extensiones le permiten agregar métodos a los tipos existentes, para que hagan cosas para las que no fueron
// diseñadas originalmente.

// Por ejemplo, podríamos añadir una extensión al tipo Int para que tenga un método squared() que devuelva el número
// actual multiplicado por sí mismo:

extension Int {
    func squared() -> Int {
        return self * self
    }
}

// Para probar eso, solo tienes que crear un entero y verás que ahora tiene un método squared():

let number = 8
number.squared()

// Swift no te permite añadir propiedades almacenadas en extensiones, por lo que debes usar propiedades calculadas
// en su lugar. Por ejemplo, podríamos agregar una nueva propiedad calculada isEven a los enteros que devuelve true
// si tiene un número par:

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

// ---- ¿Cuándo deberías usar extensiones en Swift? ----

// Las extensiones nos permiten agregar funcionalidad a clases, estructuras y más, lo que es útil para modificar los 
// tipos que no poseemos, tipos que fueron escritos por Apple o por otra persona, por ejemplo. Los métodos añadidos
// usando extensiones son indistinguibles de los métodos que originalmente formaban parte del tipo, pero hay una
// diferencia en las propiedades: las extensiones no pueden agregar nuevas propiedades almacenadas,
// solo propiedades calculadas.

// Las extensiones también son útiles para organizar nuestro propio código, y aunque hay varias formas de hacer esto,
// quiero centrarme en dos aquí: la agrupación de conformidad y la agrupación de propósitos.

// La agrupación de conformidad significa agregar una conformidad de protocolo a un tipo como una extensión, agregando
// todos los métodos requeridos dentro de esa extensión. Esto hace que sea más fácil entender cuánto código necesita un
// desarrollador mantener en su cabeza mientras lee una extensión: si la extensión actual agrega soporte para Printable,
// no encontrará métodos de impresión mezclados con métodos de otros protocolos no relacionados.

// Por otro lado, la agrupación de propósitos significa crear extensiones para hacer tareas específicas, lo que facilita
// el trabajo con tipos grandes. Por ejemplo, es posible que tenga una extensión específicamente para manejar la carga y
// el guardado de ese tipo.

// Vale la pena añadir aquí que muchas personas se dan cuenta de que tienen una clase grande y tratan de hacerla más
// pequeña dividiéndola en extensiones. Para que quede claro: el tipo es exactamente del mismo tamaño que antes, está
// perfectamente dividido. Esto significa que es probable que sea un poco más fácil de entender, pero no significa que
// la clase sea más pequeña.

// ---- Enlace de ejercicios Extensiones -----
// https://www.hackingwithswift.com/review/extensions



// ----- Extensiones de protocolo -----

// Los protocolos te permiten describir qué métodos debería tener algo, pero no proporcionan el código que hay dentro.
// Las extensiones le permiten proporcionar el código dentro de sus métodos, pero solo afectan a un tipo de datos:
// no puede agregar el método a muchos tipos al mismo tiempo.

// Las extensiones de protocolo resuelven ambos problemas: son como extensiones regulares, excepto que en lugar de
// extender un tipo específico como Int, extiendes un protocolo completo para que todos
// los tipos conformes obtengan tus cambios.

// Por ejemplo, aquí hay una matriz y un conjunto que contiene algunos nombres:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

// Las matrices y los conjuntos de Swift se ajustan a un protocolo llamado Colección, por lo que podemos escribir
// una extensión a ese protocolo para agregar un método summarize() para imprimir la colección de manera ordenada

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

// Tanto Array como Set ahora tendrán ese método, por lo que podemos probarlo:

pythons.summarize()
beatles.summarize()


// ----- ¿Cuándo son útiles las extensiones de protocolo en Swift? -----

// Las extensiones de protocolo se utilizan en todas partes en Swift, por lo que a menudo lo verás descrito como un
// "lenguaje de programación orientado al protocolo". Los usamos para agregar funcionalidad directamente a los
// protocolos, lo que significa que no necesitamos copiar esa funcionalidad a través de muchas estructuras y clases.

// Por ejemplo, las matrices de Swift tienen un método allSatisfy() que devuelve true si todos los elementos de la
// matriz pasan una prueba. Por lo tanto, podríamos crear una matriz de números y comprobar que todos estén pares:

let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

// Eso es muy útil, pero ¿no sería más útil si también funcionara en sets? Claro que lo haría, y por eso lo hace:

let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

// El principio subyacente es idéntico: pase cada elemento de la matriz o conjunto a través de una prueba que 
// proporcione, y si eso devuelve verdadero para todos los elementos, entonces el resultado del método es verdadero.

// ¿Qué hay de los diccionarios? ¿Pueden usar esto también? Claro que pueden, y funciona de manera idéntica:
// cada par clave/valor se pasa al cierre, y debes devolver verdadero o falso. Se ve así:

let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

// Por supuesto, los desarrolladores de Swift no quieren escribir este mismo código una y otra vez, por lo que usaron
// una extensión de protocolo: escribieron un solo método allSatisfy() que funciona en un protocolo llamado Sequence,
// al que se ajustan todas las matrices, conjuntos y diccionarios. Esto significó que el método allSatisfy() estuvo
// inmediatamente disponible en todos esos tipos, compartiendo exactamente el mismo código.

// ---- Enlace de ejercicios Extensiones de protocolo -----
// https://www.hackingwithswift.com/review/protocol-extensions



// ----- Programación orientada a protocolos ----

// Las extensiones de protocolo pueden proporcionar implementaciones predeterminadas para nuestros propios métodos
// de protocolo. Esto hace que sea fácil que los tipos se ajusten a un protocolo, y permite una técnica llamada
// "programación orientada al protocolo", que elabora su código en torno a protocolos y extensiones de protocolo.

// En primer lugar, aquí hay un protocolo llamado Identificable que requiere que cualquier tipo conforme tenga una 
// propiedad id y un método identify():

protocol Identifiable {
    var id: String { get set }
    func identify()
}

// Podríamos hacer que cada tipo conforme escriba su propio método identify(), pero las extensiones de protocolo nos
// permiten proporcionar un valor predeterminado:

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

// Ahora, cuando creamos un tipo que se ajusta a Identificable, se identifica() automáticamente:

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()


// ----- ¿En qué se diferencia la programación orientada a protocolos de la programación orientada a objetos? -----

// Muchos desarrolladores de Swift describen el lenguaje como orientado al protocolo, pero ¿qué significa eso realmente?
// En particular, ¿en qué se diferencia del antiguo paradigma orientado a objetos?

// En cuanto a los hechos en bruto, no hay ninguna diferencia práctica entre los dos: ambos pueden colocar la funcionalidad 
// en los objetos, usar el control de acceso para limitar dónde se puede llamar esa funcionalidad,
// hacer que una clase herede de otra y más.

// Algunos podrían decir que la única diferencia real entre los dos es que en la programación orientada a protocolos (POP) 
// preferimos construir funcionalidad mediante la composición de protocolos ("esta nueva estructura se ajusta a los
// protocolos X, Y y Z"), mientras que en la programación orientada a objetos (OOP) preferimos construir funcionalidad a
// través de la herencia de clases. Sin embargo, incluso eso es dudoso porque los desarrolladores de OOP también suelen
// preferir la funcionalidad de composición a heredarla, simplemente es más fácil de mantener.

// De hecho, la única diferencia importante entre los dos es la mentalidad: los desarrolladores de POP se apoyan en gran
// medida en la funcionalidad de extensión de protocolo de Swift para construir tipos que obtienen gran parte de su
// comportamiento de los protocolos. Esto hace que sea más fácil compartir la funcionalidad entre muchos tipos, lo que a
// su vez nos permite construir un software más grande y potente sin tener que escribir tanto código.

// Para obtener más información sobre la programación orientada al protocolo, deberías ver la charla de Dave Abraham en
// la WWDC que introdujo el tema: https://developer.apple.com/videos/play/wwdc2015/408/

// ---- Enlace de ejercicios Programación orientada a protocolos -----
// https://www.hackingwithswift.com/review/protocol-oriented-programming



// ----- Resumen de protocolos y extensiones -----

// Has llegado al final de la novena parte de esta serie, así que vamos a resumir:

// Los protocolos describen qué métodos y propiedades debe tener un tipo conforme, pero no proporcionan las
// implementaciones de esos métodos.

// Puedes crear protocolos sobre otros protocolos, similares a las clases.

// Las extensiones le permiten agregar métodos y propiedades calculadas a tipos específicos como Int.

// Las extensiones de protocolo le permiten agregar métodos y propiedades calculadas a los protocolos.

// La programación orientada a protocolos es la práctica de diseñar la arquitectura de su aplicación como una
// serie de protocolos, y luego utilizar extensiones de protocolo para proporcionar implementaciones de
// métodos predeterminados.

// ---- Enlace de ejercicios Resumen de protocolos y extensiones -----
// https://www.hackingwithswift.com/review/protocols-and-extensions-summary

// Ese es el día 11 completo, así que espero que a estas alturas ya sepas qué hacer: ve y publica sobre tu progreso en
// línea en Twitter, Facebook, Reddit o cualquier red social que te guste. ¡Ahora estás impulsado por POP!

import Foundation



// ---- Estructuras, segunda parte ----

// Como has visto, las estructuras nos permiten combinar piezas de datos individuales para hacer
// algo nuevo, y luego adjuntar métodos para que podamos manipular esos datos.

// Hoy vas a aprender sobre algunas de las características más avanzadas de las estructuras que
// las hacen más potentes, incluyendo el control de acceso, las propiedades estáticas y la pereza.
// Sí, pereza - Bill Gates dijo una vez: "Elijo a una persona perezosa para hacer un trabajo duro,
// porque una persona perezosa encontrará una manera fácil de hacerlo". En Swift, la pereza es una
// optimización importante del rendimiento, como verás.

// Hoy tienes seis vídeos de un minuto para ver, y como siempre, una vez que hayas completado cada
// vídeo, hay una lectura adicional opcional y una prueba corta para asegurarte de que has entendido
// lo que se enseñó.

// ----- Inicializadores -----

// Los inicializadores son métodos especiales que proporcionan diferentes formas de crear 
// su estructura. Todas las estructuras vienen con una por defecto, llamada su inicializador
// por miembros;  esto le pide que proporcione un valor para cada propiedad cuando
// cree la estructura.

// Puedes ver esto si creamos una estructura de usuario que tiene una propiedad:

struct User {
    var username: String
}

// Cuando creamos una de esas estructuras, debemos proporcionar un nombre de usuario:

var user = User(username: "twostraws")

// Podemos proporcionar nuestro propio inicializador para reemplazar el predeterminado.
// Por ejemplo, es posible que queramos crear todos los nuevos usuarios como "Anónimos"
// e imprimir un mensaje, como este:

struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

// No escribes func antes de los inicializadores, pero debes asegurarte de que todas las
// propiedades tengan un valor antes de que termine el inicializador.

// Ahora nuestro inicializador no acepta parámetros, tenemos que crear la estructura de esta manera:

var user = User()
user.username = "twostraws"



// ----- ¿Cómo funcionan los inicializadores por miembros de Swift? -----

// De forma predeterminada, todas las estructuras de Swift obtienen un inicializador de miembros 
// sintetizado de forma predeterminada, lo que significa que obtenemos automáticamente un
// inicializador que acepta valores para cada una de las propiedades de la estructura.
// Este inicializador hace que sea fácil trabajar con estructuras, pero Swift hace dos cosas más
// que lo hacen especialmente inteligente.

// En primer lugar, si alguna de sus propiedades tiene valores predeterminados, se incorporarán
// al inicializador como valores de parámetros predeterminados.
// Entonces, si hago una estructura como esta:

struct User {
    var name: String
    var yearsActive = 0
}

// Entonces puedo crearlo de cualquiera de estas dos maneras:

struct Employee {
    var name: String
    var yearsActive = 0
}

let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)

// Esto los hace aún más fáciles de crear, porque solo puedes rellenar las partes que necesitas.

// La segunda cosa inteligente que hace Swift es eliminar el inicializador por miembros si creas
// un inicializador propio.

// Por ejemplo, si tuviera un inicializador personalizado que creara empleados anónimos,
// se vería así:

struct Employee {
    var name: String
    var yearsActive = 0

    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// Con eso en su lugar, ya no podía confiar en el inicializador por miembros,
// por lo que esto ya no estaría permitido:

let roslin = Employee(name: "Laura Roslin")

// Esto no es un accidente, pero es una característica deliberada: creamos nuestro propio
// inicializador, y si Swift dejó su inicializador por miembro en su lugar, entonces podría
// faltar un trabajo importante que pusimos en nuestro propio inicializador.

// Por lo tanto, tan pronto como agregue un inicializador personalizado para su estructura,
// el inicializador predeterminado por miembros desaparece. Si quieres que se quede,
// mueve tu inicializador personalizado a una extensión, como esta:

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// Crear un empleado con nombre ahora funciona
let roslin = Employee(name: "Laura Roslin")

// Al igual que la creación de un empleado anónimo
let anon = Employee()

// ---- Enlace de ejercicios Inicializadores ----
// https://www.hackingwithswift.com/review/initializers



// ----- Refiriéndose a la instancia actual -----

// Dentro de los métodos se obtiene una constante especial llamada self, que apunta a
// cualquier instancia de la estructura que se esté utilizando actualmente.
// Este autovalor es particularmente útil cuando crea inicializadores que tienen los
// mismos nombres de parámetros que su propiedad.

// Por ejemplo, si crea una estructura de persona con una propiedad de nombre,
// luego intenta escribir un inicializador que acepte un parámetro de nombre,
// self le ayuda a distinguir entre la propiedad y el parámetro: self.name se refiere
// a la propiedad, mientras que name se refiere al parámetro.

//Aquí está el código:

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// ----- ¿Cuándo te usarías a ti mismo en un método? -----

// Dentro de un método, Swift nos permite referirnos a la instancia actual de una
// estructura usando el yo, pero en términos generales, no quieres a menos que
// necesites distinguir específicamente lo que quieres decir.

// Con mucho, la razón más común para usar self es dentro de un inicializador, donde
// es probable que quieras nombres de parámetros que coincidan con los nombres de
// propiedades de tu tipo, como este:

struct Student {
    var name: String
    var bestFriend: String

    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class…")
        self.name = name
        self.bestFriend = bestFriend
    }
}

// No tienes que usar eso, por supuesto, pero se vuelve un poco torpe añadir algún tipo
// de prefijo a los nombres de los parámetros:

struct Student {
    var name: String
    var bestFriend: String

    init(name studentName: String, bestFriend studentBestFriend: String) {
        print("Enrolling \(studentName) in class…")
        name = studentName
        bestFriend = studentBestFriend
    }
}

// Fuera de los inicializadores, la razón principal para usar el auto es porque estamos en
// un cierre y Swift lo requiere para que tengamos claro que entendemos lo que está sucediendo.
// Esto solo es necesario cuando se accede a sí mismo desde dentro de un cierre que pertenece
// a una clase, y Swift se negará a construir su código a menos que lo agregue.

// ---- Enlace de ejercicios Refiriéndose a la instancia actual ----
// https://www.hackingwithswift.com/review/referring-to-the-current-instance



// ----- Propiedades Lazy -----

// Como optimización del rendimiento, Swift te permite crear algunas propiedades solo cuando se
// necesitan. Como ejemplo, considere esta estructura de FamilyTree: no hace mucho, pero en
// teoría crear un árbol genealógico para alguien lleva mucho tiempo:

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

// Podríamos usar esa estructura de FamilyTree como una propiedad dentro de una
// estructura de persona, así:

struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")

// Pero, ¿y si no siempre necesitáramos el árbol genealógico para una persona en particular?
// Si añadimos la palabra clave "Lazy" a la propiedad familyTree, Swift solo creará la
// estructura FamilyTree cuando se acceda por primera vez:

lazy var familyTree = FamilyTree()

// Así que, si quieres ver el "¡Creando un árbol genealógico!" Mensaje, debe acceder a la
// propiedad al menos una vez:

ed.familyTree


// ----- ¿Cuándo deberían ser perezosas las propiedades? -----

// Las propiedades lazy de Swift nos permiten retrasar la creación de una propiedad hasta
// que se use realmente, lo que las hace como una propiedad calculada. Sin embargo,
// a diferencia de una propiedad calculada, almacenan el resultado que se calcula, para que los
// accesos posteriores a la propiedad no vuelvan a hacer el trabajo. Esto les permite
// proporcionar un rendimiento adicional cuando no se utilizan (porque su código nunca se ejecuta),
// y un rendimiento adicional cuando se utilizan repetidamente
// (porque su valor se almacena en caché).

// Sin embargo, eso no significa que debamos hacer que todas las propiedades sean "Lazy",
// o de hecho la mayoría de las propiedades; en la práctica, la mayoría de las propiedades
// son solo propiedades almacenadas estándar. Hay algunas razones por las que preferiría las
// propiedades almacenadas o calculadas a una propiedad "Lazy", como:

// El uso de propiedades lazy puede producir accidentalmente un trabajo donde no lo esperas.
// Por ejemplo, si estás construyendo un juego y accedes a una propiedad "Lazy" compleja por
// primera vez, podría hacer que tu juego se ralentice, por lo que es mucho mejor hacer un trabajo
// lento desde el principio y quitarlo del camino.

// Las propiedades lazy siempre almacenan su resultado, lo que puede ser innecesario
// (porque no lo vas a usar de nuevo) o no tiene sentido, (porque necesita ser recalculado
// con frecuencia).

// Debido a que las propiedades lazy cambian el objeto subyacente al que están unidas,
// no puedes usarlas en estructuras constantes.

// Al intentar optimizar el código, por lo general es mejor esperar hasta que realmente 
// tengas un problema que necesitas optimizar en lugar de dispersar prematuramente cosas
// como propiedades lazy.

// ---- Enlace de ejercicios Propiedades Lazy ----
// https://www.hackingwithswift.com/review/lazy-properties



// ----- Propiedades y métodos estáticos -----

// Todas las propiedades y métodos que hemos creado hasta ahora han pertenecido a instancias
// individuales de estructuras, lo que significa que si tuviéramos una estructura de estudiante,
// podríamos crear varias instancias de estudiante, cada una con sus propias propiedades y métodos:

struct Student {
    var name: String

    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

// También puede pedirle a Swift que comparta propiedades y métodos específicos en todas las
// instancias de la estructura declarándolas como estáticas.

// Para probar esto, vamos a añadir una propiedad estática a la estructura de estudiantes para
// almacenar cuántos estudiantes hay en la clase. Cada vez que creamos un nuevo estudiante,
// le añadiremos uno:

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

// Debido a que la propiedad classSize pertenece a la estructura en sí en lugar de a las instancias
// de la estructura, necesitamos leerla usando Student.classSize:

print(Student.classSize)


// -----  ¿Cuál es el punto de las propiedades y métodos estáticos en Swift? -----

// La mayoría de las personas que aprenden Swift ven inmediatamente el valor de las propiedades y los
// métodos regulares, pero tienen dificultades para entender por qué las propiedades y los métodos
// estáticos serían útiles. Ciertamente, es cierto que son menos útiles que las propiedades y métodos
// normales, pero siguen siendo bastante comunes en el código Swift.

// Un uso común de las propiedades y métodos estáticos es almacenar la funcionalidad común que usas en
// toda una aplicación. Por ejemplo, hago una aplicación llamada Unwrap, que es una aplicación gratuita
// de iOS para la gente que está aprendiendo Swift. En la aplicación quiero almacenar alguna información
// común, como la URL de la aplicación en la App Store, para poder hacer referencia a ella en cualquier
// lugar donde la aplicación la necesite. Por lo tanto, tengo un código como este que almacena mis datos:

struct Unwrap {
    static let appURL = "https://itunes.apple.com/app/id1440611372"
}

// De esa manera puedo escribir Unwrap.appURL cuando alguien comparte algo de la aplicación, lo que ayuda
// a otras personas a descubrir la aplicación. Sin la palabra clave estática, necesitaría hacer una nueva
// instancia de la estructura Unwrap solo para leer la URL fija de la aplicación,
// lo que no es realmente necesario.

// También uso tanto una propiedad estática como un método estático para almacenar alguna entropía
// aleatoria en la misma estructura, como esta:

static var entropy = Int.random(in: 1...1000)

static func getEntropy() -> Int {
    entropy += 1
    return entropy
}

// La entropía aleatoria es algo de aleatoriedad recopilada por el software para hacer que la
// generación de números aleatorios sea más efectiva, pero hago un poco de trampa en mi aplicación
// porque no quiero datos verdaderamente aleatorios. La aplicación está diseñada para darte varias
// pruebas de Swift en un orden aleatorio, pero si fuera realmente aleatoria, entonces es probable
// que veas la misma pregunta una y otra a veces. No quiero eso, así que mi entropía en realidad
// hace que la aleatoriedad sea menos aleatoria, por lo que tenemos una difusión más justa de
// preguntas. Por lo tanto, lo que hace mi código es almacenar un entero de entropía que comienza
// al azar, pero se incrementa por 1 cada vez que se llama a getEntropy().

// Esta entropía "justa aleatoria" se utiliza en toda la aplicación para que los duplicados no 
// aparezcan, por lo que, de nuevo, son compartidos estáticamente por la estructura Unwrap para que
// en todas partes puedan acceder a ellos.

// Antes de seguir adelante, hay dos cosas más que quiero mencionar que podrían interesarte.

// En primer lugar, mi estructura de unwrap realmente no necesita ser una estructura en absoluto, 
// podría y, de hecho, debería declararla como una enumeración en lugar de una estructura.
// Esto se debe a que la enumeración no tiene ningún caso, por lo que es una mejor opción que una
// estructura aquí porque nunca quiero crear una instancia de este tipo, no hay razón para hacerlo.
// Hacer una enumeración impide que esto suceda, lo que ayudaría a aclarar mi intención.

// En segundo lugar, debido a que tengo un método dedicado a getEntropy(), en realidad le pido a
// Swift que restrinja el acceso a la entropía para que no pueda acceder a ella desde ningún lugar.
// Esto se llama control de acceso, y se ve así en Swift:

private static var entropy = Int.random(in: 1...1000)

// Pronto buscaremos más control de acceso.



// ---- Enlace de ejercicios Propiedades y métodos estáticos ----
// https://www.hackingwithswift.com/review/static-properties-and-methods



// ----- Control de acceso -----

// El control de acceso le permite restringir qué código puede usar propiedades y métodos. 
// Esto es importante porque es posible que desee evitar que la gente lea una propiedad
// directamente, por ejemplo.

// Podríamos crear una estructura de persona que tenga una propiedad de identificación para
// almacenar su número de seguro social:

struct Person {
    var id: String

    init(id: String) {
        self.id = id
    }
}

let ed = Person(id: "12345")

// Una vez que esa persona ha sido creada, podemos hacer que su identificación sea privada 
// para que no puedas leerla desde fuera de la estructura; tratar de escribir ed.id
// simplemente no funcionará.

// Solo usa la palabra clave privada, como esta:

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }
}

// Ahora solo los métodos dentro de Person pueden leer la propiedad de identificación. Por ejemplo:

struct Person {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

// Otra opción común es la pública, que permite que el resto del código use la propiedad o el método.



// -----  ¿Cuál es el punto del control de acceso? -----

// Las palabras clave de control de acceso de Swift nos permiten restringir la forma en que se puede
// acceder a diferentes partes de nuestro código, pero la mayor parte del tiempo es solo obedecer las
// reglas que pusimos en marcha: podríamos eliminarlas si quisiéramos y eludir las restricciones,
// así que ¿cuál es el punto?

// Hay algunas respuestas a eso, pero una es particularmente fácil, así que empezaré por ahí:
// a veces el control de acceso se utiliza en el código que no tienes, por lo que no puedes eliminar
// la restricción. Esto es común cuando estás creando aplicaciones con las API de Apple, por ejemplo:
// imponen restricciones sobre lo que puedes y no puedes hacer, y debes cumplir con esas restricciones.

// En tu propio código, sí, por supuesto, puedes eliminar cualquier restricción de control de acceso
// que pongas en marcha, pero eso no hace que sea inútil. El control de acceso nos permite determinar
// cómo se debe usar un valor, de modo que si es necesario acceder a algo con mucho cuidado, debe seguir
// las reglas.

// Anteriormente he mencionado Unwrap, mi aplicación de aprendizaje Swift, y quiero usar otro ejemplo a
// partir de ahí. Cuando los usuarios aprenden diferentes partes de Swift, almaceno el nombre de lo que
// aprendieron en un conjunto privado dentro de una estructura de usuario, declarado así:

private var learnedSections = Set<String>()

// Es privado, lo que significa que nadie puede leerlo o escribirlo directamente. En su lugar,
// proporciono métodos públicos para leer o escribir valores que se deben usar en su lugar.
// Eso es intencional, porque aprender una sección necesita hacer más que solo insertar una cadena
// en ese conjunto: necesita actualizar la interfaz de usuario para reflejar el cambio, y necesita
// guardar la nueva información para que la aplicación recuerde que se aprendió.

// Si no hubiera hecho privada la propiedad de learnedSections, es posible que la olvide y le escriba
// cosas directamente. Eso daría lugar a que mi interfaz de usuario fuera inconsistente con sus datos,
// y también que no guardara el cambio, ¡mal por todas partes!

// Por lo tanto, al usar lo privado aquí, le estoy pidiendo a Swift que haga cumplir las reglas por mí:
// no me dejes leer o escribir esta propiedad desde cualquier lugar fuera de la estructura del usuario.

// Otra ventaja del control de acceso es que nos permite controlar cómo otras personas ven nuestro código,
// conocido como su "área de superficie". Piénsalo: si te diera una estructura para usar y tuviera 30
// propiedades y métodos públicos, es posible que no estés seguro de cuáles están ahí para que las uses y
// cuáles son realmente solo para uso interno. Por otro lado, si marco 25 de esos como privados, entonces
// está claro de inmediato que no deberías usarlos externamente.

// El control de acceso puede ser un problema bastante espinoso, especialmente cuando se tiene en cuenta
// el código externo. Por lo tanto, no es una sorpresa que la propia documentación de Apple sea bastante
// larga, puedes encontrarla aquí:
// https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html


// ---- Enlace de ejercicios Control de acceso ----
// https://www.hackingwithswift.com/review/access-control




// ---- Resumen de estructuras ----

// Has llegado al final de la séptima parte de esta serie, así que resumamos:

// Puedes crear tus propios tipos usando estructuras, que pueden tener sus propias propiedades y métodos.

// Puedes usar propiedades almacenadas o usar propiedades calculadas para calcular los valores sobre la marcha.

// Si desea cambiar una propiedad dentro de un método, debe marcarla como mutante.

// Los inicializadores son métodos especiales que crean estructuras. Obtiene un inicializador por
// miembro de forma predeterminada, pero si crea el suyo propio, debe dar un valor a todas las propiedades.

// tilice la constante auto para referirse a la instancia actual de una estructura dentro de un método.

// La palabra clave perezosa le dice a Swift que cree propiedades solo cuando se usen por primera vez.

// Puede compartir propiedades y métodos en todas las instancias de una estructura
// utilizando la palabra clave estática.

// El control de acceso le permite restringir qué código puede usar propiedades y métodos.


// ---- Enlace de ejercicios Resumen de estructuras ----
// https://www.hackingwithswift.com/review/structs-summary



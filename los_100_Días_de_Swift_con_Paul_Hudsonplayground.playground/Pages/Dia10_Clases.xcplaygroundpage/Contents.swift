import Foundation


// ----- Clases -----

// Al principio, las clases parecen muy similares a las estructuras porque las usamos para crear nuevos tipos
// de datos con propiedades y métodos. Sin embargo, introducen una característica nueva, importante y compleja
// llamada herencia: la capacidad de hacer que una clase se base sobre los cimientos de otra.

// Esta es una característica poderosa, no hay duda de ella, y no hay forma de evitar el uso de clases cuando 
// empiezas a crear aplicaciones iOS reales. Pero, por favor, recuerde mantener su código simple: solo porque
// exista una función, no significa que necesite usarla. Como escribió Martin Fowler, "cualquier tonto puede
// escribir código que un ordenador puede entender, pero los buenos programadores escriben código que los
// humanos pueden entender".

// Hoy tienes ocho vídeos de un minuto para ver, y te encontrarás con cosas como anulaciones de métodos, 
// clases finales y desinicializadores. Una vez que hayas visto cada vídeo y, opcionalmente, hayas pasado por
// la lectura adicional, hay una breve prueba para asegurarte de que has entendido lo que se enseñó.

// ----- Creando tus propias clases -----

// Las clases son similares a las estructuras en el sentido de que te permiten crear nuevos tipos con propiedades
// y métodos, pero tienen cinco diferencias importantes y te voy a guiar a través de
// cada una de esas diferencias, una a la vez.

// La primera diferencia entre clases y estructuras es que las clases nunca vienen con un inicializador por miembros.
// Esto significa que si tienes propiedades en tu clase, siempre debes crear tu propio inicializador.

// Por ejemplo:

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Crear instancias de esa clase se ve igual que si fuera una estructura:

let poppy = Dog(name: "Poppy", breed: "Poodle")


// ----- ¿Por qué Swift tiene tanto clases como estructuras? -----

// Las clases y estructuras dan a los desarrolladores de Swift la capacidad de crear tipos personalizados y complejos
// con propiedades y métodos, pero tienen cinco diferencias importantes:

// Las clases no vienen con inicializadores sintetizados por miembros.

// Una clase se puede construir sobre ("heredar de") otra clase, ganando sus propiedades y métodos.

// Las copias de las estructuras siempre son únicas, mientras que las copias de las clases en realidad apuntan a los 
// mismos datos compartidos.

// Las clases tienen desinicializadores, que son métodos que se llaman cuando se destruye una instancia de la clase,
// pero las estructuras no.

// Las propiedades variables en clases constantes se pueden modificar libremente, pero las propiedades variables en
// estructuras constantes no pueden.

// Pronto explicaré estas diferencias con más detalle, pero el punto es que existen y que importan. La mayoría de los
// desarrolladores de Swift prefieren usar estructuras en lugar de clases cuando sea posible, lo que significa que
// cuando eliges una clase en lugar de una estructura, lo estás haciendo porque quieres uno de los comportamientos anteriores.

// ---- Enlace de ejercicios Clases ----
// https://www.hackingwithswift.com/review/creating-your-own-classes



// ----- Herencia de clase -----

// La segunda diferencia entre las clases y las estructuras es que puedes crear una clase basada en una clase existente: 
// hereda todas las propiedades y métodos de la clase original, y puede añadir la suya propia en la parte superior.

// Esto se llama herencia de clase o subclasificación, la clase de la que heredas se llama la clase "padre" o "súper", 
// y la nueva clase se llama la clase "hijo".

// Aquí está la clase de perros que acabamos de crear:

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Podríamos crear una nueva clase basada en la llamada Caniche. Heredará las mismas propiedades e inicializador que
// Dog de forma predeterminada:

class Poodle: Dog {

}

// Sin embargo, también podemos darle a Poodle su propio inicializador. Sabemos que siempre tendrá la raza "Poodle",
// por lo que podemos hacer un nuevo inicializador que solo necesita una propiedad de nombre. Aún mejor, podemos hacer
// que el inicializador de Poodle llame al inicializador de Dog directamente para que ocurra la misma configuración:

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// Por razones de seguridad, Swift siempre te hace llamar a super.init() de las clases infantiles, en caso de que la
// clase principal haga algún trabajo importante cuando se crea.


// -----  ¿Por qué las clases de Swift no tienen un inicializador por miembro? -----

// Una de las muchas características útiles de la estructura de Swift es que vienen con un inicializador sintetizado
// por miembros, lo que nos permite crear nuevas instancias de la estructura con solo especificar sus propiedades.
// Sin embargo, las clases de Swift no tienen esta función, lo cual es molesto, pero ¿por qué no la tienen?

// La razón principal es que las clases tienen herencia, lo que haría que fuera difícil trabajar con los inicializadores
// de los miembros. Piénsalo: si construyera una clase de la que heredaste, y luego agregara algunas propiedades a mi
// clase más tarde, tu código se rompería: todos esos lugares en los que confiaste en mi inicializador de miembros de
// repente ya no funcionarían.

// Por lo tanto, Swift tiene una solución simple: en lugar de generar automáticamente un inicializador por miembros,
// los autores de las clases deben escribir su propio inicializador a mano. De esta manera, puede agregar propiedades
// tanto como desee sin afectar al inicializador de su clase, y sin afectar a otros que heredan de su clase. Y cuando
// decides cambiar tu inicializador, lo estás haciendo tú mismo y, por lo tanto, eres plenamente consciente de las
// implicaciones para cualquier clase que herede.

// ---- Enlace de ejercicios Herencia de clase ----
// https://www.hackingwithswift.com/review/class-inheritance



// ----- Métodos de anulación -----

// Las clases hijas pueden reemplazar los métodos principales con sus propias implementaciones, un proceso conocido
// como override. Aquí hay una clase de perro trivial con un método makeNoise():

class Dog {
    func makeNoise() {
        print("Woof!")
    }
}

// Si creamos una nueva clase de Caniche que hereda de Dog, heredará el método makeNoise(). Por lo tanto, esto imprimirá "¡Woof!":

class Poodle: Dog {
}

let poppy = Poodle()
poppy.makeNoise()

// La anulación del método nos permite cambiar la implementación de makeNoise() para la clase Poodle.

// Swift requiere que usemos override func en lugar de solo func al anular un método: te impide anular un método por
// accidente, y obtendrás un error si intentas anular algo que no existe en la clase principal:

class Poodle: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}

// Con ese cambio, poppy.makeNoise() imprimirá "¡Sí!" En lugar de "¡Woof!".


// ----- ¿Cuándo te gustaría anular un método? -----

// En Swift, cualquier clase que herede de una clase principal puede anular los métodos y, a veces, las propiedades de esa
// clase principal, lo que significa que pueden reemplazar la implementación del método principal con una de las suyas.

// Este nivel de personalización es muy importante y nos facilita la vida como desarrolladores. Piénsalo: si alguien ha
// diseñado una clase brillante que quieres usar, pero no es del todo correcta, ¿no sería bueno anular una parte de su
// comportamiento en lugar de tener que reescribirlo todo tú mismo?

// Claro que lo haría, y ahí es exactamente donde entra la anulación del método: puedes mantener todo el comportamiento
// que quieras, y solo cambiar una o dos pequeñas partes en una subclase personalizada.

// En UIKit, el marco de interfaz de usuario original de Apple para iOS, este enfoque se utilizó mucho. Por ejemplo, 
// considere algunas de las aplicaciones integradas, como Configuración y Mensajes. Ambos presentan información en filas:
// Configuración tiene filas como General, Centro de Control, Pantalla y Brillo, y así suces, y Mensajes tiene filas
// individuales para cada conversación que has tenido con diferentes personas. En UIKit, estas se llaman tablas, y tienen
// algún comportamiento común: puedes desplazarte por todas las filas, puedes tocar las filas para seleccionar una, hay
// pequeñas flechas grises en el lado derecho de las filas, y así sucede.

// Estas listas de filas son muy comunes, por lo que Apple nos proporcionó el código existente para usarlas que tiene todo
// ese comportamiento estándar incorporado. Por supuesto, hay algunas partes que realmente necesitan cambiar, como cuántas
// filas tienen las listas y qué contenido tienen dentro. Por lo tanto, los desarrolladores de Swift crearían subclases de l
// a tabla de Apple y anularían las partes que querían cambiar, dándoles toda la funcionalidad
// integrada y mucha flexibilidad y control.

// Swift nos hace usar la palabra clave de anulación antes de anular las funciones, lo cual es muy útil:

// Si lo usas cuando no es necesario (porque la clase principal no declara el mismo método), obtendrás un error. 
// Esto evita que escribas mal cosas, como nombres o tipos de parámetros, y también evita que tu anulación falle si la clase
// principal cambia su método y no sigues su ejemplo.

// Si no lo usas cuando es necesario, también obtendrás un error. Esto te impide cambiar accidentalmente el comportamiento
// de la clase de padres.

// ---- Enlace de ejercicios Métodos de anulación ----
// https://www.hackingwithswift.com/review/overriding-methods


// ----- Clases finales -----

// Aunque la herencia de clases es muy útil, y de hecho grandes partes de las plataformas de Apple requieren que la uses,
// a veces quieres no permitir que otros desarrolladores construyan su propia clase basada en la tuya.
 
// Swift nos da una palabra clave final solo para este propósito: cuando declaras una clase como final, ninguna otra clase
// puede heredar de ella. Esto significa que no pueden anular tus métodos para cambiar tu comportamiento, necesitan usar
// tu clase de la forma en que fue escrita.

//Para hacer una clase final, solo tienes que poner la palabra clave final antes de ella, así:

final class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// ----- ¿Qué clases deben declararse como finales? -----

// Las clases finales son de las que no se pueden heredar, lo que significa que no es posible que los usuarios de su código
// agreguen funcionalidad o cambien lo que tienen. Este no es el valor predeterminado: debes optar por este comportamiento
// añadiendo la palabra clave final a tu clase.

// Recuerde, cualquiera que subclasifique su clase puede anular sus propiedades y tal vez también sus métodos, lo que les
// ofrece un poder increíble. Si haces algo que no les gusta, bam, pueden reemplazarlo. Es posible que todavía llamen a su
// método original, así como a su reemplazo, pero puede que no.

// Esto puede ser problemático: tal vez tu clase haga algo realmente importante que no debe ser reemplazado, o tal vez 
// tengas clientes con un contrato de soporte y no quieras que rompan la forma en que funciona tu código.

// Gran parte del propio código de Apple se escribió antes de que llegara Swift, en un lenguaje anterior llamado Objective-C.
// Objective-C no tenía un gran soporte para las clases finales, por lo que Apple generalmente recurría a grandes advertencias
// en su sitio. Por ejemplo, hay una clase muy importante llamada AVPlayerViewController que está diseñada para reproducir
// películas, y su página de documentación tiene una gran advertencia amarilla que dice: "Subclasificar AVPlayerViewController
// y anular sus métodos no es compatible, y da como resultado un comportamiento indefinido". No sabemos por qué, solo que no
// deberíamos hacerlo. Hay otra clase llamada Timer que maneja eventos cronometrados como una alarma, y allí la advertencia
// es aún más simple: "No hagas temporizador de subclase".

// En Swift solía ser el caso de que las clases finales tenían más rendimiento que las clases no finales, porque estábamos 
// proporcionando un poco más de información sobre cómo se ejecutaría nuestro código y
// Swift lo usaría para hacer algunas optimizaciones.

// Eso no ha sido cierto durante un tiempo, pero incluso hoy en día creo que muchas personas instintivamente declaran sus 
// clases como finales, lo que significa que "no deberías subclasar de esto a menos que yo lo permita específicamente".
// Ciertamente hago esto mucho, porque es otra forma en la que puedo ayudar a la gente a entender cómo funciona mi código.

// ---- Enlace de ejercicios Clases finales ----
// https://www.hackingwithswift.com/review/final-classes


// ----- Copia de objetos -----

// La tercera diferencia entre las clases y las estructuras es cómo se copian. Cuando copias una estructura, tanto el original
// como la copia son cosas diferentes: cambiar una no cambiará la otra. Cuando copias una clase, tanto el original como la
// copia apuntan a lo mismo, por lo que cambiar una cambia la otra.

// Por ejemplo, aquí hay una clase simple de Singer que tiene una propiedad de nombre con un valor predeterminado:

class Singer {
    var name = "Taylor Swift"
}

// Si creamos una instancia de esa clase e imprimimos su nombre, obtendremos "Taylor Swift":

var singer = Singer()
print(singer.name)

// Ahora vamos a crear una segunda variable de la primera y cambiar su nombre:

var singerCopy = singer
singerCopy.name = "Justin Bieber"

// Debido a la forma en que funcionan las clases, tanto el cantante como el cantanteCopy apuntan al mismo objeto en la memoria,
// por lo que cuando volvamos a imprimir el nombre del cantante veremos "Justin Bieber":

print(singer.name)

// Por otro lado, si Singer fuera una estructura, entonces imprimiríamos "Taylor Swift" por segunda vez:

struct Singer {
    var name = "Taylor Swift"
}

// -----  ¿Por qué las copias de una clase comparten sus datos? -----

// Una característica de Swift que es realmente confusa al principio es cómo los comportamientos de sus clases y estructuras
// difieren cuando se copian: las copias de la misma clase comparten sus datos subyacentes, lo que significa que cambiar uno
// los cambia a todos, mientras que las estructuras siempre tienen sus propios datos únicos,
// y cambiar una copia no afecta a los demás.

// El término técnico para esta distinción es "tipos de valor frente a tipos de referencia". Las estructuras son tipos de 
// valores, lo que significa que tienen valores simples como el número 5 o la cadena "hola". No importa cuántas propiedades
// o métodos tenga tu estructura, todavía se considera un valor simple como un número. Por otro lado, las clases son tipos
// de referencia, lo que significa que se refieren a un valor en otro lugar.

// Para los tipos de valores, esto es bastante fácil de entender que es evidente. Por ejemplo, mira este código:

var message = "Welcome"
var greeting = message
greeting = "Hello"

// Cuando se ejecute ese código, el mensaje seguirá estableciendo en "Bienvenido", pero el saludo se establecerá en "Hola".
// /Como dice Chris Eidhof, "esto es tan natural que parece afirmar lo obvio".
// (https://chris.eidhof.nl/post/structs-and-mutation-in-swift/) Pero así es como se comportan las estructuras:
// su valor está completamente contenido dentro de su variable, y de alguna manera no se comparte con otros valores.
// Esto significa que todos sus datos se almacenan directamente en cada variable, por lo que cuando los copias,
// obtienes una copia profunda de todos los datos.

// Por el contrario, la mejor manera de pensar en un tipo de referencia es que es como una señal que apunta a algunos datos.
// Si creamos una instancia de una clase, ocupará algo de memoria en tu iPhone, y la variable que almacena la instancia es en
// realidad solo una señal de la memoria real donde vive el objeto. Si tomas una copia del objeto, obtienes una nueva señal,
// pero aún así apunta a la memoria donde vive el objeto original. Esta es la razón por la que cambiar una instancia de una
// clase las cambia a todas: todas las copias del objeto son señales que apuntan a la misma pieza de memoria.

// Es difícil sobreestimar lo importante que es esta diferencia en el desarrollo de Swift. Anteriormente mencioné que los 
// desarrolladores de Swift prefieren usar estructuras para sus tipos personalizados, y este comportamiento de copia es una
// gran razón. Imagina si tuvieras una gran aplicación y quisieras compartir un objeto de usuario en varios lugares,
// ¿qué pasaría si uno de esos lugares cambiara a tu usuario? Si estuvieras usando una clase, todos los demás lugares
// que usaron a tu usuario cambiarían sus datos sin darte cuenta, y podrías terminar con problemas. Pero si estuvieras
// usando una estructura, cada parte de tu aplicación tiene su propia copia de los datos y no se puede cambiar por sorpresa.

// Al igual que con muchas cosas en la programación, las decisiones que tomes deberían ayudar a transmitir un poco de tu razonamiento.
// En este caso, usar una clase en lugar de una estructura envía un mensaje fuerte de que quieres que los datos se compartan de
// alguna manera, en lugar de tener muchas copias distintas.

// ---- Enlace de ejercicios  Clases finales ----
// https://www.hackingwithswift.com/review/copying-objects



// ----- Desinicializadores -----

// La cuarta diferencia entre clases y estructuras es que las clases pueden tener desinicializadores, código que se ejecuta cuando
// se destruye una instancia de una clase.

// Para demostrar esto, aquí hay una clase Person con una propiedad de nombre, un inicializador simple y un método printGreeting()
// que imprime un mensaje:

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}

// Vamos a crear algunas instancias de la clase Persona dentro de un bucle, porque cada vez que el bucle se rodee, se creará una
// nueva persona y luego se destruirá:

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Y ahora para el desinicializador. Esto se llamará cuando se destruya la instancia de la Persona:

deinit {
    print("\(name) is no more!")
}

// ----- ¿Por qué las clases tienen desinicializadores y las estructuras no? -----

// Una característica pequeña pero importante de las clases es que pueden tener una función de desinicialización, una contraparte
// de init() que se ejecuta cuando se destruye la instancia de clase. Las estructuras no tienen desinicializadores, lo que
// significa que no podemos decir cuándo se destruyen.

// El trabajo de los desinicializadores es decirnos cuándo se destruyó una instancia de clase. Para las estructuras, esto es
// bastante simple: la estructura se destruye cuando lo que la posee ya no existe. Por lo tanto, si creamos una estructura
// dentro de un método y los métodos terminan, la estructura se destruye.

// Sin embargo, las clases tienen un comportamiento de copia complejo que significa que pueden existir varias copias de la clase
// en varias partes de su programa. Todas las copias apuntan a los mismos datos subyacentes, por lo que ahora es mucho más difícil
// decir cuándo se destruye la instancia de clase real, cuando la variable final que apunta a ella ha desaparecido.

// Detrás de escena, Swift realiza algo llamado conteo automático de referencias, o ARC. ARC rastrea cuántas copias de cada
// instancia de clase existe: cada vez que toma una copia de una instancia de clase, Swift agrega 1 a su recuento de referencias,
// y cada vez que se destruye una copia, Swift resta 1 de su recuento de referencias. Cuando el recuento llega a 0, significa que
// ya nadie se refiere a la clase, y Swift llamará a su desinicializador y destruirá el objeto.

// Por lo tanto, la simple razón por la que las estructuras no tienen desinicializadores es porque no los necesitan: cada estructura
// tiene su propia copia de sus datos, por lo que no tiene que pasar nada especial cuando se destruye.

// Puedes poner tu desinicializador en cualquier lugar que quieras en tu código, pero me encanta esta cita de Anne Cahalan:
// "El código debe leerse como oraciones, lo que me hace pensar que mis clases deberían leerse como capítulos.
// Así que el desinicializador va al final, ¡es la ~aleta~ de la clase!"

// ---- Enlace de ejercicios  Desinicializadores ----
// https://www.hackingwithswift.com/review/deinitializers


// ----- Mutabilidad -----

// La diferencia final entre las clases y las estructuras es la forma en que tratan con las constantes.
// Si tienes una estructura constante con una propiedad variable, esa propiedad no se puede cambiar
// porque la estructura en sí es constante.

// Sin embargo, si tiene una clase constante con una propiedad variable, esa propiedad se puede cambiar.
// Debido a esto, las clases no necesitan la palabra clave mutante con métodos que cambian las propiedades;
// eso solo es necesario con estructuras.

// Esta diferencia significa que puede cambiar cualquier propiedad variable en una clase incluso cuando la
// clase se crea como una constante; este es un código perfectamente válido:

class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

// Si quieres evitar que eso suceda, debes hacer que la propiedad sea constante:

class Singer {
    let name = "Taylor Swift"
}


// -----  ¿Por qué se pueden cambiar las propiedades variables en las clases constantes? -----


// Una de las pequeñas pero importantes diferencias entre las estructuras y las clases es la forma en que 
// manejan la mutabilidad de las propiedades:

// Las clases variables pueden tener propiedades variables cambiadas

// Las clases constantes pueden tener propiedades variables cambiadas

// Las estructuras variables pueden tener propiedades variables modificadas

// Las estructuras constantes no pueden cambiar las propiedades variables

// La razón de esto radica en la diferencia fundamental entre una clase y una estructura: uno apunta a 
// algunos datos en la memoria, mientras que el otro es un valor como el número 5.

// Considere un código como este:

var number = 5
number = 6

// No podemos simplemente definir el número 5 como 6, porque eso no tendría sentido, rompería todo lo que
// sabemos sobre matemáticas. En su lugar, ese código elimina el valor existente asignado al número
// y le da el número 6 en su lugar.

// Así es como funcionan las estructuras en Swift: cuando cambiamos una de sus propiedades, de hecho estamos
// cambiando toda la estructura. Claro, detrás de escena Swift puede hacer algo de optimización para que
// realmente no esté tirando todo el valor cada vez que cambiamos solo una parte de él, 
// pero así es como se trata desde nuestra perspectiva.

// Por lo tanto, si cambiar una parte de una estructura significa efectivamente destruir y recrear toda la
// estructura, espero que puedas ver por qué las estructuras constantes no permiten cambiar sus propiedades
// variables, significaría destruir y recrear algo que se supone que es constante, lo cual no es posible.

// Las clases no funcionan de esta manera: puedes cambiar cualquier parte de sus propiedades sin tener que
// destruir y recrear el valor. Como resultado, las clases constantes
// pueden cambiar libremente sus propiedades variables.

// ---- Enlace de ejercicios  Mutabilidad ----
// https://www.hackingwithswift.com/review/mutability



// ----- Resumen de las clases -----

// Has llegado al final de la octava parte de esta serie, así que resumamos:

// Las clases y estructuras son similares, ya que ambas pueden permitirte crear tus propios tipos con propiedades y métodos.

// Una clase puede heredar de otra, y obtiene todas las propiedades y métodos de la clase principal. Es común hablar de jerarquías de clases: una clase basada en otra, que a su vez se basa en otra.

// Puedes marcar una clase con la palabra clave final, lo que impide que otras clases hereden de ella.

//La anulación del método permite a una clase secundaria reemplazar un método en su clase principal con una nueva implementación

//Cuando dos variables apuntan a la misma instancia de clase, ambas apuntan a la misma pieza de memoria; cambiar una cambia la otra.

// Las clases pueden tener un desinicializador, que es el código que se ejecuta cuando se destruye una instancia de la clase.
// Las clases no hacen cumplir las constantes con tanta fuerza como las estructuras: si una
// propiedad se declara como una variable, se puede cambiar independientemente de cómo se creó la instancia de clase.

// ---- Enlace de ejercicios Resumen de las clases -----
// https://www.hackingwithswift.com/review/classes-summary

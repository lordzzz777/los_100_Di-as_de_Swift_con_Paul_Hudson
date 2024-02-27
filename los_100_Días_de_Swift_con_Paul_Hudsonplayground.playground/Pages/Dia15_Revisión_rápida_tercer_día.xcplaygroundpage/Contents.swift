import Foundation

// ----- Revisión rápida, tercer día -----

// Este es el día final de la consolidación por ahora, y es el último paso
// antes de que comencemos a construir aplicaciones reales mañana.
// Esta vez revisaremos el control de acceso, la mecanografía,
// los cierres y más.

// Hoy solo tienes cinco temas que revisar. Una vez que los hayas completado,
// puedes, si quieres, volver a repasar las pruebas de días anteriores para
// mejorar tus puntuaciones.

// ----- Propiedades -----

// Las estructuras y clases (colectivamente: "tipos") pueden tener sus
// propias variables y constantes, y estas se llaman propiedades.
// Estos le permiten adjuntar valores a sus tipos para representarlos
// de forma única, pero debido a que los tipos también pueden tener métodos,
// puede hacer que se comporten de acuerdo con sus propios datos.

// Echemos un vistazo a un ejemplo ahora:

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/properties-1.png

// Como puede ver, cuando utiliza una propiedad dentro de un método,
// utilizará automáticamente el valor que pertenece al mismo objeto.


// ******** Observadores de propiedades ********

// Swift le permite agregar código para ejecutarlo cuando una propiedad
// está a punto de ser cambiada o ha sido cambiada. Esta es a menudo una
// buena manera de tener una actualización de la interfaz de usuario
// cuando un valor cambia, por ejemplo.

// Hay dos tipos de observadores de propiedades: willSet y didSet, y se
// llaman antes o después de cambiar una propiedad. En willSet Swift
// proporciona a su código un valor especial llamado newValue que contiene
// lo que va a ser el nuevo valor de la propiedad, y en didSet se le da
// oldValue para representar el valor anterior.

// Adjuntamos dos observadores de propiedad a la propiedad de la ropa de
// una persona:

struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts")
taylor.clothes = "short skirts"

// Eso imprimirá los mensajes "Estoy cambiando de camisetas a faldas cortas"
// y "Acabo de cambiar de camisetas a faldas cortas".


// ******** Propiedades calculadas ********

// Es posible hacer propiedades que en realidad son código detrás de escena.
// Ya usamos el método de cadenas en mayúsculas, por ejemplo, pero también
// hay una propiedad llamada capitalizada que se calcula según sea necesario,
// en lugar de que cada cadena siempre almacene una versión en mayúscula de
// sí misma.

// Para hacer una propiedad calculada, coloque una llave abierta después de
// su propiedad y luego use get o set para que una acción ocurra en el momento
// adecuado. Por ejemplo, si quisiéramos añadir una propiedad ageInDogYears
// que devolviera automáticamente la edad de una persona multiplicada por
// siete, haríamos esto:

struct Person {
    var age: Int

    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

var fan = Person(age: 25)
print(fan.ageInDogYears)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/properties-2.png

// Nota: Si tiene la intención de usarlos solo para leer datos,
// puede eliminar la parte de obtener por completo,
// de la siguiente manera:

var ageInDogYears: Int {
    return age * 7
}



// ----- Propiedades y métodos estáticos -----

// Swift te permite crear propiedades y métodos que pertenecen a un tipo,
// en lugar de a instancias de un tipo. Esto es útil para organizar sus datos
// de manera significativa mediante el almacenamiento de datos compartidos.

// Swift llama a estas propiedades compartidas "propiedades estáticas", y se
// crea una simplemente usando la palabra clave "static". Una vez hecho esto,
// accedes a la propiedad usando el nombre completo del tipo.
// He aquí un ejemplo sencillo:

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// Por lo tanto, un fan de Taylor Swift tiene un nombre y una edad que les
// pertenece, pero todos tienen la misma canción favorita.

// Debido a que los métodos estáticos pertenecen a la estructura en sí en
// lugar de a las instancias de esa estructura, no se puede usar para acceder
// a ninguna propiedad no estática de la estructura.



// ----- Control de acceso -----

// El control de acceso le permite especificar qué datos dentro de las
// estructuras y clases deben estar expuestos al mundo exterior, y puede
// elegir cuatro modificadores:

// Público: esto significa que todo el mundo puede leer y escribir la propiedad.

// Interno: esto significa que solo su código Swift puede leer y escribir la
// propiedad. Si envías tu código como un marco para que otros lo usen,
// no podrán leer la propiedad.

// Archivo privado: esto significa que solo el código Swift en el mismo archivo
// que el tipo puede leer y escribir la propiedad.

// Privado: esta es la opción más restrictiva y significa que la propiedad solo
// está disponible dentro de los métodos que pertenecen al tipo
// o a sus extensiones.

// La mayoría de las veces no necesitas especificar el control de acceso,
// pero a veces querrás establecer explícitamente una propiedad para que
// sea privada porque impide que otros accedan a ella directamente.
// Esto es útil porque sus propios métodos pueden funcionar con esa
// propiedad, pero otros no, lo que los obliga a revisar su código para
// realizar ciertas acciones.

// Para declarar una propiedad privada, solo tienes que hacer esto:

class TaylorFan {
    private var name: String?
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/access-control-1.png

// Si quieres usar el control de acceso "archivo privado", simplemente
// escríbelo como una palabra como la siguiente: fileprivate.



// ----- Polimorfismo y typecasting -----

// Porque las clases pueden heredar unas de otras (p. ej. CountrySinger puede
// heredar de Singer) significa que una clase es efectivamente un superconjunto
// de otra: la clase B tiene todas las cosas que A tiene, con algunos extras.
// Esto a su vez significa que puede tratar a B como tipo B o como tipo A,
// dependiendo de sus necesidades.

// ¿Confundido? Vamos a probar algo de código:

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}

// Eso define tres clases: álbumes, álbumes de estudio y álbumes en vivo,
// y los dos últimos heredan de Album. Debido a que cualquier instancia de
// LiveAlbum se hereda de Album, se puede tratar como Album o LiveAlbum,
// son ambos al mismo tiempo. Esto se llama "polimorfismo", pero significa
// que puedes escribir código como este:

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

// Allí creamos una matriz que contiene solo álbumes, pero ponemos en su 
// interior dos álbumes de estudio y un álbum en vivo.
// Esto está perfectamente bien en Swift porque todos descienden de la
// clase Álbum, por lo que comparten el mismo comportamiento básico.

// Podemos llevar esto un paso más allá para demostrar realmente cómo
// funciona el polimorfismo. Agreguemos un método getPerformance()
// a las tres clases:

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

// El método getPerformance() existe en la clase Album, pero ambas clases
// secundarias lo anulan. Cuando creamos una matriz que contiene álbumes,
// en realidad la estamos llenando con subclases de álbumes: LiveAlbum y
// StudioAlbum. Entran en la matriz muy bien porque heredan de la clase
// Álbum, pero nunca pierden su clase original. Así que podríamos escribir
// código como este:

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/polymorphism-and-typecasting-1@2x.png

// Eso utilizará automáticamente la versión de anulación de getPerformance()
// dependiendo de la subclase en cuestión. Eso es polimorfismo en acción:
// un objeto puede funcionar como su clase y sus clases principales,
// todo al mismo tiempo.


// ******** Conversión de tipos con typecasting ********

// A menudo encontrarás que tienes un objeto de cierto tipo, pero en realidad
// sabes que es de un tipo diferente. Lamentablemente, si Swift no sabe lo que
// sabes, no construirá tu código. Entonces, hay una solución, y se llama
// typecasting: convertir un objeto de un tipo a otro.

// Lo más probable es que estés luchando por pensar por qué esto podría ser
// necesario, pero puedo darte un ejemplo muy simple:

for album in allAlbums {
    print(album.getPerformance())
}

// Ese fue nuestro bucle de hace unos minutos. La matriz allAlbums contiene
// el tipo Álbum, pero sabemos que en realidad tiene una de las subclases:
// StudioAlbum o LiveAlbum. Swift no lo sabe, así que si intentas escribir
// algo como print(album.studio) se negará a construir porque solo los
// objetos de StudioAlbum tienen esa propiedad.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/polymorphism-and-typecasting-2@2x.png

// Typecasting en Swift viene en tres formas, pero la mayoría de las veces
// solo conocerás a dos: ¿cómo? ¡Y como!, conocido como downcasting opcional
// y downcasting forzado. El primero significa "Creo que esta conversión
// podría ser cierta, pero podría fallar", y el segundo significa "Sé que esta
// conversión es cierta, y estoy feliz de que mi aplicación se bloquee si me
// equivoco".

// Nota: cuando digo "conversión" no quiero decir que el objeto se transforme
// literalmente. En cambio, solo está convirtiendo la forma en que Swift trata
// el objeto: le estás diciendo a Swift que un objeto que creía que era de tipo
// A es en realidad de tipo E.

// La pregunta y los signos de exclamación deberían darte una pista de lo que
// está pasando, porque esto es muy similar al territorio opcional. Por ejemplo,
// si escribes esto:

for album in allAlbums {
    let studioAlbum = album as? StudioAlbum
}

// Swift hará que studioAlbum tenga el tipo de datos StudioAlbum. Es decir,
// un álbum de estudio opcional: la conversión podría haber funcionado,
// en cuyo caso tienes un álbum de estudio con el que puedes trabajar,
// o podría haber fallado, en cuyo caso tienes nil.

// Esto se usa más comúnmente con if let para desenvolver automáticamente el
// resultado opcional, de esta manera:

for album in allAlbums {
    print(album.getPerformance())

    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

// Eso revisará cada álbum e imprimirá los detalles de su rendimiento, porque 
// eso es común a la clase Álbum y a todas sus subclases. Luego comprueba si
// puede convertir el valor del álbum en un StudioAlbum y, si puede, imprime el
// nombre del estudio. Lo mismo se hace con el LiveAlbum en la matriz.

// El descenso forzado es cuando estás realmente seguro de que un objeto de un
// tipo puede ser tratado como un tipo diferente, pero si te equivocas, tu
// programa se bloqueará. El downcasting forzado no necesita devolver un valor
// opcional, porque estás diciendo que la conversión definitivamente va a
// funcionar; si te equivocas, significa que escribiste mal tu código.

// Para demostrar esto de una manera no accidentada, vamos a eliminar el álbum
// en vivo para que solo tengamos álbumes de estudio en la matriz:

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")

var allAlbums: [Album] = [taylorSwift, fearless]

for album in allAlbums {
    let studioAlbum = album as! StudioAlbum
    print(studioAlbum.studio)
}

// Ese es obviamente un ejemplo artificial, porque si ese fuera realmente
// tu código, simplemente cambiarías todos los álbumes para que tuviera el
// tipo de datos [StudioAlbum]. Aún así, muestra cómo funciona el descenso
// forzado, y el ejemplo no se bloqueará porque hace
// las suposiciones correctas.

// Swift te permite bajar como parte del bucle de la matriz, que en este
// caso sería más eficiente. Si quisieras escribir ese descenso forzado
// a nivel de matriz, escribirías esto:

for album in allAlbums as! [StudioAlbum] {
    print(album.studio)
}

// Eso ya no necesita derribar todos los elementos dentro del bucle, porque
// sucede cuando comienza el bucle. Una vez más, es mejor que tengas razón
// en que todos los elementos de la matriz son StudioAlbums, de lo contrario
// tu código se bloqueará.

// Swift también permite la caída opcional a nivel de matriz, aunque es un
// poco más engañoso porque necesitas usar el operador de fusión nil para
// asegurarte de que siempre haya un valor para el bucle. He aquí un ejemplo:

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum]() {
    print(album.location)
}

// Lo que eso significa es, "intenta convertir allAlbums para que sean una
// matriz de objetos de LiveAlbum, pero si eso falla, solo crea una matriz
// vacía de álbumes en vivo y úsalo en su lugar", es decir, no hagas nada.


// ******** Conversión de tipos comunes con inicializadores ********

// Typecasting es útil cuando sabes algo que Swift no sabe, por ejemplo,
// cuando tienes un objeto de tipo A que Swift piensa que es en realidad
// de tipo B. Sin embargo, el typecasting es útil solo cuando esos tipos
// son realmente lo que dices: no puedes forzar un tipo A a un tipo Z si
// no están realmente relacionados.

// Por ejemplo, si tienes un entero llamado número, no podrías escribir
// un código como este para convertirlo en una cadena:

let number = 5
let text = number as! String

// Es decir, no se puede forzar un entero en una cadena, porque son dos tipos
// completamente diferentes. En su lugar, necesitas crear una nueva cadena
// alimentándola con el entero, y Swift sabe cómo convertir las dos.
// La diferencia es sutil: este es un valor nuevo, en lugar de solo una
// reinterpretación del mismo valor.

// Por lo tanto, ese código debería reescribirse así:

let number = 5
let text = String(number)
print(text)

// Esto solo funciona para algunos de los tipos de datos integrados de
// Swift: puedes convertir enteros y flotantes en cadenas y de vuelta,
// por ejemplo, pero si creaste dos estructuras personalizadas,
// Swift no puede convertir mágicamente una a la otra, necesitas escribir
// ese código tú mismo.


// ----- Cierres -----

//Has conocido enteros, cadenas, dobles, flotantes, booleanos, matrices,
// diccionarios, estructuras y clases hasta ahora, pero hay otro tipo de
// datos que se utiliza ampliamente en Swift, y se llama cierre. Estos son
// complicados, pero son tan poderosos y expresivos que se usan de forma
// generalizada en Swift, por lo que no llegarás muy lejos sin entenderlos.

// Un cierre se puede considerar como una variable que contiene código.
// Por lo tanto, cuando un entero contiene "0" o "500", un cierre contiene
// líneas de código Swift. Los cierres también capturan el entorno en el
// que se crean, lo que significa que toman una copia de los valores que
// se utilizan dentro de ellos.

// Nunca necesitas diseñar tus propios cierres, así que no tengas miedo 
// si lo siguiente te resulta bastante complicado. Sin embargo, los marcos
// de Apple a menudo te pedirán que escribas cierres para que coincidan con
// sus necesidades, por lo que al menos necesitas saber cómo funcionan.

// Aquí hay un ejemplo de SwiftUI:

import SwiftUI

let message = "Button pressed"

Button("Press Me", action: {
    print(message)
})

// El botón es uno de los muchos controles de interfaz de usuario que
// tenemos en SwiftUI, y proporciona algo que el usuario puede presionar
// para ejecutar algún tipo de acción.

// En este código, la creación de un botón requiere dos parámetros:
// algo de texto para mostrar como el título del botón y un cierre que
// contiene el código que se ejecutará cuando se presiona el botón.
// He especificado "Press Me" para el primer parámetro, y para el segundo
// he hecho que el sistema imprima una cadena de mensajes.

// Este método necesita usar un cierre porque SwiftUI no ejecutará el 
// código hasta que se presione el botón: guardará el código de acción
// para más adelante, y luego lo llamará solo cuando sea necesario.
// Esto no sería posible si solo ejecutaramos nuestro código directamente.

// El código anterior también muestra cómo los cierres capturan su entorno:
// declaré intencionalmente el mensaje constante fuera del cierre,
// luego lo usé dentro. Swift detecta esto y también hace que esos datos
// estén disponibles dentro del cierre.

// El sistema de Swift de capturar automáticamente el entorno de un cierre 
// es muy útil, pero ocasionalmente puede hacerte tropezar:
// si el objeto A almacena un cierre como una propiedad, y esa propiedad
// también hace referencia al objeto A, tienes algo llamado ciclo de retención
// y tendrás usuarios insatisfechos. Este es un tema sustancialmente más
// avanzado de lo que necesitas saber ahora mismo, así que no te preocupes
// demasiado por ello todavía.



// ******** Cierres de seguimiento ********

// Como los cierres se usan con tanta frecuencia, Swift puede aplicar
// un poco de azúcar sintáctico para que su código sea más fácil de leer.
// La regla es la siguiente: si los últimos parámetros de un método son
// los cierres, puede eliminar esos parámetros y, en su lugar,
// proporcionarlos como un bloque de código dentro de las llaves.
// Por ejemplo, podríamos convertir el código anterior a esto:

let message = "Button pressed"

Button("Press Me") {
    print(message)
}

// Hace que su código sea más corto y más fácil de leer, por lo que se 
// prefiere este formulario de sintaxis,
// conocido como sintaxis de cierre final.

// Una función puede tener múltiples cierres finales si es necesario,
// y esto es particularmente común en SwiftUI. Por ejemplo, una forma de
// crear un botón es proporcionar código para ejecutarlo cuando se
// presiona como el primer cierre, luego algo personalizado para mostrar
// dentro del botón en la pantalla, como esto:

Button {
    print("The button was pressed")
} label: {
    Image("press-me")
}

// Eso utiliza una imagen en lugar de un simple fragmento de texto, pero
// podría ser cualquier tipo de control de interfaz de usuario de SwiftUI.



// ******** Opcional: ********

// una vez que haya terminado de revisarlos, puede volver a la
// página de revisión y repasar las pruebas relacionadas con
// los temas anteriores.

// ***** Enlace página de revisión *****
// https://www.hackingwithswift.com/review


// En este punto, ahora sabes lo suficiente sobre Swift que deberías estar 
// buscando ampliar un poco tu material de aprendizaje. Llegar al mismo
// tema desde múltiples ángulos ayudará a completar su comprensión, a la vez
// que le ayudará a mantenerse al día con los cambios futuros.

// Aunque hay muchos lugares que puedes probar, me gustaría recomendar el
// podcast que hago con Sean Allen. Se llama Swift over Coffee, y creemos
// que es bastante increíble: siempre son 30 minutos o menos, siempre
// cubrimos las noticias y las opiniones de la comunidad, y siempre
// tratamos de explicar todo de una manera que los recién llegados puedan
// seguir.

// *** Enlace de las noticias y las opiniones de la comunidad, escuchar aquí ***
// https://itunes.apple.com/gb/podcast/swift-over-coffee/id1435076502?mt=2


// ******** Bono: ¡encuentra las palabras Swifty! ********

// He hecho una búsqueda de palabras para ayudarte a poner a prueba tu
// conocimiento de los términos más útiles para los desarrolladores de Swift.
// Puedes descargarlo como PDF, luego usa las pistas a continuación para
// averiguar qué palabras buscar. Si te quedas atascado, intenta revisar mi
// glosario de Swift.

// ***** Enlace PDF *****
// https://www.hackingwithswift.com/files/100/15-wordsearch.pdf

// ***** Enlace de glosario de Swift *****
// https://www.hackingwithswift.com/glossary



// Hay 50 en total, y las palabras pueden ir en todas direcciones,
// ¡buena suerte!

// 1.- Colección de valores de tamaño fijo de cualquier tipo

// 2.- Un tipo personalizado con casos y valores asociados

// 3.- Hace que un método se comparta entre todas las instancias de una clase o estructura

// 4.- Cómo comprobamos y extraemos el valor dentro de un opcional

// 5.- Tipo que almacena datos como pares de claves y valores

// 6.- Coloca variables en cadenas fácilmente

// 7.- Tipo de bucle comúnmente utilizado para hacer bucles infinitos

// 8.- Una lista de criterios con los que debe ajustarse un tipo

// 9.- Evalúa múltiples condiciones en un bloque de código

// 10.- Método especial que crea instancias de estructuras y clases

// 11.- Funciones que aceptan uno o más parámetros de un tipo específico

// 12.- Código para manejar los errores lanzados pordo

// 13.- Valor pasado a una función

// 14.- Alternativa de desembalaje aif let

// 15.- Envía de vuelta un valor de una función

// 16.- Un estuche para todos los bloques de interruptores

// 17.- Una función anónima que puedes pasar como datos

// 18.- Un número entero

// 19.- Decirle a Swift el tipo específico que una variable debe ser

// 20.- Signos de interrogación después de los opcionales

// 21.- Código que se activa cuando cambian las propiedades

// 22.- Puede o no existir

// 23.- Palabra clave que permite modificar los parámetros de la función fuera de la función

// 24.- Control de acceso que restringe una propiedad a ser utilizada solo dentro de su tipo

// 25.- Omite el resto de la iteración del bucle actual

// 26.- Bucle que siempre se ejecuta al menos una vez

// 27.- El tipo de retorno de una función que no devuelve nada

// 28.- Cómo nos referimos a la instancia actual de un objeto

// 29.- Inicializador de estructura que asigna valores a todas las propiedades

// 30.- El nombre de cómo se almacenan los valores utilizados en un cierre para su uso posterior

// 31.- Una variable adjunta a una estructura o clase

// 32.- Un tipo que abarca valores entre dos números

// 33.- Sintaxis especial para los cierres de los parámetros finales

// 34.- Tipo que contiene un gran número de coma flotante

// 35.- El nombre de los símbolos matemáticos como + y -

// 36.- La capacidad de tratar un objeto de un tipo como otro tipo

// 37.- Añade funcionalidad adicional a un tipo

// 38.- El nombre de una función que existe dentro de una estructura o clase

// 39.- Sale de un bucle inmediatamente

// 40.- Palabra clave para una función que puede desencadenar errores

// 41.- Clave que nos permite reemplazar un método heredado de una superclase

// 42.- Cuando una clase se basa en otra

// 43.- Lee la longitud de una cadena

// 44.- Entorno de edición de código todo en uno de Apple

// 45.- Operador que toma tres operandos

// 46.- Anala el trabajo hasta más tarde

// 47.- Nombre de un método llamado antes de la destrucción de la clase

// 48.- Colección ordenada de valores almacenados en un solo valor

// 49.- Una clase que no se puede heredar de

// 50.- Contiene verdadero o falso

import Foundation



// ------ Opcionales ------

// Las referencias nulas, literalmente cuando una variable no tiene valor,
// fueron inventadas por Tony Hoare en 1965. Cuando se le preguntó al
// respecto en retrospectiva, dijo "Lo llamo mi error de mil millones de
// dólares" porque conducen a muchos problemas.

// Este es el último día en que aprenderás los fundamentos de Swift, y está
// dedicado exclusivamente a la solución de Swift a las referencias nulas,
// conocidas como opcionales. Estas son una característica del lenguaje muy
// importante, pero pueden dañar un poco tu cerebro. No te sientas mal si
// necesitas repetir algunos vídeos unas cuantas veces.

// Hoy tienes 11 vídeos de un minuto para ver, y te encontrarás con el
// desenvoltorio, el encadenamiento opcional, el tipografía y más.
// Una vez que hayas visto cada vídeo y hayas completado cualquier lectura
// adicional opcional que quisieras, hay una breve prueba para asegurarte
// de que has entendido lo que se enseñó.


// ------ 1.- Manejo de datos que faltan ------

// Hemos utilizado tipos como Int para mantener valores como 5. Pero si 
// quisieras almacenar una propiedad de edad para los usuarios,
// ¿qué harías si no supieras la edad de alguien?

// Podrías decir "bueno, guardaré 0", pero entonces te confundirías entre
// los bebés recién nacidos y las personas cuya edad no conoces.
// Podrías usar un número especial como 1000 o -1 para representar
// "desconocido", ambas de las cuales son edades imposibles, pero entonces,
// ¿realmente recordarías ese número en todos los lugares en los que se usa?

// La solución de Swift se llama opcionales, y puedes hacer opcionales de 
// cualquier tipo. Un entero opcional podría tener un número como 0 o 40,
// pero podría no tener ningún valor en absoluto, podría faltar literalmente,
// que es nulo en Swift.

// Para hacer que un tipo sea opcional, agregue un signo de interrogación 
// después de él. Por ejemplo, podemos hacer un entero opcional como este:

var age: Int? = nil

// Eso no tiene ningún número, no tiene nada. Pero si más tarde aprendemos
// esa edad, podemos usarla:

age = 38


// ------ ¿Por qué Swift tiene opcionales? ------

// Los opcionales de Swift son una de sus características más potentes, a la
// vez que son una de las más confusas. Su trabajo principal es simple: nos
// permiten representar la ausencia de algunos datos, una cadena que no solo
// está vacía, sino que literalmente no existe.

// Cualquier tipo de datos puede ser opcional en Swift:

// Un entero puede ser 0, -1, 500 o cualquier otro rango de números.

// Un entero opcional podría ser todos los valores enteros regulares, pero
// también podría ser nulo, podría no existir.

// Una cadena podría ser "Hola", podría ser las obras completas de Shakespeare,
// o podría ser "", una cuerda vacía.

// Una cadena opcional podría ser cualquier valor de cadena normal, pero
// también podría ser nula.

// Una estructura de usuario personalizada podría contener todo tipo de
// propiedades que describen a un usuario.

// Una estructura de usuario opcional podría contener todas esas mismas
// propiedades, o no existir en absoluto.

// Hacer esa distinción entre "podría ser cualquier valor posible para ese tipo"
// y "podría ser nulo" es la clave para entender los opcionales, y a veces
// no es fácil.

// Por ejemplo, piense en los booleanos: pueden ser verdaderos o falsos. 
// Eso significa que un Bool opcional puede ser verdadero, falso o ninguno
// de los dos, no puede ser nada en absoluto. Eso es un poco difícil de
// entender mentalmente, porque seguramente algo siempre es verdadero o
// falso en un momento dado.

// Bueno, respóndeme esto: ¿me gusta el chocolate? A menos que seas un amigo
// mío o tal vez me sigas muy de cerca en Twitter, no puedes decirlo con
// seguridad, definitivamente no puedes decir Verdadero (me gusta el chocolate)
// o Falso (no me gusta el chocolate), porque simplemente no lo sabes. Claro,
// podrías preguntarme y averiguarlo, pero hasta que lo hagas, la única
// respuesta segura es "No lo sé", que en este caso podría representarse
// haciendo que el booleano sea opcional con un valor nulo.

// Esto también es un poco confuso cuando piensas en cadenas vacías, "". Esa cadena no contiene nada, pero eso no es lo mismo que cero: una cadena vacía sigue siendo una cadena.

// Cuando estás aprendiendo, los opcionales pueden ser muy dolorosos: 
// podrías pensar que Swift no los necesita, podrías pensar que
// simplemente se interporan en el camino, y podrías rechinar los dientes
// cada vez que tengas que usarlos. Pero, por favor, confía en mí en esto:
// después de unos meses tendrán mucho sentido, ¡y te preguntarás cómo
// sobreviviste sin ellos!

// Para ver otra perspectiva sobre los opcionales, echa un vistazo a este
// vídeo de Brian Voong:
// https://www.youtube.com/watch?v=7a7As0uNWOQ

// ------ Enlace de ejercicios Manejo de datos que faltan ------
// https://www.hackingwithswift.com/review/handling-missing-data




// ------ 2.- Desenvoltura de opciones ------

// Las cadenas opcionales pueden contener una cadena como "Hola" o pueden
// ser nulas, nada en absoluto.

// Considere esta cadena opcional:

var name: String? = nil

// ¿Qué pasa si usamos name.count? Una cadena real tiene una propiedad de
// recuento que almacena cuántas letras tiene, pero esto es nulo:
// es una memoria vacía, no una cadena, por lo que no tiene un recuento.

// Debido a esto, tratar de leer name.count no es seguro y Swift no lo permitirá.
// En su lugar, debemos mirar dentro de lo opcional y ver qué hay allí,
// un proceso conocido como desenvoltorio.

// Una forma común de desenvolver los opcionales es con la sintaxis if let,
// que se desenvuelve con una condición. Si había un valor dentro del opcional,
// entonces puedes usarlo, pero si no lo había, la condición falla.

// Por ejemplo:

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// Si el nombre contiene una cadena, se pondrá dentro sin envolver como una
// cadena normal y podemos leer su propiedad de recuento dentro de la condición.
// Alternativamente, si el nombre está vacío, se ejecutará el código else.



// ------ ¿Por qué Swift nos hace desenvolver los opcionales? ------

// Los opcionales de Swift pueden almacenar un valor, como 5 o "Hola",
// o pueden no ser nada en absoluto. Como se puede imaginar, tratar de
// sumar dos números juntos solo es posible si los números están realmente
// allí, por lo que Swift no nos permitirá tratar de usar los valores de los
// opcionales a menos que los desenvolvamos, a menos que miremos dentro del
// opcional, verifique que en realidad hay un valor allí, y luego saque el
// valor por nosotros.

// Hay varias formas de hacer esto en Swift, pero una de las más comunes es
// si se permite, así:

func getUsername() -> String? {
    "Taylor"
}

if let username = getUsername() {
    print("Username is \(username)")
} else {
    print("No username")
}

// La función getUsername() devuelve una cadena opcional, lo que significa
// que podría ser una cadena o podría ser nula. He hecho que siempre
// devuelva un valor aquí para que sea más fácil de entender, pero eso no
// cambia lo que piensa Swift, sigue siendo una cadena opcional.

// Esa línea single if let combina mucha funcionalidad:

// Llama a la función getUsername().

// Recibe la cadena opcional desde allí.

// Mira dentro de la cadena opcional para ver si tiene un valor.

// Como tiene un valor (es "Taylor"), ese valor se sacará del opcional y se
// colocará en una nueva constante de nombre de usuario.

// La condición se considera verdadera, y se imprimirá "El nombre de usuario
// es Taylor".

// Por lo tanto, si let es una forma fantásticamente concisa de trabajar con
// opciones, ocupándose de comprobar y extraer valores a la vez.

// De hecho, es tan conciso que incluso nos da un pequeño atajo. En lugar de
// escribir esto:

if let number = number {
    print(square(number: number))
}

// De hecho, podemos escribir esto:

if let number {
    print(square(number: number))
}

// Hace exactamente lo mismo: crea una copia sombreada del número que se
// desenvuelve solo dentro del cuerpo de esa condición, solo que con un poco
// menos de repetición.

// La característica más importante de los opcionales es que Swift no nos deja
// usarlos sin desenvolverlos primero. Esto proporciona una gran cantidad de
// protección para todas nuestras aplicaciones, porque pone fin a la
// incertidumbre: cuando estás entregando una cadena, sabes que es una cadena
// válida, cuando llamas a una función que devuelve un entero, sabes que es 
// seguro de usar de inmediato. Y cuando tengas opciones en tu código, Swift
// siempre se asegurará de que las manejes correctamente, que las revises y las
// desenvuelvas, en lugar de simplemente mezclar valores inseguros con datos 
// seguros conocidos.Hace exactamente lo mismo: crea una copia sombreada del
// número que se desenvuelve solo dentro del cuerpo de esa condición, solo que
// con un poco menos de repetición.

// La característica más importante de los opcionales es que Swift no nos deja
// usarlos sin desenvolverlos primero. Esto proporciona una gran cantidad de
// protección para todas nuestras aplicaciones, porque pone fin a la
// incertidumbre: cuando estás entregando una cadena, sabes que es una cadena
// válida, cuando llamas a una función que devuelve un entero, sabes que es
// seguro de usar de inmediato. Y cuando tengas opciones en tu código, Swift
// siempre se asegurará de que las manejes correctamente, que las revises y las
// desenvuelvas, en lugar de simplemente mezclar valores inseguros con datos
// seguros conocidos.

// ------ Enlace de ejercicios Desenvoltura opcionales ------
// https://www.hackingwithswift.com/review/unwrapping-optionals





// ------ 3.- Desenvolver con guardia ------

// Una alternativa a if let es guard let, que también desenvuelve los opcionales.
// guard let desenvolverá un opcional para usted, pero si encuentra nil dentro,
// espera que salga de la función, el bucle o la condición en la que lo usó.

// Sin embargo, la principal diferencia entre if let y guard let es que su opcional
// sin envolver sigue siendo utilizable después del código de guardia.

// Vamos a probarlo con una función greet(). Esto aceptará una cadena opcional
// como su único parámetro e intentará desenvolverla, pero si no hay nada dentro,
// imprimirá un mensaje y saldrá. Debido a que las opciones se desenvuelven usando
// la guardia se quedan después de que la guardia termine, podemos imprimir la
// cadena desenvuelta al final de la función:

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

// El uso de guard let le permite lidiar con los problemas al comienzo de sus
// funciones, y luego salir inmediatamente. Esto significa que el resto de su
// función es el camino feliz, el camino que toma su código si todo es correcto.



// ------  Cuándo usar el guardia en lugar de si se permite ------

// Swift nos da una alternativa a if let llamado guard let, que también 
// desenvuelve los opcionales si contienen un valor, pero funciona de manera
// ligeramente diferente: guard let está diseñado para salir de la función, 
// el bucle o la condición actual si la comprobación falla, por lo que cualquier
// valor que desenvuelve usando se quedará después de la verificación.

// Para demostrar la diferencia, aquí hay una función que devuelve el significado
// de la vida como un entero opcional:

func getMeaningOfLife() -> Int? {
    42
}

// And here’s that function being used inside another function, called
// printMeaningOfLife():

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print(name)
    }
}

// Eso usa if let, por lo que el resultado de getMeaningOfLife() solo se
// imprimirá si devuelve un entero en lugar de nulo.

// Si huéramos escrito eso usando guard let, se vería así:

func printMeaningOfLife() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}

// Sí, eso es un poco más largo, pero dos cosas importantes han cambiado:

// Nos permite centrarnos en el "camino feliz": el comportamiento de nuestra
// función cuando todo ha ido según lo planeado, que es imprimir el significado
// de la vida.

// El guardia requiere que salgamos del alcance actual cuando se utiliza,
// lo que en este caso significa que debemos volver de la función si falla.
// Esto no es opcional: Swift no compilará nuestro código sin el retorno.

// Es común ver que el guardia se usa una o más veces al inicio de los métodos,
// porque se utiliza para verificar que algunas condiciones son correctas por
// adelantado. Esto hace que nuestro código sea más fácil de leer que si
// intentamos comprobar una condición y luego ejecutar algún código, luego
// comprobar otra condición y ejecutar un código diferente.

// Por lo tanto, use if let si solo desea desenvolver algunos opcionales, 
// pero prefiera guard let si está comprobando específicamente que las
// condiciones son correctas antes de continuar.

// ------ Enlace de ejercicios  Desenvolver con protector ------
// https://www.hackingwithswift.com/review/unwrapping-with-guard




// ------ 4.- Forzar el desempaquetado ------

// Los opcionales representan datos que pueden o no estar allí, pero a veces
// se sabe con certeza que un valor no es nulo. En estos casos, Swift le
// permite forzar la desenvoltura del opcional: convertirlo de un tipo opcional
// a un tipo no opcional.

// Por ejemplo, si tienes una cadena que contiene un número, puedes convertirla
// en un Int como este:

let str = "5"
let num = Int(str)

// Eso hace que num sea un Int opcional porque es posible que hayas intentado
// convertir una cadena como "Fish" en lugar de "5".

// A pesar de que Swift no está seguro de que la conversión funcione, ¡puedes
// ver que el código es seguro para que puedas forzar la desenvolver el
// resultado escribiendo! Después de Int(str), así:

let num = Int(str)!

// Swift desenvolverá inmediatamente el opcional y hará de num un Int normal
// en lugar de un Int?. Pero si te equivocas, si str era algo que no se podía
// convertir en un entero, tu código se bloqueará.

// Como resultado, debes forzar la desenvoltura solo cuando estés seguro de 
// que es seguro; hay una razón por la que a menudo se llama el operador de
// accidentes.



// ------  ¿Cuándo deberías forzar la desenvoltura opcional en Swift? ------

// Los opcionales nos proporcionan seguridad en Swift al impedirnos acceder 
// a datos que no existen. Sin embargo, en un puñado de circunstancias,
// es posible que desee considerar forzar la desenvoltura de los opcionales
// en lugar de usar if let o similar.

// Recuerda, lo que no quieres hacer es arriesgarte a un accidente: no quieres
// forzar a desenvolver un opcional solo para descubrir que es nulo. Eso podría
// ahorrarte una o dos líneas de código, pero "eso nunca debería fallar" no es
// una razón lo suficientemente buena para desenvolver a la fuerza, y todos
// podemos hacerlo mejor.

// Voy a entrar en más detalles en un momento, pero quiero darte algunos ejemplos
// de código que estoy feliz de forzar a desenvolver y código que no debe ser
// desenvuelto a la fuerza. Estos ejemplos se extraen de las API de Apple del
// mundo real que es posible que aún no hayas conocido, pero está bien, obtendrás
// la idea.

// En primer lugar, este código crea una URL a partir de una cadena:

let url = URL(string: "https://www.apple.com")!

// Esa es una URL escrita a mano y he verificado que es correcta, estoy feliz de
// forzarla para desenvolverla. Esto no puede salir mal en tiempo de ejecución,
// y no hay margen para sorpresas. Compara eso con el uso de la interpolación de
// cadenas:

let url = URL(string: "https://www.\(website)")!

// Eso no es seguro, y no se puede verificar, y si se le da una dirección web 
// mal formada podría bloquearse.

// En segundo lugar, este código crea un rango cerrado del 1 al 10, luego elige
// un número aleatorio de ese rango utilizando el método randomElement():

let randomNumber = (1...10).randomElement()!

// randomElement() devuelve un valor opcional porque es posible que el rango
// o la matriz con la que lo estamos usando estuviera vacío. En este caso,
// sin embargo, puedes ver que he escrito a mano el rango, así que sé que
// siempre habrá un número que volverá, y de nuevo esto no puede salir mal
// en tiempo de ejecución. Compara eso con el uso de una matriz desconocida:

var items = [Int]()

for i in 1...10 {
    if isLuckyNumber(i) {
        items.append(i)
    }
}

let randomNumber = items.randomElement()!

// ¿Qué hace esa función isLuckyNumber()? No lo he incluido aquí porque 
// realmente no importa, pero todavía es un código que no es visible aquí
// mismo, por lo que no podemos garantizar que los elementos tengan algún
// elemento para el momento en que llamemos a randomElement() en él.

// Esperemos que puedas ver la diferencia entre los dos: una situación está
// garantizada para funcionar el 100 % del tiempo, y la otra "debería"
// trabajar o "casi siempre funcionará". Esa es la clave aquí: nunca debes
// forzar a desenvolver algo que no tendrá éxito el 100 % del tiempo.
// Eso es todo, esa es toda la regla.

// Ahora, algunas personas no están de acuerdo y, en cambio, argumentan que el
// desembaje forzoso nunca debería ocurrir. Puedo ver su punto de vista, y
// ciertamente lo he pensado antes. Sin embargo, encuentro que el código
// adicional para manejar todas esas situaciones imposibles distrae, porque
// agregan desorden a nuestro código que literalmente nunca hace nada.

// Más molestos son los momentos en los que no hay una alternativa sensata. 
// Por ejemplo, si hace que una enumeración se ajuste al protocolo CaseIterable,
// Swift generará una propiedad especial de matriz allCases para su enumeración
// que contiene todos los casos en el orden en que se definieron. Por lo tanto,
// podríamos crear una enumeración de direcciones y elegir un valor aleatorio
// como este:

enum Direction: CaseIterable {
    case north, south, east, west
}

let randomDirection = Direction.allCases.randomElement()!

// Hemos definido una enumeración con cuatro casos, y estamos pidiendo elegir
// un caso aleatorio. El método randomElement() devuelve un opcional porque así
// es como funciona, pero sabemos que siempre tendrá éxito porque nuestra
// enumeración tiene casos.

// Si tuviéramos que decidir que nunca queríamos usar force unwraps, ¿qué valor
// podríamos usar en su lugar? ¿Qué valor predeterminado podríamos dar a
// randomDirection que permitiera que nuestro código continuara de forma segura?

// La única forma en que un desenvoltorio de fuerza sería inseguro aquí sería
// si elimináramos los cuatro casos de Direction, pero incluso entonces Swift
// muestra una advertencia de que vamos a tener un comportamiento inesperado.

// Por lo tanto, creo que el desembolaje forzoso a veces es una buena idea, y a
// veces incluso es necesario. Sin embargo, no estoy abogando por que empieces
// a dispersar signos de exclamación alrededor de tu programa, porque eso
// comienza a desordenarse.

// En su lugar, una mejor idea es crear un puñado de funciones y extensiones 
// que aíslen tu fuerza se desenvuelve en un solo lugar. Esto significa que
// su desembalaje forzado se puede almacenar cerca del lugar donde se aclara
// su comportamiento, y la gran mayoría de su código no necesita forzar el
// desenvoltorio directamente.

// Por ejemplo, podríamos reescribir nuestra enumeración de Dirección a esto:

enum Direction: CaseIterable {
    case north, south, east, west

    static func random() -> Direction {
        Direction.allCases.randomElement()!
    }
}

// Con eso en su lugar, en todas partes necesitamos obtener una dirección
// aleatoria, ya no necesitamos una fuerza para desenvolverse:

let randomDirection = Direction.random()

// Antes de seguir adelante, quiero reiterar un punto clave aquí: si solo estás
// un 99 % seguro de que un desenvoltorio de fuerza es seguro, no deberías usarlo.
// Diablos, incluso si estás seguro al 99,999 % de que es seguro, no deberías
// usarlo, eso equivale a un accidente en 100.000, lo cual es realmente malo.
// En su lugar, las envolturas forzadas deben reservarse para los momentos en
// los que su código está absolutamente garantizado para ser seguro, como se
// demostró anteriormente.

// Para una discusión sobre cómo evitar el desenvoltorio de la fuerza, echa un
// vistazo a esta entrada de blog de Alexandre Colucci:
// https://blog.timac.org/2017/0628-swift-banning-force-unwrapping-optionals/

// ------ Enlace de ejercicios Forzar el desenvoltorio ------
// https://www.hackingwithswift.com/review/force-unwrapping




// ------ 5.- Opcionales implícitamente sin envolver ------

// Al igual que los opcionales normales, los opcionales implícitamente sin
// envolver pueden contener un valor o podrían ser nulos. Sin embargo, a
// diferencia de los opcionales normales, no necesitas desenvolverlos
// para usarlos: puedes usarlos como si no fueran opcionales en absoluto.

// Las opciones implícitamente desenvueltas se crean añadiendo un signo de
// exclamación después del nombre de su tipo, así:

let age: Int! = nil

// Debido a que se comportan como si ya estuvieran desenvueltos, no es necesario
// dejar o guardar usar opcionales implícitamente sin envolver. Sin embargo, si
// intentas usarlos y no tienen valor, si son nulos, tu código se bloquea.

// Existen opcionales implícitamente sin envolver porque a veces una variable
// comenzará su vida como nula, pero siempre tendrá un valor antes de que
// necesites usarla. Debido a que sabes que tendrán un valor para el momento en
// que los necesites, es útil no tener que escribir si se deja todo el tiempo.

// Dicho esto, si puedes usar opciones regulares en su lugar, generalmente es
// una buena idea

// --¿Por qué Swift necesita tanto opcionales implícitamente sin envolver como opcionales regulares? ------

// Los opcionales implícitamente sin envolver pueden contener un valor o ser nulos,
// y los opcionales regulares también pueden contener un valor o ser nulos,
// pero hay una diferencia sutil: los opcionales implícitamente sin envolver no
// necesitan ser desenvueltos para ser utilizados. Esto significa que si intentas
// usar un opcional implícitamente desenvuelto y en realidad es nulo, tu código
// simplemente se bloqueará - Swift no te hará usar si deja o similar como lo haría
// con los opcionales regulares.

// En los primeros días de Swift, los opcionales (IUO) implícitamente desenvueltos
// jugaron un papel fundamental para hacer que nuestro código funcionara.
// Sin embargo, desde el lanzamiento de SwiftUI, están desapareciendo por mil.
// Eso no quiere decir que sean inútiles, solo que se están
// volviendo mucho más raros.

// Los IUO son útiles en situaciones en las que una variable comenzará vacía,
// pero no estará vacía en el momento en que quieras usarla, y no permanecerá
// vacía por el resto de su vida. En esta situación, por definición, son
// seguros de usar sin desenvolverlos con cuidado, porque siempre tendrán un
// valor en el momento en que queramos usarlos.

// La razón principal de las IUO es para su uso con el antiguo marco de interfaz
// de usuario UIKit de Apple. Si querías una imagen en tu diseño, tendrías que
// crear una propiedad para ella, pero esa imagen no se crearía de inmediato:
// UIKit tiene una optimización de rendimiento que significa que la imagen solo
// se crea cuando se muestra realmente esa parte de la interfaz de usuario.
// Apple retrasa el trabajo de crear la imagen hasta que realmente se necesite,
// como una propiedad de Swift perezosa, pero en la práctica significa que la
// variable comienza como nil y luego se establece en una imagen tan pronto como
// sea necesaria, momento en el que podemos comenzar a usarla.

// Sí, estos podrían haberse escrito usando opcionales regulares, pero habría sido
// molesto tener que desenvolverlos de forma segura todo el tiempo cuando sabemos
// que deben existir.
// En el mundo de SwiftUI, todo este caso de uso desaparece, por lo que los IUO son
// mucho menos importantes.

// ------ Enlace de ejercicios opcionales implícitamente sin envolver ------
// https://www.hackingwithswift.com/review/implicitly-unwrapped-optionals




// ------ 6.- Nil coalescing ------

// El operador de coalescing nil desenvuelve un opcional y devuelve el valor
// dentro si hay uno. Si no hay un valor, si el opcional era nulo, entonces se
// utiliza un valor predeterminado en su lugar. De cualquier manera,
// el resultado no será opcional: será el valor del interior del valor opcional
// o el valor predeterminado utilizado como copia de seguridad.

// Aquí hay una función que acepta un entero como su único parámetro y devuelve
// una cadena opcional:

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

// Si llamamos a eso con ID 15, volveremos a ser nuo porque el usuario no es
// reconocido, pero con la fusión de nulo podemos proporcionar un valor
// predeterminado de "Anónimo" como este:

let user = username(for: 15) ?? "Anonymous"

// Eso comprobará el resultado que viene de la función username(): si es una
// cadena, entonces se desenvolverá y se colocará en el usuario, pero si tiene
// no en su interior, entonces se utilizará "Anónimo" en su lugar.


// ------ ¿Cuándo deberías usar la fusión de nil en Swift? ------

// La fusión de nulo nos permite intentar desenvolver un opcional, pero 
// proporciona un valor predeterminado si el opcional contiene nil. Esto es
// extraordinariamente útil en Swift, porque aunque los opcionales son una
// gran característica, generalmente es mejor tener una no opcional, tener
// una cadena real en lugar de una "podría ser una cadena, podría ser nula",
// y la fusión nil es una gran manera de conseguirlo.

// Por ejemplo, si estabas trabajando en una aplicación de chat y querías
// cargar cualquier borrador de mensaje que el usuario haya guardado, podrías
// escribir un código como este:

let savedData = loadSavedMessage() ?? ""

// Por lo tanto, si loadSavedMessage() devuelve un opcional con una cadena dentro,
// se desenvolverá y se colocará en savedData. Pero si el opcional es nulo, Swift
// establecerá savedData como una cadena vacía. De cualquier manera, savedData
// terminará siendo una cadena y no una cadena.

// Puedes encadenar la fusión de no si quieres, aunque no creo que sea común.
// Por lo tanto, este tipo de código es válido si lo querías:

let savedData = first() ?? second() ?? ""

// Eso intentará ejecutar first(), y si eso devuelve nil, intenta ejecutar 
// second(), y si eso devuelve nil, entonces usará una cadena vacía.

// Recuerde, la lectura de una clave de diccionario siempre devolverá una opción,
// por lo que es posible que desee usar la fusión nil aquí para asegurarse de
// recuperar una no opcional:

let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0

// Esto es definitivamente una cuestión de gustos, pero los diccionarios ofrecen
// un enfoque ligeramente diferente que nos permite especificar el valor
// predeterminado para cuando no se encuentra la clave:

let crusherScore = scores["Crusher", default: 0]

// Puedes elegir el que prefieras: al leer los valores del diccionario no hay
// ninguna diferencia real.

// ------ Enlace de ejercicios Cero fusión ------
// https://www.hackingwithswift.com/review/nil-coalescing



// ------ 7.- Encadenamiento opcional ------

// Swift nos proporciona un acceso directo al usar opciones: si desea acceder
// a algo como a.b.c y b es opcional, puede escribir un signo de interrogación
// después de él para habilitar el encadenamiento opcional: a.b?.c.

// Cuando se ejecute ese código, Swift comprobará si b tiene un valor, y si es
// nulo, el resto de la línea será ignorado - Swift devolverá nulo inmediatamente.
// Pero si tiene un valor, se desenvolverá y la ejecución continuará.

// Para probar esto, aquí hay una variedad de nombres:

let names = ["John", "Paul", "George", "Ringo"]

// Vamos a usar la primera propiedad de esa matriz, que devolverá el primer
// nombre si hay uno o nulo si la matriz está vacía. Luego podemos llamar a
// mayúsculas() en el resultado para que sea una cadena en mayúsculas:

let beatle = names.first?.uppercased()

// Ese signo de interrogación es un encadenamiento opcional: si primero
// devuelve nil, entonces Swift no intentará ponerlo en mayúsculas y
// establecerá beatle en nil inmediatamente.


// ------ ¿Por qué es tan importante el encadenamiento opcional? ------

// El encadenamiento opcional de Swift nos permite cavar a través de varias
// capas de opciones en una sola línea de código, y si alguna de esas capas
// es nula, entonces toda la línea se vuelve nula.

// Como ejemplo simple, es posible que tengamos una lista de nombres y
// queramos encontrar dónde deben colocarse en función de la primera letra
// de su apellido:

let names = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names["Vincent"]?.first?.uppercased()

// Allí usamos el encadenamiento opcional con el valor del diccionario porque
// los nombres["Vincent"] podrían no existir, y de nuevo al leer el primer
// carácter del apellido, porque es posible que la cadena esté vacía.

// El encadenamiento opcional es un muy buen compañero para la fusión de nil,
// porque le permite cavar a través de capas de opcionales a la vez que
// proporciona un retroceso sensato si alguno de los opcionales es nulo.

// Volviendo a nuestro ejemplo de apellido, podríamos devolver automáticamente
// "?" Si no pudiéramos leer la primera letra del apellido de alguien:

let surnameLetter = names["Vincent"]?.first?.uppercased() ?? "?"

// Para obtener más información sobre el encadenamiento opcional, puedo
// recomendar esta entrada de blog de Andy Bargh:
// https://andybargh.com/optional-chaining/

// ------ Enlace de ejercicios  Encadenamiento opcional ------
// https://www.hackingwithswift.com/review/optional-chaining





// ------ 8.- Intento opcional ------

// Cuando estábamos hablando de funciones de lanzamiento, miramos este código:

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// Eso ejecuta una función de lanzamiento, usando do, try y catch para manejar
// los errores con gracia.

// Hay dos alternativas para probar, las cuales tendrán más sentido ahora que
// entiendes las opciones y obligas a desenvolver.

// El primero es try?, y cambia las funciones de lanzamiento en funciones que
// devuelven un opcional. Si la función lanza un error, se le enviará nulo como
// resultado, de lo contrario, obtendrá el valor devuelto como opcional.

// ¿Usar el intento? Podemos ejecutar checkPassword() así:

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

// La otra alternativa es try!, que puedes usar cuando estás seguro de que la
// función no fallará. Si la función genera un error, su código se bloqueará.

// ¡Utiliza la prueba! Podemos reescribir el código en esto:

try! checkPassword("sekrit")
print("OK!")



// ------  ¿Cuándo deberías usar el intento opcional? ------

// Podemos ejecutar funciones de lanzamiento usando do, try y catch en Swift,
// pero ¿una alternativa es usar try? Para convertir una llamada de función de
// lanzamiento en una opcional. Si la función tiene éxito, su valor de retorno
// será opcional que contenga lo que normalmente habría recibido de vuelta, y
// si falla, el valor de retorno será un conjunto opcional en nulo.

// Hay ventajas y desventajas de usar el intento opcional, pero se centra
// principalmente en lo importante que es el error para ti.
// Si quieres ejecutar una función y solo te importa que tenga éxito o falle,
// no necesitas distinguir entre las diversas razones por las que podría 
// fallar, entonces usar un intento opcional es una gran opción, porque puedes
// reducirlo todo a "¿funcionó?"

// Así que, en lugar de escribir esto:

do {
    let result = try runRiskyFunction()
    print(result)
} catch {
    // it failed!
}

// En su lugar, puedes escribir esto:

if let result = try? runRiskyFunction() {
    print(result)
}

// Si eso es lo que querías hacer, entonces podrías hacer que runRiskyFunction()
// devuelva un opcional en lugar de lanzar un error, pero lanzar y usar un
// intento opcional nos da la flexibilidad de cambiar de opinión más tarde.
// Es decir, si escribimos una función que lanza errores, entonces en el sitio
// de la llamada podemos usar try/catch o usar try opcional basado en lo que
// necesitamos en ese momento.

// Por si sirve de algo, uso un intento opcional en mi propio código, porque
// hace maravillas por permitirme centrarme en el problema en cuestión.

// ------ Enlace de ejercicios Prueba opcional------
// https://www.hackingwithswift.com/review/optional-try



// ------ 9.- Inicializadores fallibles ------

// Cuando hablé de la desenvoltura forzada, usé este código:

let str = "5"
let num = Int(str)

// Eso convierte una cadena en un entero, pero debido a que podrías intentar 
// pasar cualquier cadena allí, lo que realmente obtienes es un entero opcional.

// Este es un inicializador fallable: un inicializador que podría funcionar o no.
// Puedes escribirlos en tus propias estructuras y clases usando init?() En lugar
// de init(), y devuelve nil si algo sale mal. El valor de devolución será
// entonces opcional de su tipo, para que pueda desenvolverlo como desee.

// Por ejemplo, podríamos codificar una estructura de persona que debe crearse
// utilizando una cadena de identificación de nueve letras. Si se utiliza algo
// que no sea una cadena de nueve letras, devolveremos nulo, de lo contrario
// continuaremos como de costumbre.

// Esto es lo que hay en Swift:

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}


// ------ 10.- ¿Por qué querrías un inicializador fallible? ------

// Si un inicializador para una estructura o clase puede fallar, si se da cuenta
// a tiempo parcial de que no puede crear el objeto utilizando los datos que se
// le proporcionaron, entonces necesita un inicializador fallable. En lugar de
// devolver una nueva instancia de objeto, esto devuelve una instancia opcional
// que será nula si la inicialización falló.

// Hacer un inicializador fallible requiere dos pasos:

// Escribe tu inicializador como init?() En lugar de init()

// Devuelve no para cualquier camino que deba fallar

// Puedes tener tantos caminos de fracaso como necesites, pero no tienes que
// preocuparte por el camino del éxito: si no devuelves el método, Swift
// asume que quieres decir que todo funcionó correctamente.

// Para demostrar esto, aquí hay una estructura de empleado que tiene un
// inicializador fallible con dos comprobaciones:

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

// Eso requiere que las contraseñas tengan al menos 8 caracteres y no sean
// la cadena "contraseña". Podemos probar eso con dos empleados de ejemplo:

let tim = Employee(username: "TimC", password: "app1e")
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")

// El primero de ellos será un conjunto opcional a nil porque la contraseña
// es demasiado corta, pero el segundo será un conjunto opcional para una
// instancia de usuario válida.

// Los inicializadores fallibles nos dan la oportunidad de dar un lado atrás
// en la creación de un objeto si las comprobaciones de validación fallan.
// En el caso anterior, esa era una contraseña que era demasiado corta, pero
// también podías comprobar si el nombre de usuario ya se había tomado, si la
// contraseña era la misma que el nombre de usuario, y así suceder.

// Sí, definitivamente podrías poner estos controles en un método separado,
// pero es mucho más seguro ponerlos en el inicializador: es demasiado fácil
// olvidarse de llamar al otro método, y no tiene sentido
// dejar ese agujero abierto.

// ------ Enlace de ejercicios Inicializadores fallibles ------
// https://www.hackingwithswift.com/review/failable-initializers



// ------ Mecanografiado ------

// Swift siempre debe saber el tipo de cada una de tus variables, pero a veces
// sabes más información que Swift. Por ejemplo, aquí hay tres clases:

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

// Podemos crear un par de peces y un par de perros, y ponerlos en una
// matriz, como esta:

let pets = [Fish(), Dog(), Fish(), Dog()]

// Swift puede ver que tanto el pez como el perro heredan de la clase Animal,
// por lo que utiliza la inferencia de tipo para hacer de las mascotas una
// variedad de animales.

// Si queremos hacer un bucle sobre la matriz de mascotas y pedir a todos los
// perros que ladren, tenemos que realizar una mecanografía: Swift comprobará
// si cada mascota es un objeto de perro, y si lo es, 
// podemos llamar a makeNoise().

// Esto utiliza una nueva palabra clave llamada como?, que devuelve una opción:
// será nula si la mecanografía falló, o un tipo convertido de lo contrario.

// Así es como escribimos el bucle en Swift:

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}



// ------ ¿Cuándo es útil el casting de tipo en Swift? ------

// El casting de tipos nos permite decirle a Swift que un objeto que cree que
// es de tipo A es en realidad de tipo B, lo que es útil cuando se trabaja con
// protocolos y herencia de clases.

// Como has visto, los protocolos nos permiten agrupar la funcionalidad común
// para que podamos compartir código. Sin embargo, algunas veces tenemos que
// ir en la dirección opuesta: necesitamos ser capaces de ver que "tienes un
// objeto que se ajusta a un protocolo, pero me gustaría que me dejaras usarlo
// como un tipo específico".

// Para demostrar esto, aquí hay una jerarquía de clases simple:

class Person {
    var name = "Anonymous"
}

class Customer: Person {
    var id = 12345
}

class Employee: Person {
    var salary = 50_000
}

// He utilizado valores predeterminados para cada propiedad, por lo que no
// necesitamos escribir un inicializador.

// Podemos crear una instancia de cada uno de ellos y 
// añadirlos a la misma matriz:

let customer = Customer()
let employee = Employee()
let people = [customer, employee]

// Debido a que tanto el cliente como el empleado heredan de la persona, Swift
// considerará que las personas son constantes como una matriz de personas.
// Por lo tanto, si hacemos un bucle sobre las personas, solo podremos acceder
// al nombre de cada elemento de la matriz, o al menos solo podríamos hacerlo,
// si no fuera por el tipo de casting:

for person in people {
    if let customer = person as? Customer {
        print("I'm a customer, with id \(customer.id)")
    } else if let employee = person as? Employee {
        print("I'm an employee, earning $\(employee.salary)")
    }
}

// Como puede ver, eso intenta convertir a la persona primero en cliente y 
// luego en empleado. Si cualquiera de las pruebas pasa, podemos usar las
// propiedades adicionales que pertenecen a esa clase, así como la
// propiedad de nombre de la clase principal.

// El casting de tipo no está específicamente mal visto en Swift, 
// pero diría que el casting de tipo repetido podría significar que tienes un
// problema subyacente en tu código. Más específicamente, Swift funciona mejor
// cuando entiende con qué datos estás trabajando, y un tipo de reparto le dice
// efectivamente a Swift: "Sé más información que tú". Si puedes encontrar
// formas de transmitir esa información a Swift para que también la entienda,
// eso suele funcionar mejor.

// ------ Enlace de ejercicios Typecasting ------
// https://www.hackingwithswift.com/review/typecasting



// ------ 11.- Resumen opcional ------

// Has llegado al final de la décima parte de esta serie, así que resumamos:

// Los opcionales nos permiten representar la ausencia de un valor de una
// manera clara e inequívoca.

// Swift no nos deja usar opcionales sin desenvolverlos, ya sea usando if let
// o usando guard let.

// Puedes forzar la desenvoltura opcional con un signo de exclamación, pero si
// intentas forzar la desenvoltura, tu código se bloqueará.

// Los opcionales implícitos sin envolver no tienen los controles de seguridad
// de los opcionales regulares.

// Puedes usar la fusión de cero para desenvolver un opcional y proporcionar un
// valor predeterminado si no había nada dentro.

// El encadenamiento opcional nos permite escribir código para manipular un
// opcional, pero si el opcional resulta estar vacío, el código se ignora.

// ¿Puedes probar? Para convertir una función de lanzamiento en un valor de
// retorno opcional, ¡o inténtalo! Para bloquear si se produce un error.

// Si necesita que su inicializador falle cuando se le da una entrada inal,
// use init?() Para hacer un inicializador fallible.

// Puedes usar typecasting para convertir un tipo de objeto en otro.

// ------ Enlace de ejercicios Opcionales ------
// https://www.hackingwithswift.com/review/optionals-summary


// **************** Plantilla **************** //

// ------  ------


// ------  ------


// ------ Enlace de ejercicios ------
//


// ******************************************* //

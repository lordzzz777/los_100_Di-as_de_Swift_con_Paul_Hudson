import UIKit


// ------- Día 19, Proyecto 2, primera parte -------

// St. Augustine said that "the world is a book, and those who don't travel only read a page."
// If you are like me, you really like to travel, so in this project we are going to make a small
// game that encourages people to learn more about the world around them.

// Yes, you read it right: we are playing a game. Don't worry, you will continue to use Swift and 
// UIKit, and you will learn lots of important skills that work as well in applications as in games.

// Today you have three issues to solve, and you will know catalogs of assets, buttons, colors and more.


// ------- Configuración -------

// En este proyecto producirás un juego que muestra algunas banderas aleatorias a los usuarios y les pide 
// que elijan cuál pertenece a un país en particular.

// Ahora, cuando algunas personas escuchan que un tutorial trata sobre un juego, se saltan. Pero eso es un 
// error, y te diré por qué: la razón por la que mezclo aplicaciones y juegos en Hacking con Swift es porque
// obliga a tu cerebro a usar todas tus habilidades de diferentes maneras y diferentes contextos, lo que a su
// vez te ayuda a aprender más a fondo.

// Al mismo tiempo, una de las claves para aprender es usar lo que has aprendido varias veces de varias maneras,
// para que tu nuevo conocimiento realmente se hunda. El propósito de este proyecto es hacer exactamente eso:
// no es complicado, se trata de darte la oportunidad de usar las cosas que acabas de aprender para que
// realmente empieces a internalizarlo todo.

// Dicho esto, todavía hay mucho que aprender: miraremos los catálogos de activos, botones, capas, acciones, 
// números aleatorios, alertas y más.

// Advertencia: si te saltaste el proyecto 1 pensando que todo tendría que ver con la historia o algún otro tedio,
// te equivocaste. ¡Este proyecto será muy difícil si no has completado el proyecto 1!

// Por lo tanto, inicie Xcode y elija "Crear un nuevo proyecto" en la pantalla de bienvenida. Elija la aplicación
// Single View de la lista y haga clic en Siguiente. Para el nombre del producto, introduzca "Proyecto2", luego
// asegúrese de haber seleccionado Swift para el idioma. Ahora haga clic de nuevo en Siguiente y se le preguntará
// dónde desea guardar el proyecto; su escritorio está bien.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-2@2x.png


// ------- Diseñando tu diseño -------

// Cuando trabajo en mis propios proyectos, encuentro que diseñar la interfaz de usuario es la forma más fácil de
// comenzar cualquier proyecto: es divertido, está claro de inmediato si tu idea es factible y también te obliga a
// pensar en los viajes de los usuarios mientras trabajas. Este proyecto no es complicado, pero aún así Interface
// Builder es donde vamos a empezar.


// Al igual que en el proyecto 1, la plantilla de la aplicación Single View le ofrece un UIViewController, llamado
// ViewController, y un storyboard llamado Main.storyboard que contiene el diseño de nuestro controlador de vista única.
// Elige ese guión gráfico ahora para abrir Interface Builder, y verás un espacio grande
// y en blanco listo para que tu genio comience.
     
// En nuestro juego, vamos a mostrar a los usuarios tres banderas, con el nombre del país para adivinar que se muestra
// en la barra de navegación en la parte superior. ¿Qué barra de navegación? Bueno, no hay uno, o al menos todavía no.
// Tenemos que añadir uno, al igual que hicimos con el proyecto anterior.

// Cubrimos mucho en el proyecto 1, por lo que probablemente hayas olvidado cómo hacer esto, pero está bien:
// los proyectos de la aplicación de vista única no vienen con un controlador de navegación como estándar, pero es
// trivial agregar uno: haga clic dentro del controlador de vista, luego vaya al menú Editor y elija
// Insertar > Controlador de navegación.

// Con el nuevo controlador de navegación en su lugar, desplácese para que pueda volver a ver nuestro controlador
// de vista vacío, luego use la biblioteca de objetos para dibujar tres botones en el lienzo. Este es un nuevo
// tipo de vista, pero como te puedes imaginar, es solo un botón que los usuarios pueden tocar. Cada uno de ellos
// debe tener 200 de ancho por 100 de alto. Puede establecer estos valores exactamente utilizando el inspector de
// tamaño en la parte superior derecha de la ventana de Xcode.


// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-4@2x.png

// En los primeros días de iOS, los botones tenían un color de fondo blanco y bordes redondeados, por lo que eran
// visiblemente tapables, pero en estos días los botones son completamente planos con solo un poco de texto.
// Sin embargo, está bien; pronto los haremos más interesantes.

// Puede saltar directamente al inspector de tamaño pulsando el atajo de teclado Alt+Cmd+5 o yendo al menú Ver y
// seleccionando Utilidades > Mostrar inspector de tamaño. No te preocupes por las posiciones X, pero las posiciones
// Y deben ser 100 para la primera bandera, 230 para la segunda y 360 para la tercera. Esto debería hacerlos más
// o menos espaciados de manera más o menos unis en el controlador de vista.

// En la imagen de abajo puedes ver el inspector de tallas, que es la forma más rápida y fácil de posicionar y
// dimensionar las vistas si sabes exactamente dónde las quieres.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-1@2x.png

// El siguiente paso es traer el diseño automático para que podamos establecer nuestro diseño como reglas que se
// pueden adaptar en función del dispositivo que tenga el usuario. Las reglas en este caso no son complicadas,
// pero espero que empiecen a mostrarte lo inteligente que es el diseño automático.

// Vamos a crear nuestras reglas de diseño automático de manera diferente a las del Proyecto 1. Esto no se debe
// a que una forma sea mejor que otra, sino solo para que puedas ver las diversas posibilidades y decidir cuál te conviene más.

// Seleccione el botón superior, luego presione Ctrl y arrastre desde allí directamente hacia arriba hasta justo
// fuera de sí mismo, es decir, en el área blanca del controlador de vista. Al hacer esto, el área blanca se volverá
// azul para mostrar que se va a utilizar para el diseño automático.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-5@2x.png

// Cuando sueltes el botón del ratón, se te presentará una lista de posibles restricciones para crear. 
// En esa lista hay dos que nos importan: "Espacio superior al área segura" y "Centro horizontalmente
// en el área segura".

// Tiene dos opciones al crear múltiples restricciones como esta: puede seleccionar una y luego volver
// a colocar la tecla Ctrl y seleccionar la otra, o puede mantener pulsada la tecla Mayús antes de
// seleccionar un elemento en el menú, y podrá seleccionar más de una a la vez. Es decir, arrustre
// desde el botón directamente hasta el espacio en blanco en el controlador de la vista, suelte el
// botón del ratón y Ctrl para que aparezca el menú, luego mantenga presionado Mayús y elija "Espacio
// superior al área segura" y "Centrar horizontalmente en el área segura". Cuando haya terminado,
// haz clic fuera del menú para cerrarlo.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-6@2x.png

// Esa es la primera bandera completa, así que antes de ir más lejos, vamos a darle vida añadiendo
// algún contenido de ejemplo para que puedas ver cómo se ve.

// En el Proyecto 1, añadimos imágenes a un proyecto con solo arrastrar una carpeta llamada Contenido
// a nuestro proyecto Xcode. Eso está perfectamente bien y puedes seguir haciéndolo para tus otros
// proyectos, pero quiero presentarte otra opción llamada catálogos de activos. Estas son formas
// altamente optimizadas de importar y usar imágenes en proyectos de iOS, y son tan fáciles de usar
// como una carpeta de contenido.

// En su proyecto de Xcode, seleccione el archivo llamado Assets.xcassets. Esto no es realmente un
// archivo, sino que es nuestro catálogo de activos predeterminado de Xcode. Si aún no has descargado
// los archivos de este proyecto, hazlo ahora desde GitHub (https://github.com/twostraws/HackingWithSwift).

// Seleccione las 24 imágenes de bandera de los archivos del proyecto y arrástrelas a la ventana de Xcode
// hasta debajo de donde dice "AppIcon" en nuestro catálogo de activos. Esto creará 12 nuevas entradas en
// el catálogo de activos, una para cada país.

// URLs Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-7@2x.png
// https://www.hackingwithswift.com/img/books/hws/2-8@2x.png
// https://www.hackingwithswift.com/img/books/hws/2-9@2x.png

// Por mucho que odie las distracciones, esta es importante: los activos de iOS vienen en los tamaños 2x y 3x, que son dos veces y tres veces el tamaño del diseño que creaste en Interface Builder. Esto puede parecer extraño, pero es un poco de magia de iOS que les quita una gran cantidad de trabajo a los desarrolladores.

// Los primeros dispositivos iOS tenían pantallas que no eran de retina. Esto significaba una resolución de pantalla de 320x480 píxeles, y podías colocar las cosas exactamente donde las querías: pediste 10 píxeles desde la izquierda y 10 desde la parte superior, y eso fue lo que obtuiste.

// Con el iPhone 4, Apple introdujo pantallas de retina que tenían el doble de píxeles que las pantallas anteriores. En lugar de hacerte diseñar todas tus interfaces dos veces, Apple cambió automáticamente los tamaños de píxeles a "puntos": píxeles virtuales. En los dispositivos que no son de retina, un ancho de 10 puntos se convirtió en 10 píxeles, pero en los dispositivos de retina se convirtió en 20 píxeles. Esto significaba que todo se veía del mismo tamaño y forma en ambos dispositivos, con un solo diseño.

// Por supuesto, el punto de las pantallas de retina era que la pantalla tenía más píxeles, por lo que todo se veía más nítido, solo redimensionar todo para que fuera más grande no era suficiente. Por lo tanto, Apple llevó las cosas un paso más allá: si creas hello.png que tenía un tamaño de 200x100, también podrías incluir un archivo llamado hello@2x.png que tenía un tamaño de 400x200, exactamente el doble, e iOS cargaría el correcto. Entonces, escribes hello.png en tu código, pero iOS sabe buscar y cargar hello@2x.png en los dispositivos retina.

// Más tarde, se introdujeron pantallas retina HD que tienen una resolución de 3x, y estas siguen la misma convención de nomenclatura: hello@2x.png es para dispositivos retina, y hello@3x para dispositivos retina HD. Todavía solo tienes que escribir "hola" en tu código e interfaces de usuario, e iOS hace el resto.

// Podrías pensar que esto suena terriblemente pesado: ¿por qué un dispositivo retina debería tener que descargar aplicaciones que incluyan contenido de Retina HD que no puede mostrar? Afortunadamente, la App Store utiliza una tecnología llamada adelgazamiento de aplicaciones que entrega automáticamente solo el contenido que cada dispositivo es capaz de mostrar: elimina los otros activos cuando se descarga la aplicación, por lo que no se pierde espacio.

// Cunningly, a partir de iOS 10 no se admiten dispositivos que no sean de retina, por lo que si solo admite dispositivos iOS 10 o posteriores, solo necesita incluir las imágenes @2x y @3x.

// Ahora, todo esto es importante porque cuando importamos las imágenes a nuestro catálogo de activos, se colocaron automáticamente en cubos 2x y 3x. Esto se debe a que había nombrado los archivos correctamente: france@2x.png, france@3x.png, y así suces. Xcode reconoció estos nombres y organizó todas las imágenes correctamente.

// Una vez que se importan las imágenes, puede seguir adelante y usarlas en código o en Interface Builder, al y como lo haría si fueran archivos sueltos dentro de una carpeta de contenido. Por lo tanto, vuelva a su guión gráfico, elija el primer botón y seleccione el inspector de atributos (Alt+Cmd+4). Verá que tiene el título "Botón" en este momento (esto está en un campo de texto justo debajo de donde dice "Título: Simple"), así que por favor elimine ese texto. Ahora haga clic en la flecha junto al menú desplegable Imagen y elija "nos".

// Tan pronto como estableces una imagen dentro del botón, nuestras restricciones para el botón están completas: tiene una posición Y porque colocamos una restricción, tiene una posición X porque la estamos centrando horizontalmente, y tiene un ancho y una altura porque la está leyendo de la imagen que asignamos. Adelante, asigna la bandera de EE. UU. a los otros dos botones mientras estás allí.

// Para completar nuestras restricciones de diseño automático, necesitamos asignar restricciones de diseño automático para los botones central e inferior. Seleccione el botón central y, a continuación, arrástrelo al primer botón, no al controlador de vista. Siéltalo y verás "Espaciado vertical" y "Centro horizontalmente". Elige ambos. Ahora elija el tercer botón y arrestre Ctrl hasta el segundo botón, y de nuevo elija "Espaciado vertical" y "Centrar horizontalmente".

// En este punto, nuestro diseño automático está casi completo, pero notará que a pesar de que elegimos centrar las banderas horizontalmente, todas parecen estar atascadas donde se colocaron. La razón de esto es que debe decirle a Interface Builder que actualice todos los marcos de sus botones para que coincidan con las reglas de diseño automático que acaba de crear.

// Esto es bastante fácil de hacer: seleccione las tres vistas de imagen, luego vaya al menú Editor y elija Resolver problemas de diseño automático > Actualizar marcos. Una vez más, verás que esa opción aparece dos veces en el menú, pero ambas hacen lo mismo aquí para que puedas seleccionar cualquiera de las dos. Este comando actualizará los fotogramas (las posiciones y los tamaños) de cada vista de imagen para que coincida con las restricciones de diseño automático que establecemos.

// El último paso antes de que terminemos con Interface Builder por ahora es agregar algunos puntos de venta para nuestros tres botones de bandera, para que podamos hacer referencia a ellos en código. Active el editor asistente pulsando Alt+Cmd+Volver o yendo a Ver > Asistente de edición > Mostrar asistente de edición. Ahora, arrastre con Ctrl desde la primera bandera a su código para crear una salida llamada botón1, luego desde la segunda bandera para crear el botón2, y desde la tercera bandera para crear el botón3.

// URL imagen:
// https://www.hackingwithswift.com/img/books/hws/2-10@2x.png

// Volveremos a ello más tarde, pero por ahora hemos terminado con Interface Builder. Seleccione ViewController.swift y vuelva al editor estándar (es decir, presione Cmd+return para desactivar el editor asistente) para que podamos ocuparnos de algo de codificación.




// ------- Haciendo que el juego básico funcione: UIButton y CALayer -------

// Vamos a crear una serie de cadenas que contendrán todos los países que se utilizarán para nuestro juego, y al mismo tiempo vamos a crear otra propiedad que contenga la puntuación actual del jugador, ¡es un juego, después de todo!

// Comenzamos con las nuevas propiedades. Añade estas dos líneas directamente debajo de las líneas de @IBOutlet que agregaste anteriormente en ViewController.swift:

var countries = [String]()
var score = 0

// La primera línea es algo que viste en el proyecto 1: crea una nueva propiedad llamada países que contendrá una nueva matriz de cadenas. El segundo crea una nueva propiedad llamada puntuación que se establece en 0. Como has visto anteriormente, la inferencia de tipo de Swift hace maravillas aquí: averiguan qué tipo de datos debe ser una variable o constante basada en lo que ponemos en ella.

// Vamos a poner todo esto en práctica en los próximos minutos. En primer lugar, rellenemos nuestra matriz de países con las banderas que tenemos, así que agreguemos este código dentro del método viewDidLoad():

countries.append("estonia")
countries.append("france")
countries.append("germany")
countries.append("ireland")
countries.append("italy")
countries.append("monaco")
countries.append("nigeria")
countries.append("poland")
countries.append("russia")
countries.append("spain")
countries.append("uk")
countries.append("us")

// Esto es idéntico al código que viste en el proyecto 1, así que no hay nada que aprender aquí. Si recuerdas tu introducción de Swift, sabrás que hay una forma más eficiente de hacer esto, que es crearlo todo en una sola línea. Para hacer eso, escribirías:

countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]

// El siguiente paso es escribir un método que muestre tres imágenes de bandera aleatoria en la pantalla. Los botones tienen un método setImage() que nos permite controlar qué imagen se muestra dentro y cuándo, por lo que podemos usarlo con UIImage para mostrar nuestras banderas.

// Añade este nuevo método debajo de viewDidLoad():

func askQuestion() {
    button1.setImage(UIImage(named: countries[0]), for: .normal)
    button2.setImage(UIImage(named: countries[1]), for: .normal)
    button3.setImage(UIImage(named: countries[2]), for: .normal)
}

// La primera línea es bastante fácil: estamos declarando un nuevo método llamado askQuestion(), y no toma parámetros. Los tres siguientes usan UIImage (llamado:) y leen desde una matriz por posición, ambos utilizados en el proyecto 1, por lo que ese bit tampoco es nuevo. Sin embargo, el resto de esas líneas son nuevas y muestran dos cosas:

// button1.setImage() asigna una UIImage al botón. Tenemos la bandera de EE. UU. allí ahora mismo, pero esto la cambiará cuando se llame a askQuestion().

// Para: .normal El método setImage() toma un segundo parámetro que describe qué estado del botón debe cambiarse. Estamos especificando .normal, que significa "el estado estándar del botón".

// Ese parámetro .normal parece una enumeración, pero en realidad es una propiedad estática de una estructura llamada UIControlState. En Objective-C, el lenguaje en el que se escribió UIKit, es una enumeración, pero en Swift se asigna a una estructura que se usa como una enumeración, por lo que si quieres ser técnicamente correcto, no es una enumeración verdadera en Swift. En este punto de tu carrera en Swift no hay diferencia, pero seamos reales: "técnicamente correcto" es el mejor tipo de corrección.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-11@2x.png

// Ahora que tenemos todos los países configurados y un método que muestra banderas, todo lo que tenemos que hacer es añadir una línea más justo antes del final de viewDidLoad() para que todo cobre vida:

askQuestion()

// En este punto, el juego está en un estado adecuado para ejecutarse, así que vamos a intentarlo.

// En primer lugar, seleccione el simulador del iPhone XR yendo al menú Producto y seleccionando Destino > iPhone XR. Ahora presiona Cmd+R ahora para iniciar el simulador y probarlo.

// Inmediatamente notarás dos problemas

// Estamos mostrando las banderas de Estonia y Francia, ambas de color blanco, por lo que es difícil saber si son banderas o solo bloques de color

// El "juego" no es muy divertido, ¡porque siempre son las mismas tres banderas!

// El segundo problema va a tener que esperar unos minutos, pero podemos solucionar el primer problema ahora. Una de las muchas cosas poderosas de las vistas en iOS es que están respaldadas por lo que se llama CALayer, que es un tipo de datos de Core Animation responsable de gestionar el aspecto de su vista.

// Conceptualmente, CALayer se encuentra debajo de todos tus UIViews (que es el padre de UIButton, UITableView, y así sucede), por lo que es como un bajo vientre expuesto que te da muchas opciones para modificar la apariencia de las vistas, siempre y cuando no te importe lidiar con un poco más de complejidad. Vamos a usar una de estas opciones de apariencia ahora: borderWidth.

// La bandera de Estonia tiene una franja blanca en la parte inferior, y debido a que nuestro controlador de vista tiene un fondo blanco, toda la raya es invisible. Podemos arreglarlo dando a la capa de nuestros botones un borde de 1 de ancho, que dibujará una línea negra de un punto a su alrededor. Ponga estas tres líneas en viewDidLoad() directamente antes de que llame a askQuestion():

button1.layer.borderWidth = 1
button2.layer.borderWidth = 1
button3.layer.borderWidth = 1

// ¿Recuerdas cómo los puntos y los píxeles son cosas diferentes? En este caso, nuestro borde será de 1 píxel en dispositivos que no sean de retina, de 2 píxeles en dispositivos de retina y 3 de dispositivos de retina HD. Gracias a la multiplicación automática de punto a píxel, este borde parecerá tener visualmente más o menos el mismo grosor en todos los dispositivos.

// De forma predeterminada, el borde de CALayer es negro, pero puede cambiarlo si lo desea utilizando el tipo de datos UIColor. Dije que CALayer trae consigo un poco más de complejidad, y aquí es donde comienza a ser visible: CALayer se encuentra en un nivel técnico más bajo que UIButton, lo que significa que no entiende lo que es un UIColor. UIButton sabe lo que es un UIColor porque ambos están en el mismo nivel técnico, pero CALayer está por debajo de UIButton, por lo que UIColor es un misterio.

// Sin embargo, no te desesperes: CALayer tiene su propia forma de establecer colores llamada CGColor, que proviene del marco Core Graphics de Apple. Esto, al igual que CALayer, está en un nivel más bajo que UIButton, por lo que los dos pueden hablar felizmente, de nuevo, siempre y cuando estés satisfecho con la complejidad adicional.

// Aún mejor, UIColor (que se encuentra por encima de CGColor) es capaz de convertir a y desde CGColor fácilmente, lo que significa que no tienes que preocuparte por la complejidad, ¡hurra!

// Por lo tanto, juntemos todo eso en algún código que cambie el color del borde usando UIColor y CGColor juntos. Pon estos tres justo debajo de las tres líneas de anto de borde en viewDidLoad():

button1.layer.borderColor = UIColor.lightGray.cgColor
button2.layer.borderColor = UIColor.lightGray.cgColor
button3.layer.borderColor = UIColor.lightGray.cgColor

// Como puedes ver, UIColor tiene una propiedad llamada lightGray que devuelve (¡choque!) Una instancia de UIColor que representa un color gris claro. Pero no podemos poner un UIColor en la propiedad borderColor porque pertenece a una CALayer, que no entiende lo que es un UIColor. Por lo tanto, añadimos .cgColor al final del UIColor para que se convierta automáticamente en un CGColor. Perfecto.

// Si lightGray no te interesa, puedes crear tu propio color como este:

UIColor(red: 1.0, green: 0.6, blue: 0.2, alpha: 1.0).cgColor

// Debe especificar cuatro valores: rojo, verde, azul y alfa, cada uno de los cuales debe variar de 0 (ninguno de ese color) a 1.0 (todo ese color). El código anterior genera un color naranja, luego lo convierte en un CGColor para que se pueda asignar a la propiedad borderColor de una CALayer.

// Eso es suficiente con el estilo, creo: si ejecutas la aplicación ahora, debería verse mejor.



// ------- Día 20, Proyecto 2, segunda parte -------

// Ya estás en la 1/5 del camino a través de los 100 días de Swift, y todavía estás volviendo, 
// eso es increíble, y espero que te sientas orgulloso de que tu consistencia y persistencia
// estén dando sus frutos.

// Hace años, Steve Jobs dijo: "Creo que la vida es algo inteligente: que las cosas no son al
// azar". No sé si tiene razón o no, pero sé que las cosas realmente deberían ser aleatorias
// si estamos jugando un juego, ¡de lo contrario no sería muy divertido!

// Por lo tanto, hoy completaremos el proyecto dos mostrando banderas aleatorias, permitiendo
// que el usuario haga su sus conjeturas y mostrando una alerta de puntuación. Esto podría
// haber implicado el uso de cierres por primera vez, pero aquí vamos a tomar un pequeño atajo
// para que puedas empezar a tener una idea de cómo los cierres, las funciones y los métodos
// son realmente diferentes sabores de la misma cosa.

// Today you have just two topics to work through, and you’ll meet array shuffling, random 
// number generation, @IBAction, and UIAlertController.

// ------- Adivina qué bandera: números aleatorios -------

// Nuestro código actual elige los tres primeros elementos de la matriz de países y los coloca
// en los tres botones de nuestro controlador de vista. Esto está bien para empezar,
// pero realmente tenemos que elegir países al azar cada vez. Hay dos formas de hacer esto:

// Elige tres números aleatorios y úsalos para leer las banderas de la matriz.

// Mezcla el orden de la matriz y luego elige los tres primeros elementos.

// Ambos enfoques son válidos, pero el primero requiere un poco más de trabajo porque tenemos
// que asegurarnos de que los tres números sean diferentes: ¡este juego sería aún menos divertido
// si las tres banderas fueran iguales!

// El segundo enfoque es más fácil de hacer, porque Swift tiene métodos incorporados para barajar
// matrices: shuffle() para barajar en el lugar, y shuffled() para devolver una nueva matriz barajar.

// Al comienzo del método askQuestion(), justo antes de llamar al primer método setImage(), agregue
// esta línea de código:

countries.shuffle()

// Eso aleatorizará automáticamente el orden de los países en la matriz, lo que significa que los 
// países[0], los países[1] y los países[2] se referirán a diferentes banderas cada vez que se
// llame al método askQuestion(). Para probarlo, presione Cmd+R para ejecutar su programa unas
// cuantas veces y ver diferentes banderas cada vez.

// El siguiente paso es rastrear qué respuesta debe ser la correcta, y para ello vamos a crear
// una nueva propiedad para nuestro controlador de vista llamada correctAnswer. Pon esto cerca
// de la parte superior, justo por encima de la puntuación de var = 0:

var correctAnswer = 0

// Esto nos da una nueva propiedad entera que almacenará si es la bandera 0, 1 o 2 que contiene
// la respuesta correcta.

// Para elegir cuál debería ser la respuesta correcta, es necesario volver a usar el sistema
// aleatorio de Swift, porque tenemos que elegir un número aleatorio para la respuesta correcta.
// Todos los tipos numéricos de Swift, como Int, Double y CGFloat, tienen un método aleatorio
// (in:) que genera un número aleatorio en un rango. Por lo tanto, para generar un número aleatorio
// entre 0 y 2 inclusive, debe poner esta línea justo debajo de las tres llamadas setImage()
// en askQuestion():

correctAnswer = Int.random(in: 0...2)

// Ahora que tenemos la respuesta correcta, solo tenemos que poner su texto en la barra de navegación.
// Esto se puede hacer utilizando la propiedad de título de nuestro controlador de vista, pero tenemos
// que añadir una cosa más: no queremos escribir "france" o "uk" en la barra de navegación, porque se
// ve feo. Podríamos poner la primera letra en mayúsculas, y eso funcionaría muy bien para Francia,
// Alemania, etc., pero se vería pobre para "nosotros" y "Reino Unido", que deberían ser "EE. UU." y
// "Reino Unido".

// La solución aquí es simple: en mayúsculas toda la cadena. Esto se hace utilizando el método en
// mayúsculas() de cualquier cadena, por lo que todo lo que tenemos que hacer es leer la cadena de
// la matriz de países en la posición de respuesta correcta, y luego en mayúsculas. Añade esto al
// final del método askQuestion(), justo después de que se establezca correctAnswer:

title = countries[correctAnswer].uppercased()

// Una vez hecho eso, puedes ejecutar el juego y ahora es casi jugable: obtendrás tres banderas
// diferentes cada vez, y la bandera que el jugador necesita tocar tendrá su nombre mostrado
// en la parte superior.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-12.png

// Por supuesto, falta una pieza: el usuario puede tocar los botones de la bandera, pero en realidad no hacen nada. Arreglemos eso...






// ------- De los puntos de venta a las acciones: crear una IBAction -------


// Dije que volveríamos a Interface Builder, y ahora ha llegado el momento: vamos a conectar la
// acción de "toque" de nuestros UIButtons a algún código. Por lo tanto, seleccione Main.storyboard,
// luego cambie al editor asistente para que pueda ver el código junto al diseño.

// Advertencia: por favor, lea el siguiente texto con mucho cuidado. En mi presa, arruino esto todo el
// tiempo, ¡y no quiero que te confunda!

// Seleccione el primer botón, luego Ctrl+arrastre desde él hasta el espacio de su código inmediatamente
// después del final del método askQuestion(). Si lo estás haciendo correctamente, deberías ver una
// información sobre herramientas que dice: "Insertar Outlet, Action o Outlet Collection". Cuando lo dejes
// ir, verás la misma ventana emergente que normalmente ves al crear puntos de venta, pero aquí está la
// trampa: no elijas un punto de venta.

// Esperemos que esos dos no demuestren demasiado trabajo para ti, así que deberías tener un 
// poco de tiempo para experimentar con tu código antes de los desafíos de mañana.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-13@2x.png

// Así es: donde dice "Conexión: Salida" en la parte superior de la ventana emergente, quiero que lo cambies
// a "Acción". Si eliges Outlet aquí (lo que hago con demasiada frecuencia porque tengo prisa), ¡te causarás
// problemas!

// Cuando eliges Acción en lugar de Outlet, la ventana emergente cambia un poco. Todavía se te pedirá un nombre,
// pero ahora verás un campo Evento, y el campo Tipo ha cambiado de UIButton a Cualquiera. Por favor, cambie el
// tipo de nuevo a UIButton, luego ingrese el botónTapped para el nombre y haga clic en Conectar.

// Esto es lo que Xcode escribirá para ti:

@IBAction func buttonTapped(_ sender: UIButton) {
}

// ...Y de nuevo, observe el círculo gris con un anillo a su alrededor a la izquierda, lo que significa que 
// tiene una conexión en Interface Builder.

// Antes de ver lo que esto está haciendo, quiero que hagas dos conexiones más. Esta vez es un poco diferente,
// porque estamos conectando los otros dos botones de bandera al mismo método buttonTapped(). Para ello,
// seleccione cada uno de los dos botones restantes y, a continuación, arrastre la tecla Ctrl sobre el método
// buttonTapped() que se acaba de crear. Todo el método se volverá azul, lo que significa que se va a conectar,
// por lo que puedes dejarlo ir para que suceda. Si el método parpadea después de dejarlo ir,
// significa que se hizo la conexión.

// Entonces, ¿qué tenemos? Bueno, tenemos un solo método llamado buttonTapped(), que está conectado a los tres
// UIButtons. El evento utilizado para el archivo adjunto se llama TouchUpInside, que es la forma de iOS de decir:
// "el usuario tocó este botón, luego soltó su dedo mientras todavía estaba sobre él", es decir, se tocó el botón.

// Una vez más, Xcode ha insertado un atributo al inicio de esta línea para que sepa que esto es relevante para 
// Interface Builder, y esta vez es @IBAction. @IBAction es similar a @IBOutlet, pero va en la otra dirección:
// @IBOutlet es una forma de conectar el código a los diseños del guión gráfico, y @IBAction es una forma de hacer
// que los diseños del guión gráfico activen el código.

// Este método toma un parámetro, llamado remitente. Es del tipo UIButton porque sabemos que eso es lo que se
// llamará el método. Y esto es importante: los tres botones están llamando al mismo método, por lo que es
// importante que sepamos qué botón se tocó para que podamos juzgar si la respuesta fue correcta.

// Pero, ¿cómo sabemos si se tocó el botón correcto? En este momento, todos los botones se ven iguales, pero detrás
// de escena todas las vistas tienen un número de identificación especial que podemos establecer, llamado su etiqueta.
// Este puede ser cualquier número que quieras, así que vamos a dar a nuestros botones los números 0, 1 y 2. Esto no
// es una coincidencia: nuestro código ya está configurado para poner las banderas 0, 1 y 2 en esos botones,
// por lo que si les damos las mismas etiquetas, sabemos exactamente qué bandera se tocó.

// Seleccione la segunda bandera (¡no la primera!), luego busque en el inspector de atributos (Alt+Cmd+4) el
// cuadro de entrada marcado como etiqueta. Es posible que tengas que desplazarte hacia abajo, ¡porque los
// UIButtons tienen muchas propiedades con las que trabajar! Una vez que lo encuentres (está a unos dos
// tercios del camino hacia abajo, justo por encima del color y las propiedades alfa), asegúrate de que
// esté configurado en 1.

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-14@2x.png

// Ahora elige la tercera bandera y establece su etiqueta en 2. No necesitamos cambiar la etiqueta de la
// primera bandera porque 0 es el valor predeterminado.

// Hemos terminado con Interface Builder por ahora, así que vuelve al editor estándar y selecciona
// ViewController.swift - es hora de terminar rellenando el contenido del método buttonTapped().

// Este método tiene que hacer tres cosas:


/// ***  1. Check whether the answer was correct. ***

/// *** 2. Adjust the player's score up or down. ***

/// *** 3. Show a message telling them what their new score is.

// La primera tarea es bastante simple, porque cada botón tiene una etiqueta que coincide con su
// posición en la matriz, y almacenamos la posición de la respuesta correcta en la variable
// correctAnswer. Por lo tanto, la respuesta es correcta si sender.tag es igual a correctAnswer.

// La segunda tarea también es simple, porque ya has conocido el operador += que se suma a un valor.
// Usaremos eso y su contraparte, -=, para sumar o restar la puntuación según sea necesario.
// La tercera tarea es más complicada, así que vamos a llegar a ella en un minuto.

// Ponga este código en el método buttonTapped():

var title: String

if sender.tag == correctAnswer {
    title = "Correct"
    score += 1
} else {
    title = "Wrong"
    score -= 1
}

// Now for the tough bit: we're going to use a new data type called UIAlertController(). This is used 
// to show an alert with options to the user. To make this work you're going to need to use a
// closure – something you’ve learned about in theory, but at last finally get to use in practice.

// If you remember, closures is a special kind of code block that can be used like a variable – Swift
// literally takes a copy of the block of code so that it can be called later. Swift also copies anything
// referenced inside the code, so you need to be careful how you use them. We're going to be using closures
// extensively later, but for now we’ll take two shortcuts.

// Enter this just before the end of the buttonTapped() method:

let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
present(ac, animated: true)

/// ## That code will produce an error for a moment, but that’s OK.

// The title variable was set in our if statement to be either "correct" or "wrong", and you've already
// learned about string interpolation, so the first new thing there is the .alert parameter being used
// for preferredStyle. UIAlertController() gives us two kinds of style: .alert, which pops up a message
// box over the center of the screen, and .actionSheet, which slides options up from the bottom.
// They are similar, but Apple recommends you use .alert when telling users about a situation change,
// and .actionSheet when asking them to choose from a set of options.

// La segunda línea utiliza el tipo de datos UIAlertAction para añadir un botón a la alerta que dice
// "Continuar", y le da el estilo "predeterminado". Hay tres estilos posibles: .default, .cancel y
// .destructive. El aspecto de estos depende de iOS, pero es importante que los uses adecuadamente
// porque proporcionan sugerencias sutiles de la interfaz de usuario a los usuarios.

// El aguijón en la cola está al final de esa línea: manejador: askQuestion. El parámetro del controlador
// está buscando un cierre, que es un código que puede ejecutar cuando se pulsa el botón. Puedes escribir
// código personalizado allí si quieres, pero en nuestro caso queremos que el juego continúe cuando se
// toque el botón, por lo que pasamos a askQuestion para que iOS llame a nuestro método askQuestion().

// Advertencia: Debemos usar askQuestion y no askQuestion(). Si usas el primero, significa "aquí está 
// el nombre del método a ejecutar", pero si usas el segundo, significa "ejecuta el método askQuestion()
// ahora, y te dirá el nombre del método a ejecutar".

// Hay muchas buenas razones para usar los cierres, pero en el ejemplo aquí, simplemente pasar por
// askQuestion es un buen acceso directo, aunque rompe algo que tendremos que arreglar en un momento.

// La línea final llama a present(), que toma dos parámetros: un controlador de vista para presentar 
// y si animar la presentación. Tiene un tercer parámetro opcional que es otro cierre que debería
// ejecutarse cuando la animación de la presentación haya terminado, pero no lo necesitamos aquí.
// Enviamos nuestro UIAlertController para el primer parámetro, y true para el segundo porque la
// animación siempre es agradable.

// Antes de que el código se complete, hay un problema, y Xcode probablemente te esté diciendo qué es:
//  "No se puede convertir el valor del tipo '() -> ()' al tipo de argumento
// esperado '((UIAlertAction) -> Void)?’.”

// Este es un buen ejemplo de los terribles mensajes de error de Swift, y es algo a lo que me temo que
// tendrás que acostumbrarte. Lo que significa decir es que usar un método para este cierre está bien,
// pero Swift quiere que el método acepte un parámetro UIAlertAction que diga qué UIAlertAction fue el toque

// Para que este problema desaparezca, necesitamos cambiar la forma en que se define el método askQuestion().
// Por lo tanto, desplácese hacia arriba y cambie askQuestion() desde esto:

func askQuestion() {}
    
// ...A esto:
    
func askQuestion(action: UIAlertAction!) {}
        
// Eso solucionará el error de UIAlertAction. Sin embargo, introducirá otro problema: cuando la aplicación
// se ejecuta por primera vez, llamamos a askQuestion() dentro de viewDidLoad(), y no le pasamos un parámetro.
// Hay dos formas de solucionar esto:
        
/// *** 1. Al usar askQuestion() en viewDidLoad(), podríamos enviarle el parámetro nil para que signifique "no hay UIAlertAction para esto". ***
        
/// *** 2. Podríamos redefinir askQuestion() para que la acción tenga un parámetro predeterminado de nil, lo que significa que si no se especifica,
///     se convierte automáticamente en nil. ***
        
// Aquí no hay una respuesta correcta o incorrecta, así que te mostraré a ambos y puedes elegir. Si quieres
// ir con la primera opción, cambia la llamada askQuestion() en viewDidLoad() a esto:
        
askQuestion(action: nil)
        
// Y si quieres ir con la segunda opción, cambia la definición del método askQuestion() a esta:

func askQuestion(acción: UIAlertAction! = nil) {}

// Ahora, adelante y ejecuta tu programa en el simulador, ¡porque ya está hecho!

// URL Imagen:
// https://www.hackingwithswift.com/img/books/hws/2-15@2x.png



// ----------------------------------------------------------------

// Esperemos que esos dos no demuestren demasiado trabajo para ti, así que deberías tener un poco
// de tiempo para experimentar con tu código antes de los desafíos de mañana.
        



// ------- Día 21, Proyecto 2, tercera parte -------


// Ahora que nuestra aplicación está completa, es hora de un resumen rápido de lo que aprendiste, una breve
// prueba para asegurarte de que has entendido lo que se enseñó, luego otro conjunto de desafíos:
// ejercicios diseñados para que escribas tu propio código lo más rápido posible.

// No doy las respuestas a estos desafíos. Esto es intencional: quiero que lo averigües por ti mismo en lugar
// de solo mirar el trabajo de otra persona.

// John Carmack dijo una vez: "el trabajo duro y enfocado es la verdadera clave del éxito. Mantén tus ojos en
// el objetivo y sigue dando el siguiente paso para completarlo. Si no estás seguro de qué manera hacer algo,
// hazlo en ambos sentidos y mira cuál funciona mejor".

// Por lo tanto, espero que estés de acuerdo en que probar las cosas por ti mismo, cometer errores y encontrar
// soluciones es clave para aprender.

// Hoy deberías trabajar en el capítulo de recapitulación del proyecto 2, completar su revisión y luego
// trabajar en los tres desafíos.


/// ### ---------------- Terminar ----------------

// Este fue otro proyecto relativamente simple, pero te ha dado la oportunidad de repasar algunos conceptos
// con un poco más de detalle, a la vez que apretas algunos conceptos más. Volver a repasar las cosas de una
// manera diferente siempre es útil para aprender, así que espero que no veas este juego (¡o ninguno de los
// juegos que haremos en esta serie!) Como una pérdida de tiempo.

// Sí, en este proyecto revisamos Interface Builder, Auto Layout, puntos de venta y otras cosas, pero al
// mismo tiempo has aprendido sobre las imágenes @2x y @3x, los catálogos de activos, UIButton, CALayer,
// UIColor, números aleatorios, acciones, UIAlertController y más. ¡Y tú también tienes un juego terminado!

///  ** -------- *** Revisa lo que has aprendido *** ------- **

// Cualquiera puede pasar por un tutorial, pero se necesita trabajo real para recordar lo que se enseñó.
// Es mi trabajo asegurarme de que tomes tanto de estos tutoriales como sea posible, así que he preparado
// una breve revisión para ayudarte a comprobar tu aprendizaje.

/// ## Haz clic aquí para revisar lo que aprendiste en el proyecto 2. ##
/// ***  https://www.hackingwithswift.com/review/hws/project-2-guess-the-flag ***


///  ** --------  Desafío  ------- **

// Una de las mejores maneras de aprender es escribir tu propio código tan a menudo como sea posible, así que
// aquí hay tres formas en las que deberías intentar extender esta aplicación para asegurarte de que entiendes
// completamente lo que está pasando:


/// ** 1. Intenta mostrar la puntuación del jugador en la barra de navegación, junto a la bandera para adivinar.

/// ** 2. Mantenga un registro de cuántas preguntas se han hecho y muestre un controlador de alerta final después de que hayan respondido a 10.
///     Esto debería mostrar su puntuación final.

/// ** 3. Cuando alguien elija la bandera equivocada, dígale su error en su mensaje de alerta, algo así como
///     "¡Incorrecto! Esa es la bandera de Francia", por ejemplo



///  ** --------  ¡Comparte tu éxito!   ------- **

// Uno de los motivadores más efectivos del éxito es compartir tu progreso con otras personas: cuando le dices
// a la gente lo que estás haciendo y lo que has aprendido, te anima a volver por más, lo que a su vez te
// ayudará a alcanzar los objetivos de desarrollo de tu aplicación más rápido.

// Por lo tanto, ahora que has hecho todo el trabajo duro, es hora de compartir tu éxito: dile a la gente que
// has completado este proyecto, ya sea haciendo clic en el botón de abajo para comenzar a componer un tuit,
// o escribiendo tu propio mensaje desde cero. Esto definitivamente te animará a seguir aprendiendo, pero
// también ayudará a otras personas a descubrir mi trabajo, ¡gracias!

/// ------- ## Revisión del Proyecto 2: Adivina la bandera ## ----------
///  https://www.hackingwithswift.com/review/hws/project-2-guess-the-flag


// Una vez que hayas terminado, dile a otras personas: has completado tu primer juego de iOS, has pasado la
// prueba e incluso la has ampliado con tu propio código.

// Deberías estar orgulloso de lo que has logrado, ¡buen trabajo!

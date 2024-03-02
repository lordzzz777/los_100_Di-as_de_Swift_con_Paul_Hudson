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

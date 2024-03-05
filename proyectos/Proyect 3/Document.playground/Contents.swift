import UIKit

// ----- Proyecto 1, primera parte -----

// Dennis Ritchie, el inventor del lenguaje de programación C 
// y coinventor de UNIX, dijo una vez que "la única manera de
// aprender un nuevo lenguaje de programación
// es escribiendo programas en él".

// Tenía razón, por supuesto. Has pasado los últimos 15 días
// aprendiendo y revisando los fundamentos del lenguaje de
// programación Swift, pero ahora es el momento de poner en
// práctica todo lo que has aprendido construyendo proyectos
// reales de iOS en Swift.

// Como verás, construir una aplicación es como estar sobre
// los hombros de los gigantes: el marco UIKit de Apple nos
// da una interfaz de usuario increíble con la que trabajar,
// por lo que si traes las habilidades de Swift y ellos
// traen la plataforma de desarrollo, lo único que hay entre
// tú y un gran ingreso de la App Store es una idea increíble.

// No puedo ayudarte con la idea, pero puedo enseñarte a crear
// aplicaciones. Así que, de aquí en adelante, pondrás en
// práctica tus conocimientos.

// Hoy tienes tres temas que resolver, y te encontrarás con los
// controladores de vista, los guiones gráficos y la clase
// FileManager. A medida que avances en los proyectos de esta
// serie, el ritmo se acelerará, pero por ahora nos estamos
// tomando las cosas con calma para que tengas tiempo
// de sentirte cómodo.



// ----- Configuración -----

// En este proyecto producirás una aplicación que permite a los usuarios
// desplazarse por una lista de imágenes y luego seleccionar una para verla.
// Es deliberadamente simple, porque hay muchas otras cosas que tendrás que
// aprender en el camino, así que apárrate, ¡esto va a ser largo!

// Inicie Xcode y elija "Crear un nuevo proyecto de Xcode" en la pantalla
// de bienvenida. Elija la aplicación Single View de la lista y haga clic
// en Siguiente. Para Nombre del producto, ingrese Project1, luego asegúrese
// de tener Swift seleccionado para el idioma.

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-4@2x.png

// Uno de los campos que se le pedirá es "Identificador de organización",
// que es un identificador único que generalmente se compone del nombre
// de dominio de su sitio web personal al revés. Por ejemplo, usaría 
// com.hackingwithswift si estuviera haciendo una aplicación. Tendrás que
// poner algo válido allí si estás implementando en dispositivos, pero de
// lo contrario solo puedes usar com.example.

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-5@2x.png

// Nota importante: algunas de las plantillas de proyecto de Xcode tienen
// casillas de verificación que dicen "Usar datos principales",
// "Incluir pruebas unitarias" y "Incluir pruebas de interfaz de usuario".
// Por favor, asegúrese de que estas casillas no estén marcadas para este
// proyecto y, de hecho, para casi todos los proyectos de esta serie.
// Solo hay un proyecto en el que este no es el caso, ¡y está bastante
// claro allí!

// Ahora haga clic de nuevo en Siguiente y se le preguntará dónde desea
// guardar el proyecto; su escritorio está bien. Una vez hecho esto, se
// te presentará el proyecto de ejemplo que Xcode hizo para ti.
// Lo primero que tenemos que hacer es asegurarnos de que tienes todo
// configurado correctamente, y eso significa ejecutar el proyecto
// como está.

// Cuando ejecutas un proyecto, puedes elegir qué tipo de dispositivo debería
// fingir ser el simulador de iOS, o también puedes seleccionar un dispositivo
// físico si tienes uno conectado. Estas opciones se enumeran en el menú
// Producto > Destino, y deberías ver iPad Air, iPhone 8, etc.

// También hay un acceso directo para este menú: en la parte superior izquierda
// de la ventana de Xcode está el botón de reproducción y parada, pero a la
// derecha debería decir Project1 y luego un nombre de dispositivo. Puedes hacer
// clic en el nombre de ese dispositivo para seleccionar un dispositivo diferente.

// Por ahora, elija iPhone XR y haga clic en el botón Reproducir triángulo en la
// esquina superior izquierda. Esto compilará tu código, que es el proceso de
// convertirlo en instrucciones que los iPhone puedan entender, luego iniciará el
// simulador y ejecutará la aplicación. Como verás cuando interactúes con la
// aplicación, nuestra "aplicación" solo muestra una gran pantalla blanca: no hace
// nada en absoluto, al menos aún no.

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-6@2x.png



// Comenzarás y detendrás mucho los proyectos a medida que aprendas,
// así que hay tres consejos básicos que debes saber:

// Puedes ejecutar tu proyecto pulsando Cmd+R. Esto equivale a hacer
// clic en el botón de reproducción.

// Puedes detener un proyecto en ejecución pulsando Cmd+.
// cuando se selecciona Xcode.

// Si ha realizado cambios en un proyecto en ejecución, simplemente
// presione Cmd+R de nuevo. Xcode le pedirá que detenga la ejecución
// actual antes de iniciar otra. Asegúrate de marcar la casilla
// "No volver a mostrar este mensaje"
// para evitar que te molesten en el futuro.

// Este proyecto se trata de permitir que los usuarios seleccionen
// imágenes para ver, por lo que vas a tener que importar algunas
// imágenes. Descarga los archivos de este proyecto desde GitHub

// (https://github.com/twostraws/HackingWithSwift), y busque en la carpeta
// "project1-files". Verás otra carpeta allí llamada Contenido,
// y me gustaría que arrastraras esa carpeta de Contenido directamente a tu
// proyecto Xcode, justo debajo de donde dice "Info.plist".

// Tip: If you’re not sure what to download, use this link:
// https://github.com/twostraws/HackingWithSwift/archive/main.zip –
// that’s the zip file for all my project files.

// Aparecerá una ventana que le preguntará cómo desea agregar los archivos:
// asegúrese de que "Copiar elementos si es necesario" esté marcado y
// "Crear grupos" esté seleccionado. Importante: no elija "Crear referencias
// de carpetas", de lo contrario su proyecto no funcionará.

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-7@2x.png


// Haz clic en Finalizar y verás aparecer una carpeta de contenido amarilla
// en Xcode. Si ves uno azul, no seleccionaste "Crear grupos", ¡y tendrás
// problemas para seguir este tutorial!



// ----- Listado de imágenes con FileManager -----

// Las imágenes que le he proporcionado provienen de la Administración Nacional
// Oceánica y Atmosférica (NOAA), que es una agencia del gobierno de los Estados
// Unidos y, por lo tanto, produce contenido de dominio público que podemos
// reutilizar libremente. Una vez que se copien en tu proyecto, Xcode los creará
// automáticamente en tu aplicación terminada para que puedas acceder a ellos.

// Detrás de escena, una aplicación iOS es en realidad un directorio que contiene
// muchos archivos: el binario en sí (que es la versión compilada de su código,
// lista para ejecutarse), todos los activos multimedia que utiliza su aplicación,
// cualquier archivo de diseño visual que tenga, además de una variedad de otras
// cosas, como metadatos y derechos de seguridad.

// Estos directorios de aplicaciones se llaman paquetes, y tienen la extensión de
// archivo .app. Debido a que nuestros archivos multimedia están sueltos dentro de
// la carpeta, podemos pedirle al sistema que nos diga todos los archivos que hay
// allí y luego saque los que queremos. Es posible que haya notado que todas las
// imágenes comienzan con el nombre "nssl" (abreviatura de Laboratorio Nacional de
// Tormentas Severas), por lo que nuestra tarea es simple: enumere todos los
// archivos en el directorio de nuestra aplicación y saque los que comienzan con "nssl".

// Por ahora, cargaremos esa lista y la imprimiremos en el visor de registros
// integrado de Xcode, pero pronto los haremos aparecer en nuestra aplicación.

// Por lo tanto, paso 1: abra ViewController.swift. Un controlador de vista se
// piensa mejor como una pantalla de información, y para nosotros eso es solo
// una gran pantalla en blanco. ViewController.swift es responsable de mostrar
// esa pantalla en blanco, y en este momento no contendrá mucho código.
// Deberías ver algo como esto:

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

// Eso contiene cuatro cosas interesantes que quiero discutir antes
// de seguir adelante.

// 1.- El archivo comienza con la importación de UIKit, lo que significa que
// "este archivo hará referencia al kit de herramientas de la interfaz
// de usuario de iOS".

// 2.- La línea de clase ViewController: UIViewController significa
// "Quiero crear una nueva pantalla de datos llamada ViewController,
// basada en UIViewController". Cuando ves un tipo de datos que
// comienza con "UI", significa que proviene de UIKit. UIViewController
// es el tipo de pantalla predeterminado de Apple, que está vacío y
// en blanco hasta que lo cambiamos.

// 3.- La anulación de línea func viewDidLoad() inicia un método.
// Como sabes, la palabra clave de anulación es necesaria porque significa
// "queremos cambiar el comportamiento predeterminado de Apple desde
// UIViewController". viewDidLoad() es llamado por UIKit cuando la pantalla
// se ha cargado, y está listo para que lo personalices.

// 4.- El método viewDidLoad() contiene una línea de código que dice 
// super.viewDidLoad() y una línea de comentario (esa es la línea que
// comienza con //). Esta súper llamada significa "dile al
// UIViewController de Apple que ejecute su propio código antes de que
// yo ejecute el mío", y verás que esto se usa mucho.

// Volveremos mucho a este código en futuros proyectos; no te preocupes
// si todo está un poco nebuloso ahora mismo.

// ¿No hay números de línea? Mientras lees el código, con frecuencia es
// útil tener los números de línea habilitados para que puedas consultar
// un código específico más fácilmente. Si su Xcode no muestra números
// de línea de forma predeterminada, le sugiero que los active ahora:
// vaya al menú de Xcode y elija Preferencias, luego elija la pestaña
// Edición de texto y asegúrese de que "Números de línea" esté marcado.

// Como dije antes, el método viewDidLoad() se llama cuando la pantalla
// se ha cargado y está listo para que lo personalices. Vamos a poner un
// poco más de código en ese método para cargar las imágenes NSSL.
// Añade esto debajo de la línea que dice super.viewDidLoad():

let fm = FileManager.default
let path = Bundle.main.resourcePath!
let items = try! fm.contentsOfDirectory(atPath: path)

for item in items {
    if item.hasPrefix("nssl") {
        // this is a picture to load!
    }
}

// ***** Notas *****

// Algunos desarrolladores experimentados de Swift leerán ese código,
// ¡verán probar!, y luego me escribirán un correo electrónico enojado.
// Si estás pensando en hacer precisamente eso, sigue leyendo primero.

// Esa es una gran parte del código, la mayoría de los cuales son nuevos.
// Vamos a repasar lo que hace línea por línea:

// La línea let fm = FileManager.default declara una constante llamada fm
// y le asigna el valor devuelto por FileManager.default. Este es un tipo
// de datos que nos permite trabajar con el sistema de archivos,
// y en nuestro caso lo usaremos para buscar archivos.

// La línea deja la ruta = Bundle.main.resourcePath! Declara una constante
// llamada ruta que se establece en la ruta de recursos del paquete de
// nuestra aplicación. Recuerde, un paquete es un directorio que contiene
// nuestro programa compilado y todos nuestros activos. Entonces,
// esta línea dice: "dime dónde puedo encontrar todas esas imágenes que
// agregué a mi aplicación".

// La línea deja los artículos = ¡pruébalo! fm.contentsOfDirectory(atPath: path)
// declara una tercera constante llamada elementos que se establece en el contenido
// del directorio en una ruta. ¿Qué camino? Bueno, el que fue devuelto por la línea
// antes. Como puedes ver, ¡los nombres de los métodos largos de Apple realmente hacen
// que su código sea bastante autodescriptivo! La constante de elementos será una
// matriz de cadenas que contendrá nombres de archivo.

// La línea para el elemento en los elementos { inicia un bucle que se ejecutará
// una vez por cada elemento que encontramos en el paquete de aplicaciones. Recuerde:
// la línea tiene una llave de apertura al final, que indica el inicio de un nuevo
// bloque de código, y hay una llave de cierre correspondiente de cuatro líneas debajo.
// Todo lo que hay dentro de esos brackets se ejecutará
// cada vez que el bucle se dé la vuelta.

// La línea if item.hasPrefix("nssl") { es la primera línea dentro de nuestro bucle.
// En este punto, tendremos el primer nombre de archivo listo para trabajar con él,
// y se llamará elemento. Para decidir si es uno que nos importa o no, utilizamos el
// método hasPrefix(): toma un parámetro (el prefijo para buscar) y devuelve verdadero
// o falso. Ese "si" al principio significa que esta línea es una declaración
// condicional: si el elemento tiene el prefijo "nssl", entonces... así es, otra llave
// de apertura para marcar otro nuevo bloque de código. Esta vez, el código se ejecutará
// solo si hasPrefix() devolvió true.

// Finalmente, la línea // ¡esta es una imagen para cargar! Es un comentario:
// si llegamos aquí, el artículo contiene el nombre de una imagen para cargar
// de nuestro paquete, por lo que necesitamos almacenarla en algún lugar.

// ¡En este caso, está perfectamente bien usar Bundle.main.resourcePath! ¡Y prueba!,
// porque si este código falla, significa que nuestra aplicación no puede leer sus
// propios datos, por lo que algo debe estar muy mal. Algunos desarrolladores de Swift
// intentan escribir código para manejar estos errores catastróficos en tiempo de
// ejecución, pero lamentablemente con demasiada frecuencia solo enmascaran el
// problema real que ocurrió.

// En este momento, nuestro código carga la lista de archivos que están dentro
// de nuestro paquete de aplicaciones, luego los repasa todos para encontrar los
// que tienen un nombre que comienza con "nssl". Sin embargo, en realidad no hace
// nada con esos archivos, por lo que nuestro siguiente paso es crear una matriz
// de todas las imágenes "nssl" para que podamos consultarlas más tarde en lugar
// de tener que volver a leer el directorio de recursos una y otra vez.

// Las tres constantes que ya hemos creado - fm, path y items - viven dentro del
// método viewDidLoad(), y serán destruidas tan pronto como ese método termine.
// Lo que queremos es una forma de adjuntar datos a todo el tipo de ViewController
// para que existan mientras exista nuestra pantalla. Por lo tanto, este es un
// ejemplo perfecto de cuándo usar una propiedad: podemos darle a nuestra clase
// ViewController tantas de estas propiedades como queramos, luego leerlas y
// escribirlas tan a menudo como sea necesario mientras exista la pantalla.

// Para crear una propiedad, debe declararla fuera de los métodos. Hemos estado
// creando constantes usando let hasta ahora, pero esta matriz se va a cambiar
// dentro de nuestro bucle, por lo que tenemos que hacerla variable.
// También tenemos que decirle a Swift exactamente qué tipo de datos contendrá;
// en nuestro caso, esa es una matriz de cadenas, donde cada elemento será el
// nombre de una imagen "nssl".

// Añade esta línea de código antes de viewDidLoad():
var pictures = [String]()

// Si lo has colocado correctamente, tu código debería verse así:

class ViewController: UIViewController {
    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
    }
}

// Esa matriz de imágenes se creará cuando se cree la pantalla de ViewController,
// y existirá durante el tiempo que exista la pantalla. Estará vacío, porque en
// realidad no lo hemos llenado con nada, pero al menos está ahí listo para que
// lo llenemos.

// Lo que realmente queremos es añadir a la matriz de imágenes todos los archivos
// que coincidimos dentro de nuestro bucle. Para hacer eso, tenemos que reemplazar
// el existente // ¡esta es una imagen para cargar! Comentar con código para añadir
// cada imagen a la matriz de imágenes.

// Útilmente, las matrices de Swift tienen un método integrado llamado append que
// podemos usar para añadir cualquier elemento que queramos. Por lo tanto, reemplace
// el // ¡esta es una imagen para cargar! Comenta con esto:

pictures.append(item)

// ¡Eso es todo! Molesto, después de todo ese trabajo, nuestra aplicación no
// parecerá hacer nada cuando presiones reproducir, verás la misma pantalla
// blanca que antes. ¿Funcionó o las cosas simplemente fallaron en silencio?

// Para averiguarlo, agregue esta línea de código al final de viewDidLoad(),
// justo antes de la llave de cierre:

print(pictures)

// Eso le dice a Swift que imprima el contenido de las imágenes en la consola de
// depuración de Xcode. Cuando ejecute el programa ahora, debería ver que este
// texto aparece en la parte inferior de su ventana de Xcode: "["nssl0033.jpg",
// "nssl0034.jpg", "nssl0041.jpg", "nssl0042.jpg", "nssl0043.jpg", "nssl0043.jpg",
// "nsl0045.jpg", "nssl0046.jpg", "nssl0049.jpg", "nssl0051.jpg", "nssl0091.jpg”]"

// Nota: a iOS le gusta imprimir muchos mensajes de depuración poco interesantes
// en la consola de depuración de Xcode. No te preocupes si ves muchos otros
// textos allí que no reconoces, solo desplázate hasta que veas el texto de arriba,
// y si lo ves, entonces estás listo.


// ----- Diseñando nuestra interfaz -----

// Nuestra aplicación carga todas las imágenes de tormenta correctamente, pero no
// hace nada interesante con ellas: imprimir en la consola de Xcode es útil para la
// depuración, ¡pero puedo prometerte que no es la aplicación más vendida!

// Para solucionar esto, nuestro siguiente objetivo es crear una interfaz de usuario
// que enumere las imágenes para que los usuarios puedan seleccionar una. UIKit,
// el marco de interfaz de usuario de iOS, tiene muchas herramientas de interfaz de
// usuario integradas en las que podemos aprovechar para crear aplicaciones potentes
// que se vean y funcionen de la manera que los usuarios esperan.

// Para esta aplicación, nuestro componente principal de interfaz de usuario se llama
// UITableViewController. Se basa en UIViewController, el tipo de pantalla más básico
// de Apple, pero añade la capacidad de mostrar filas de datos que se pueden desplazar
// y seleccionar. Puedes ver UITableViewController en la aplicación Configuración, en
// Mail, en Notas, en Salud y muchos más: es potente, flexible y extremadamente rápido,
// por lo que no es de extrañar que se utilice en tantas aplicaciones.

// Nuestra pantalla de ViewController existente se basa en UIViewController,
// pero lo que queremos es que se base en UITableViewController en su lugar.
// Esto no lleva mucho tiempo, pero vas a conocer una nueva parte de Xcode
// llamada Interface Builder.

// Nuestra pantalla de ViewController existente se basa en UIViewController,
// pero lo que queremos es que se base en UITableViewController en su lugar.
// Esto no lleva mucho tiempo, pero vas a conocer una nueva parte de Xcode
// llamada Interface Builder:

class ViewController: UIViewController {}

// Esa es la línea que dice "crea una nueva pantalla llamada ViewController y
// haz que se construya en la propia pantalla UIViewController de Apple".
// Quiero que lo cambies a esto:

class ViewController: UITableViewController {}

// Es solo una pequeña diferencia, pero es importante: significa que ViewController
// ahora hereda su funcionalidad de UITableViewController en lugar de UIViewController,
// que nos da una gran cantidad de funcionalidad adicional de forma gratuita,
// como verás en un momento.

// Detrás de escena, UITableViewController todavía se construye sobre
// UIViewController - esto se llama una "jerarquía de clases", y es una forma común de
// construir funcionalidad rápidamente.

// Hemos cambiado el código de ViewController para que se base en
// UITableViewController, pero también necesitamos cambiar la interfaz de usuario
// para que coincida. Las interfaces de usuario se pueden escribir completamente
// en código si lo desea, y muchos desarrolladores hacen precisamente eso, pero más
// comúnmente se crean utilizando un editor gráfico llamado Interface Builder.
// Tenemos que decirle a Interface Builder (generalmente llamado "IB")
// que ViewController es un controlador de vista de tabla, para que coincida
// con el cambio que acabamos de hacer en nuestro código.

// Hasta este punto hemos estado trabajando completamente en el archivo
// ViewController.swift, pero ahora me gustaría que usaras el navegador
// del proyecto (el panel de la izquierda) para seleccionar el archivo
// Main.storyboard. Los guiones gráficos contienen la interfaz de usuario
// de su aplicación y le permiten visualizar parte o la todo en una sola
// pantalla.

// Cuando seleccione Main.storyboard, cambiará al editor visual de Interface
// Builder, y debería ver algo como la siguiente imagen:

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-19.png

// Ese gran espacio en blanco es lo que produce el gran espacio en blanco
// cuando se ejecuta la aplicación. Si dejas caer nuevos componentes en
// ese espacio, serían visibles cuando se ejecute la aplicación.
// Sin embargo, no queremos hacer eso, de hecho, no queremos ese gran
// espacio en blanco en absoluto, así que vamos a eliminarlo.

// La mejor manera de ver, seleccionar, editar y eliminar elementos en 
// Interface Builder es usar el esquema del documento, pero hay una buena
// probabilidad de que se oculte para usted, por lo que lo primero que debe
// hacer es mostrarlo. Vaya al menú Editor y elija Mostrar esquema del
// documento; probablemente sea la tercera opción desde la parte superior.
// Si ves Ocultar esquema del documento en su lugar, significa que el esquema del
// documento ya está visible.

// El esquema del documento te muestra todos los componentes de todas las pantallas
// de tu guión gráfico. Debería ver "Ver escena del controlador" ya allí, así que
// selecciónalo y luego presiona Retroceso en tu teclado para eliminarlo.

// En lugar de un aburrido y viejo UIViewController, queremos un nuevo y elegante
// UITableViewController que coincida con el cambio que hicimos en nuestro código.
// Para crear uno, presione Cmd+Mayús+L para mostrar la biblioteca de objetos.
// Alternativamente, si no le gustan los métodos abreviados de teclado, puede ir
// al menú Ver y elegir Bibliotecas > Mostrar biblioteca en su lugar.

// La biblioteca de objetos flota sobre la ventana de Xcode y contiene una selección
// de componentes gráficos que puede arrastrar y reorganizar a su contenido.
// Contiene bastantes componentes, por lo que es posible que le resulte útil
// introducir algunas letras en el cuadro "Objetos" para reducir la selección.

// Consejo: Si desea que la biblioteca de objetos permanezca abierta después de
// arrastrar algo, use Alt+Cmd+Shift+L y será una ventana móvil
// y redimensionable cuando aparezca.

// En este momento, el componente que queremos se llama Table View Controller.
// Si escribe "tabla" en el cuadro Filtro, verá el controlador de vista de tabla,
// la vista de tabla y la celda de vista de tabla. Todas son cosas diferentes,
// así que asegúrate de elegir el controlador de vista de tabla, ya que tiene un
// fondo amarillo en su icono.

// Haga clic en el componente del controlador de vista de tabla, luego arrástrelo
// al gran espacio abierto que existe donde estaba el controlador de vista anterior.
// Cuando dejes ir el controlador de vista de la tabla en el lienzo del guión gráfico,
// se transformará en una pantalla que se parece a la siguiente:

// URL de imagen:
// https://www.hackingwithswift.com/img/books/hws/1-20.png



// ***** Toques finales para la interfaz de usuario *****

// Antes de que terminemos aquí, tenemos que hacer algunos pequeños cambios.

// Primero, tenemos que decirle a Xcode que este controlador de vista de tabla
// de guión gráfico es el mismo que tenemos en el código dentro de
// ViewController.swift. Para hacer eso, presione Alt+Cmd+3 para activar el
// inspector de identidad (o vaya a Ver > Utilidades > Mostrar inspector de
// identidad), luego mire en la parte superior un cuadro llamado "Clase".
// Tendrá "UITableViewController" escrito allí en texto gris claro, pero
// si hace clic en la flecha en su lado derecho, debería ver un menú desplegable
// que contiene "ViewController" - por favor, selecciónelo ahora.

// En segundo lugar, tenemos que decirle a Xcode que este nuevo controlador de
// vista de tabla es lo que se debe mostrar cuando la aplicación se ejecuta por
// primera vez. Para ello, presione Alt+Cmd+4 para activar el inspector de
// atributos (o vaya a Ver > Utilidades > Mostrar inspector de atributos),
// luego busque la casilla de verificación llamada "Es el controlador de vista
// inicial" y asegúrese de que esté marcada.

// En tercer lugar, quiero que utilices el esquema del documento para mirar dentro
// del nuevo controlador de vista de tabla. En el interior deberías ver que contiene
// una "Vista de tabla", que a su vez contiene "Célula". Una celda de vista de tabla
// es responsable de mostrar una fila de datos en una tabla, y vamos a mostrar un
// nombre de imagen en cada celda.

// Por favor, seleccione "Célula" y luego, en el inspector de atributos, introduzca
// el texto "Imagen" en el campo de texto marcado como Identificador.
// Mientras esté allí, cambie la opción Estilo en la parte superior del inspector
// de atributos; debería ser Personalizado en este momento, pero cámbielo a Básico.

// Finalmente, vamos a colocar todo este controlador de vista de mesa dentro de otra
// cosa. Es algo que no necesitamos configurar ni preocuparnos, pero es un elemento
// de interfaz de usuario extremadamente común en iOS y creo que lo reconocerás de
// inmediato. Se llama controlador de navegación, y lo ves en acción en aplicaciones
// como Configuración y Correo: proporciona la delgada barra gris en la parte
// superior de la pantalla, y es responsable de esa animación deslizante de derecha
// a izquierda que ocurre cuando te mueves entre pantallas en iOS.

// Para colocar nuestro controlador de vista de tabla en un controlador de navegación,
// todo lo que necesita hacer es ir al menú Editor y elegir Insertar > Controlador de
// navegación. Interface Builder moverá su controlador de vista existente hacia la
// derecha y agregará un controlador de navegación a su alrededor; ahora debería ver
// una barra gris simulada por encima de su vista de tabla. También moverá la propiedad
// "Es el controlador de vista inicial" al controlador de navegación.

// En este punto, has hecho lo suficiente para echar un vistazo a los resultados
// de tu trabajo: pulsa el botón de reproducción de Xcode ahora, o pulsa Cmd+R si
// quieres sentirte un poco de élite. Una vez que se ejecute su código, ahora verá
// el cuadro blanco liso reemplazado por una gran vista de tabla vacía.
// Si haces clic y arrastras el ratón, verás que se desplaza y rebota como era de
// esperar, aunque obviamente todavía no hay datos allí. También deberías ver una7
// barra de navegación gris en la parte superior; eso será importante más adelante.


// ***** Mostrando muchas filas *****


// El siguiente paso es hacer que la vista de la tabla muestre algunos datos.
// Específicamente, queremos que muestre la lista de imágenes "nssl", una por fila.
// El tipo de datos UITableViewController de Apple proporciona comportamientos
// predeterminados para muchas cosas, pero por defecto dice que hay cero filas.

// Nuestra pantalla ViewController se basa en UITableViewController y puede anular
// el comportamiento predeterminado de la vista de tabla de Apple para proporcionar
// personalización cuando sea necesario. Solo tienes que anular los bits que quieras;
// los valores predeterminados son todos razonables.

// Para que la tabla muestre nuestras filas, necesitamos anular dos comportamientos:
// cuántas filas se deben mostrar y qué debe contener cada fila.
// Esto se hace escribiendo dos métodos con un nombre especial, pero cuando eres nuevo
// en Swift, pueden parecer un poco extraños al principio. Para asegurarme de que todos
// puedan seguir, voy a tomar esto con calma, ¡este es el primer proyecto, después de
// todo!

// Comencemos con el método que establece cuántas filas deben aparecer en la tabla.
// Añade este código justo después del final de viewDidLoad() - si empiezas a
// escribir "número de", entonces puedes usar la finalización del código de Xcode
// para hacer la mayor parte del trabajo por ti:

override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
}

// ***** Nota: *****

// eso tiene que ser después del final de viewDidLoad(), lo que significa después 
// de su corchete de cierre.

// Ese método contiene la palabra "vista de tabla" tres veces, lo que es profundamente
// confuso al principio, así que vamos a desglosar lo que significa.

// La palabra clave override significa que el método ya se ha definido, y queremos
// anular el comportamiento existente con este nuevo comportamiento.
// Si no lo anulaste, entonces el método definido anteriormente se ejecutaría,
// y en este caso diría que no hay filas.

// La palabra clave func inicia una nueva función o un nuevo método; Swift utiliza
// la misma palabra clave para ambos. Técnicamente hablando, un método es una función
// que aparece dentro de una clase, al igual que nuestro ViewController,
// pero por lo demás no hay diferencia.

// El nombre del método es el siguiente: tableView. Eso no suena muy útil, pero la 
// forma en que Apple define los métodos es asegurarse de que la información que se
// pasa a ellos, los parámetros, se nombre de manera útil, y en este caso,
// lo primero que se pasa es la vista de tabla que desencadenó el código. Una vista
// de tabla, como habrás visto, es la cosa de desplazamiento que contendrá todos
// nuestros nombres de imágenes, y es un componente central en iOS.

// Como se prometió, lo siguiente que vendrá es tableView: UITableView, que es la
// vista de tabla que desencadenó el código. Pero esto contiene dos piezas de
// información a la vez: tableView es el nombre que podemos usar para hacer
// referencia a la vista de tabla dentro del método, y UITableView es el tipo de
// datos, el bit que describe lo que es.

// La parte más importante del método es la siguiente: sección numberOfRowsInSection:
// Int. Esto describe lo que realmente hace el método. Sabemos que implica una vista
// de tabla porque ese es el nombre del método, pero la parte numberOfRowsInSection es
// la acción real: este código se activará cuando iOS quiera saber cuántas filas hay
// en la vista de tabla. La parte de la sección está ahí porque las vistas de la tabla
// se pueden dividir en secciones, como la forma en que la aplicación Contactos separa
// los nombres por primera letra. Solo tenemos una sección, así que podemos ignorar
// este número. La parte Int significa "esto será un número entero", lo que significa
// un número entero como 3, 30 o 35678".

// Por último, -> Int significa "este método debe devolver un entero", que debería
// ser el número de filas que se mostrarán en la tabla.

// Había una cosa más que me perdí, y me la perdí por una razón: es un poco confusa
// en este momento de tu carrera en Swift. ¿Te diste cuenta de que está ahí dentro?
// Espero que puedas recordar que eso significa que el primer parámetro no se pasa
// usando un nombre cuando se llama externamente; este es un remanente de
// Objective-C, donde el nombre del primer parámetro generalmente se incorporaba
// directamente en el nombre del método.

// En este caso, el método se llama tableView() porque su primer parámetro es la 
// vista de tabla con la que estás trabajando. No tendría mucho sentido escribir
// tableView(tableView: someTableView), por lo que usar el subrayado significa que
// escribirías tableView(someTableView) en su lugar.

// No voy a fingir que es fácil entender cómo se ven y funcionan los métodos de Swift,
// pero lo mejor que puedes hacer es no preocuparte demasiado si no lo entiendes
// ahora mismo porque después de unas horas de codificación
// serán de segunda naturaleza.

// Al menos necesitas saber que se hace referencia a estos métodos usando su nombre
// (tableView) y cualquier parámetro con nombre. Los parámetros sin nombres solo se
// hacen referencia como guiones bajos: _. Entonces, para darle su nombre completo,
// el método que acabas de escribir se conoce como tableView(_:numberOfRowsInSection:)
// - torpe, lo sé, por lo que la mayoría de la gente suele hablar de la parte
// importante, por ejemplo, "en el método numberOfRowsInSection".

// Escribimos solo una línea de código en el método, que era return pictures.count.
// Eso significa "devolver el número de imágenes en nuestra matriz",
// por lo que pedimos que haya tantas filas de tabla como imágenes.



// ***** Descolando las celdas *****

// Ese es el primero de los dos métodos que necesitamos escribir para completar
// esta etapa de la aplicación. El segundo es especificar cómo debería ser cada fila,
// y sigue una convención de nomenclatura similar a la del método anterior.
// Añade este código ahora:

override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
    cell.textLabel?.text = pictures[indexPath.row]
    return cell
}

// Vamos a dividirlo en partes de nuevo, para que puedas ver exactamente cómo funciona.

// En primer lugar, anule func tableView(_ tableView: UITableView es idéntico al método
// anterior: el nombre del método es solo tableView(), y pasará en una vista de tabla
// como su primer parámetro. El _ significa que no es necesario que se envíe un nombre
// externamente, porque es el mismo que el nombre del método.

// En segundo lugar, cellForRowAt indexPath: IndexPath es la parte importante del 
// nombre del método. El método se llama cellForRowAt, y se llamará cuando necesite
// proporcionar una fila. La fila que se muestra se especifica en el parámetro:
// indexPath, que es de tipo IndexPath. Este es un tipo de datos que contiene tanto
// un número de sección como un número de fila. Solo tenemos una sección,
// así que podemos ignorarla y usar el número de fila.

// En tercer lugar, -> UITableViewCell significa que este método debe devolver una 
// celda de vista de tabla. Si te acuerdas, creamos uno dentro de Interface Builder
// y le dimos el identificador "Imagen", así que queremos usarlo.

// Aquí es donde entra un poco de magia de iOS: si miras la aplicación Configuración,
// verás que solo caben unas 12 filas en la pantalla en un momento dado, dependiendo
// del tamaño de tu teléfono.

// Para ahorrar tiempo de CPU y RAM, iOS solo crea tantas filas como necesite para
// funcionar. Cuando una fila se mueve fuera de la parte superior de la pantalla,
// iOS la quitará y la pondrá en una cola de reutilización lista para ser reciclada
// en una nueva fila que entra desde la parte inferior. Esto significa que puedes
// desplazarte a través de cientos de filas por segundo, y iOS puede comportarse
// perezosamente y evitar crear nuevas celdas de vista de tabla, solo recicla las
// existentes.

// Esta funcionalidad se integra directamente en iOS, y es exactamente lo que hace
// nuestro código en esta línea:

let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)

// Eso crea una nueva constante llamada celda al descolar una celda reciclada de la
// tabla. Tenemos que darle el identificador del tipo de celda que queremos reciclar,
// así que ingresamos el mismo nombre que le dimos a Interface Builder: "Imagen".
// También pasamos a lo largo de la ruta de índice que se solicitó; esto es utilizado
// internamente por la vista de tabla.

// Eso nos devolverá una celda de vista de tabla con la que podemos trabajar para
// mostrar información. Puedes crear tus propios diseños de celdas de vista de tabla
// personalizados si lo deseas (¡más sobre eso mucho más tarde!), pero estamos
// utilizando el estilo básico incorporado que tiene una etiqueta de texto.
// Ahí es donde entra la línea dos: le da a la etiqueta de texto de la celda el mismo
// texto que una imagen en nuestra matriz. Aquí está el código de nuevo:

cell.textLabel?.text = pictures[indexPath.row]

// La celda tiene una propiedad llamada textLabel, pero es opcional: 
// podría haber una etiqueta de texto, o puede que no la haya,
// si hubieras diseñado la tuya propia, por ejemplo. En lugar de escribir cheques
// para ver si hay una etiqueta de texto o no, Swift nos permite usar un signo de
// interrogación - textLabel? - para significar "hacer esto solo si hay una
// etiqueta de texto real allí, o no hacer nada de otra manera".

// Queremos establecer que el texto de la etiqueta sea el nombre de la imagen
// correcta de nuestra matriz de imágenes, y eso es exactamente
// lo que hace el código. indexPath.row contendrá el número de fila que se nos
// pide que carguemos, por lo que vamos a usar eso para leer la imagen
// correspondiente de las imágenes y colocarla en la etiqueta de texto de la celda.

// La última línea del método es la celda de retorno. Recuerde, este método espera
// que se devuelva una celda de vista de tabla, por lo que tenemos que devolver la
// que creamos, eso es lo que hace la celda de retorno.

// Con esos dos métodos bastante pequeños en su lugar, puedes ejecutar tu código de
// nuevo ahora y ver cómo se ve. Si todo está bien, ahora deberías ver 10 celdas de
// vista de tabla, cada una con un nombre de imagen diferente en el interior.
// Si haces clic en uno de ellos, se verá gris, pero no pasará nada más.
// Arreglemos eso ahora...

// *****************************************************************************//



// ----- Proyecto 1, segunda parte -----

// Ayer completaste los conceptos básicos de nuestra aplicación, pero, por
// supuesto, le falta un componente importante: ¡no está dibujando ninguna
// imagen! Para una aplicación llamada Storm Viewer, esta parte parece
// bastante importante, como dijo Walt Disney, "de todos nuestros inventos
// para la comunicación de masas, las imágenes todavía hablan el lenguaje
// más universalmente entendido".

// Por lo tanto, hoy completarás el proyecto uno agregando una pantalla de
// detalles que puede cargar imágenes, haciendo que esa pantalla se anime
// cuando el usuario selecciona un nombre de imagen, y luego agregando
// algunos ajustes para pulir la interfaz de usuario.

// Today you have three topics to work through, and you’ll meet UIImageView,
// UIImage, UINavigationBar, y mas.



// ----- Construyendo una pantalla de detalles -----

// En este punto de nuestra aplicación, tenemos una lista de fotos para elegir, pero aunque podemos tocarlas, no pasa nada. Nuestro próximo objetivo es diseñar una nueva pantalla que se mostrará cuando el usuario toque cualquier fila. Vamos a hacer que muestre la imagen seleccionada a pantalla completa, y se deslizará automáticamente cuando se toque una imagen.

// Esta tarea se puede dividir en dos tareas más pequeñas. En primer lugar, necesitamos crear un código nuevo que aloje esta pantalla de detalles. En segundo lugar, necesitamos dibujar la interfaz de usuario para esta pantalla dentro de Interface Builder.

// Comenzamos con la parte fácil: crear un nuevo código para alojar la pantalla de detalles. Desde la barra de menús, vaya al menú Archivo y elija Nuevo > Archivo, y aparecerá una ventana llena de opciones. En esa lista, elija iOS > Cocoa Touch Class y, a continuación, haga clic en Siguiente.

// Se te pedirá que nombres la nueva pantalla y también que le digas a iOS en qué debería basarse. Por favor, introduzca "DetailViewController" para el nombre, y "UIViewController" para "Subclase Of". Asegúrese de que "Crear también archivo XIB" no esté seleccionado, luego haga clic en Siguiente y Crear para agregar el nuevo archivo.

// Ese es el primer trabajo realizado: tenemos un nuevo archivo que contendrá código para la pantalla de detalles.

// La segunda tarea requiere un poco más de reflexión. Vuelve a Main.storyboard, y verás nuestros dos controladores de vista existentes allí: ese es el controlador de vista de navegación a la izquierda y el controlador de vista de tabla a la derecha. Vamos a añadir un nuevo controlador de vista, una nueva pantalla, ahora, que será nuestra pantalla de detalles.

// Primero, abre la biblioteca de objetos y encuentra "View Controller" allí. Arrástrelo al espacio a la derecha de su controlador de vista existente. Podrías colocarlo en cualquier lugar, en realidad, pero es bueno organizar tus pantallas para que fluyan lógicamente de izquierda a derecha.

// Ahora, si miras en el esquema del documento, verás que ha aparecido una segunda "escena del controlador de vista": una para la vista de la tabla y otra para la vista de detalle. Si no está seguro de cuál es cuál, simplemente haga clic en la nueva pantalla, en el gran espacio vacío blanco que se acaba de crear, y debe seleccionar la escena correcta en el esquema del documento.

// Cuando creamos nuestra celda de vista de tabla anteriormente, le dimos un identificador para que pudiéramos cargarla en código. Tenemos que hacer lo mismo con esta nueva pantalla. Cuando lo seleccionó hace un momento, debería haber resaltado "Ver" en el esquema del documento. Por encima de eso habrá "Controlador de vista" con un icono amarillo al lado. Haga clic en él para seleccionar el controlador de vista completo ahora.

// Para darle un nombre a este controlador de vista, vaya al inspector de identidad pulsando Cmd+Alt+3 o usando el menú. Ahora introduce "Detalle" donde dice "Storyboard ID". Eso es todo: ahora podemos referirnos a este controlador de vista como "Detalle" en el código. Mientras esté allí, haga clic en la flecha junto al cuadro Clase y seleccione "DetailViewController" para que nuestra interfaz de usuario esté conectada al nuevo código que hicimos anteriormente.

// Ahora por la parte interesante: queremos que esta pantalla muestre la imagen seleccionada por el usuario de forma agradable y grande, por lo que necesitamos usar un nuevo componente de interfaz de usuario llamado UIImageView. Como deberías poder saber por el nombre, esto es una parte de UIKit (de ahí la "UI"), y es responsable de ver las imágenes, ¡perfecto!

// Busque en la biblioteca de objetos para encontrar la vista de imagen; es posible que le resulte más fácil volver a usar el cuadro de filtro. Haga clic y arrastre la vista de imagen desde la biblioteca de objetos al controlador de vista de detalle, luego suelte. Ahora, arrastra sus bordes para que llene todo el controlador de vista.


// URL de la imagen:
// https://www.hackingwithswift.com/img/books/hws/1-21.png


// Esta vista de imagen no tiene contenido en este momento, por lo que está llena de un fondo azul pálido y la palabra UIImageView. Sin embargo, no le asignaremos ningún contenido en este momento, eso es algo que haremos cuando se ejecute el programa. En su lugar, tenemos que decirle a la vista de imagen cómo dimensionarse para nuestra pantalla, ya sea iPhone o iPad.

// Esto puede parecer extraño al principio, después de todo, lo acabas de colocar para llenar el controlador de vista, y tiene el mismo tamaño que el controlador de vista, así que eso debería ser todo, ¿verdad? Bueno, no del todo. Piénsalo: hay muchos dispositivos iOS en los que tu aplicación podría ejecutarse, todos con diferentes tamaños. Entonces, ¿cómo debería responder la vista de imagen cuando se muestra en un 6 Plus o tal vez incluso en un iPad?

// iOS tiene una respuesta para esto. Y es una respuesta brillante que en muchos sentidos funciona como magia para hacer lo que quieres. Se llama Auto Layout: le permite definir reglas sobre cómo se deben diseñar sus vistas, y se asegura automáticamente de que se sigan esas reglas.

// Pero, ¡y esto es un gran pero!, tiene dos reglas propias, ambas deben ser seguidas por usted:

// Sus reglas de diseño deben estar completas. Es decir, no puede especificar solo una posición X para algo, también debe especificar una posición Y. Si ha pasado un tiempo desde que estabas en la escuela, "X" es la posición desde la izquierda de la pantalla, y "Y" es la posición desde la parte superior de la pantalla.

// Sus reglas de diseño no deben entrar en conflicto. Es decir, no se puede especificar que una vista debe estar a 10 puntos del borde izquierdo, a 10 puntos del borde derecho y 1000 puntos de ancho. La pantalla de un iPhone 5 tiene solo 320 puntos de ancho, por lo que su diseño es matemáticamente imposible. Auto Layout intentará recuperarse de estos problemas rompiendo las reglas hasta que encuentre una solución, pero el resultado final nunca es lo que quieres.

// Puedes crear reglas de diseño automático, conocidas como restricciones, completamente dentro de Interface Builder, y te advertirá si no estás siguiendo las dos reglas. Incluso te ayudará a corregir cualquier error que cometas sugiriendo soluciones. Nota: las correcciones que sugiere podrían ser correctas, pero puede que no lo sean: ¡haz un paso de cuidado!

// Vamos a crear cuatro restricciones ahora: una para la parte superior, inferior, izquierda y derecha de la vista de imagen para que se expanda para llenar el controlador de vista de detalle, independientemente de su tamaño. Hay muchas formas de agregar restricciones de diseño automático, pero la forma más fácil en este momento es seleccionar la vista de imagen, luego ir al menú Editor y elegir > Resolver problemas de diseño automático > Restablecer las restricciones sugeridas.

// Verás esa opción en la lista dos veces en el menú porque hay dos opciones sutilmente diferentes, pero en este caso no importa cuál elijas. Si prefieres los métodos abreviados de teclado, pulsa Mayús+Alt+Cmd+= para lograr lo mismo.

// Visualmente, tu diseño se verá bastante idéntico una vez que hayas añadido las restricciones, pero hay dos diferencias sutiles. En primer lugar, hay una delgada línea azul alrededor de UIImageView en el controlador de vista de detalle, que es la forma de Interface Builder de mostrarle que la vista de imagen tiene una definición de diseño automático correcta.

// En segundo lugar, en el panel de esquema del documento verás una nueva entrada para "Restricciones" debajo de la vista de imagen. Las cuatro restricciones que se añadieron están ocultas debajo de ese elemento de restricciones, y puedes expandirlo para verlas individualmente si tienes curiosidad.

// Con las restricciones añadidas, hay una cosa más que hacer aquí antes de que terminemos con Interface Builder, y es conectar nuestra nueva vista de imagen a algún código. Verás, tener la vista de imagen dentro del diseño no es suficiente; si realmente queremos usar la vista de imagen dentro del código, necesitamos crear una propiedad para ella que esté adjunta al diseño.

// Esta propiedad es como la matriz de imágenes que hicimos anteriormente, pero tiene una sintaxis Swift un poco más "interesante" que necesitamos cubrir. Aún más astutamente, se crea utilizando una pieza de diseño de interfaz de usuario realmente extraña que enviará tu cerebro a un bucle si has utilizado otros IDE gráficos.

// Vamos a sumergirnos, y te lo explicaré en el camino. Xcode tiene un diseño de visualización especial llamado Editor Asistente, que divide tu editor de Xcode en dos: la vista que tenías antes en la parte superior y una vista relacionada en la parte inferior. En este caso, nos va a mostrar Interface Builder en la parte superior, y el código para el controlador de vista detallada a continuación.

// Xcode decide qué código mostrar en función de qué elemento está seleccionado en Interface Builder, así que asegúrese de que la vista de imagen aún esté seleccionada y elija Ver > Asistente de Editor > Mostrar Asistente de Editor en el menú. También puedes usar el método abreviado de teclado Alt+Cmd+Return si lo prefieres.

// Xcode puede mostrar el editor asistente como dos paneles verticales en lugar de dos paneles horizontales. Encuentro los paneles horizontales más fáciles, es decir, uno encima del otro. Puedes cambiar entre ellos yendo a Ver > Asistente de edición y eligiendo Asistente de editores a la derecha o Asistentes de editores en la parte inferior.

// Independientemente de cuál prefiera, ahora debería ver el controlador de vista de detalle en el Generador de interfaces en un panel, y en el otro panel el código fuente de DetailViewController.swift. Xcode sabe que debe cargar DetailViewController.swift porque cambiaste la clase para que esta pantalla fuera "DetailViewController" justo después de cambiar su ID de guión gráfico.

// Ahora, por la extraña pieza de la interfaz de usuario. Lo que quiero que hagas es esto:

// Asegúrate de que la vista de imagen esté seleccionada.

// Mantén pulsada la tecla Ctrl en el teclado.

// Presione el botón del ratón en la vista de la imagen, pero manténgalo presionado, no lo suelte.

// Mientras continúas manteniendo pulsadas la tecla Ctrl y el botón del ratón, arrastra desde la vista de la imagen a tu código, al otro panel del editor asistente.

// A medida que mueve el cursor del ratón, debería ver una línea azul que se extiende desde la vista de la imagen hacia su código. Estira esa línea para que apunte entre la clase DetailViewController: UIViewController { y override func viewDidLoad() {.

// Cuando estés entre esos dos, debería aparecer una línea azul horizontal, junto con una información sobre herramientas que dice Insertar salida o conexión de salida. Cuando lo veas, suelta la Ctrl y el botón del ratón. (No importa cuál liberes primero).

// Si sigue estos pasos, debería aparecer un globo con cinco campos: Conexión, Objeto, Nombre, Tipo y Almacenamiento.

// URL de la imagen:
// https://www.hackingwithswift.com/img/books/hws/1-22.png


// De forma predeterminada, las opciones deben ser "Outlet" para la conexión, "Detail View Controller" para el objeto, nada para el nombre, "UIImageView" para el tipo y "Strong" para el almacenamiento. Si ve "Débil" para el almacenamiento, cámbielo a "Fuerte" - Xcode recordará esa configuración a partir de ahora.

// Déjalos a todos en paz, excepto el nombre. Me gustaría que introdujeras "imageView" allí. Cuando lo hayas hecho, haz clic en el botón Conectar y Xcode insertará una línea de código en DetailViewController.swift. Deberías ver esto:

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// A la izquierda de la nueva línea de código, en el canalón junto al número de línea, hay un círculo gris con una línea a su alrededor. Si mueves el cursor del ratón sobre eso, verás el flash de la vista de imagen: ese pequeño círculo es la forma de Xcode de decirte que la línea de código está conectada a la vista de imagen en tu guión gráfico.

// Por lo tanto, arrastramos con Ctrl desde Interface Builder directamente a nuestro archivo Swift, y Xcode escribió una línea de código para nosotros como resultado. Algunas partes de ese código son nuevas, así que vamos a desglosar toda la línea:

// @IBOutlet: Este atributo se utiliza para decirle a Xcode que hay una conexión entre esta línea de código y Interface Builder.

// Var: Esto declara una nueva variable o propiedad variable.

// imageView: Este era el nombre de la propiedad asignado a UIImageView. Tenga en cuenta la forma en que se usan las letras mayúsculas: las variables y las constantes deben comenzar con una letra minúscula, luego usar una letra mayúscula al comienzo de cualquier palabra posterior. Por ejemplo, myAwesomeVariable. Esto a veces se llama caso de camello.

// UIImageView!: Esto declara que la propiedad es de tipo UIImageView, y de nuevo vemos el símbolo opcional implícitamente desenvuelto: !. Esto significa que UIImageView puede estar allí o puede no estar allí, pero estamos seguros de que definitivamente estará allí para cuando queramos usarlo.

// Si estuvieras luchando por entender los opcionales implícitamente sin envolver (¡no te preocupes; son complicados!), este código podría hacerlo un poco más claro. Verás, cuando se está creando el controlador de vista de detalle, su vista aún no se ha cargado, es solo un poco de código que se ejecuta en la CPU.

// Cuando se han hecho las cosas básicas (asignando suficiente memoria para contenerlo todo, por ejemplo), iOS sigue adelante y carga el diseño desde el guión gráfico, luego conecta todas las salidas del guión gráfico al código.

// Por lo tanto, cuando se crea el controlador de detalles por primera vez, el UIImageView no existe porque aún no se ha creado, pero todavía necesitamos tener algo de espacio para él en la memoria. En este punto, la propiedad es nula, o simplemente algo de memoria vacía. Pero cuando la vista se cargue y la toma de corriente se conecte, la UIImageView apuntará a una UIImageView real, no a nula, para que podamos empezar a usarla.

// En resumen: comienza la vida como nula, luego se establece en un valor antes de usarlo, por lo que estamos seguros de que nunca será nulo para el momento en que queramos usarlo, un caso de libro de texto de opcionales implícitamente desenvueltos. Si todavía no entiendes los opcionales implícitamente desenvueltos, está perfectamente bien: sigue adelante y se aclararán con el tiempo.

// Esa es nuestra pantalla de detalles completa: hemos terminado con Interface Builder por ahora, y podemos volver al código. Esto también significa que hemos terminado con el editor asistente, por lo que puede volver al editor de pantalla completa yendo a Ver > Editor estándar > Mostrar editor estándar.



// ----- Cargando imágenes con UIImage -----


// En este punto, tenemos nuestro controlador de vista de tabla original lleno de imágenes para seleccionar, además de un controlador de vista de detalle en nuestro guión gráfico. El siguiente objetivo es mostrar la pantalla de detalles cuando se toque cualquier fila de la tabla, y hacer que muestre la imagen seleccionada.

// Para que esto funcione, necesitamos añadir otro método con un nombre especial a ViewController. Este se llama tableView(_, didSelectRowAt:), que toma un valor de IndexPath al igual que cellForRowAt que nos dice con qué fila estamos trabajando. Esta vez tenemos que trabajar un poco más:

// Necesitamos crear una propiedad en DetailViewController que contenga el nombre de la imagen que se va a cargar.

// Implementaremos el método didSelectRowAt para que cargue un DetailViewController desde el guión gráfico.

//Por último, rellenaremos viewDidLoad() dentro de DetailViewController para que cargue una imagen en su vista de imagen basada en el nombre que establecidimos anteriormente.

// Resuelvamos cada uno de ellos en orden, comenzando por el primero: crear una propiedad en DetailViewController que contenga el nombre de la imagen que se va a cargar.

// Esta propiedad será una cadena, el nombre de la imagen que se va a cargar, pero tiene que ser una cadena opcional porque cuando se cree el controlador de vista por primera vez, no existirá. Lo configuraremos de inmediato, pero aún así comienza con la vida vacía.

// Por lo tanto, agregue esta propiedad a DetailViewController ahora, justo debajo de la línea @IBOutlet existente:

var selectedImage: String?

// Esa es la primera tarea realizada, así que en la segunda: implemente didSelectRowAt para que cargue un DetailViewController desde el guión gráfico.

// Cuando creamos el controlador de vista de detalle, le diste el ID del guión gráfico "Detalle", que nos permite cargarlo desde el guión gráfico utilizando un método llamado instantiateViewController(withIdentifier:). Cada controlador de vista tiene una propiedad llamada guión gráfico que es el guión gráfico desde el que se cargó o nulo. En el caso de ViewController, será Main.storyboard, que es el mismo storyboard que contiene el controlador de vista de detalle, por lo que cargaremos desde allí.

// Podemos dividir esta tarea en tres tareas más pequeñas, dos de las cuales son nuevas:

// Cargue el diseño del controlador de vista detallada desde nuestro guión gráfico.

// Establezca su propiedad selectedImage para que sea el elemento correcto de la matriz de imágenes.

// Muestra el nuevo controlador de vista.

// El primero de ellos se hace llamando a instantiateViewController, pero tiene dos pequeñas complejidades. En primer lugar, lo llamamos en la propiedad del guión gráfico que obtenemos del tipo UIViewController de Apple, pero es opcional porque Swift no sabe que vinimos de un guión gráfico. Entonces, ¿necesitamos usar? Al igual que cuando estábamos estableciendo la etiqueta de texto de nuestra celda: "intenta hacer esto, pero no hagas nada si había un problema".

// En segundo lugar, a pesar de que instantiateViewController() nos devolverá un DetailViewController si todo funcionó correctamente, Swift cree que devolverá un UIViewController porque no puede ver dentro del guión gráfico para saber qué es qué.

// Esto parecerá confuso si eres nuevo en la programación, así que déjame intentar explicarlo usando una analogía. Digamos que quieres salir a una cita esta noche, así que me pides que arregle un par de entradas para un evento. Me voy, encuentro boletos y luego te los entrego en un sobre. Cumplí mi parte del trato: tú pediste entradas, yo te conseguí entradas. Pero, ¿qué entradas son: entradas para un evento deportivo? ¿Entradas para una ópera? ¿Billetes de tren? La única manera de averiguarlo es abrir el sobre y mirar.

// Swift tiene el mismo problema: instantiateViewController() tiene el tipo de retorno UIViewController, por lo que en lo que respecta a Swift, cualquier controlador de vista creado con él es en realidad un UIViewController. Esto nos causa un problema porque queremos ajustar la propiedad que acabamos de hacer en DetailViewController. La solución: tenemos que decirle a Swift que lo que tiene no es lo que cree que es.

// El término técnico para esto es "typecasting": pedirle a Swift que trate un valor como un tipo diferente. Swift tiene varias formas de hacer esto, pero vamos a usar la versión más segura: efectivamente significa, "por favor, trate de tratar esto como un DetailViewController, pero si falla, entonces no haga nada y siga adelante".

// Una vez que tenemos un controlador de vista de detalle en nuestras manos, podemos configurar su propiedad selectedImage para que sea igual a las imágenes [indexPath.row] al igual que estábamos haciendo en cellForRowAt, esa es la parte fácil.

// El tercer minipaso es hacer que la nueva pantalla se muestre a sí misma. Ya has visto que los controladores de vista tienen una propiedad de guión gráfico opcional que contiene el guión gráfico desde el que se cargaron o es nulo. Bueno, también tienen una propiedad de controlador de navegación opcional que contiene el controlador de navegación en el que están dentro si existe, o nulo de lo contrario.

// Esto es perfecto para nosotros, porque los controladores de navegación son responsables de mostrar las pantallas. Claro, proporcionan esa bonita barra gris en la parte superior que se ve en muchas aplicaciones, pero también son responsables de mantener una gran pila de pantallas por las que navegan los usuarios.

// De forma predeterminada, contienen el primer controlador de vista que creó para ellos en el guión gráfico, pero cuando se crean nuevas pantallas, puede empujarlas a la pila del controlador de navegación para que se deslicen sin problemas, tal como se ve en Configuración. A medida que se presionan más pantallas, siguen deslizándose. Cuando los usuarios regresan a una pantalla, es decir, tocando Atrás o deslizando el dedo de izquierda a derecha, el controlador de navegación destruirá automáticamente el antiguo controlador de vista y liberará su memoria.

// Esos tres minipasos completan el nuevo método, así que es hora del código. Por favor, agregue este método a ViewController.swift - He añadido comentarios para que sea más fácil de entender

override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // 1: try loading the "Detail" view controller and typecasting it to be DetailViewController
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
        // 2: success! Set its selectedImage property
        vc.selectedImage = pictures[indexPath.row]

        // 3: now push it onto the navigation controller
        navigationController?.pushViewController(vc, animated: true)
    }
}

// Echemos un vistazo a la línea if let un poco más de cerca por un momento. Hay tres partes que podrían fallar: la propiedad del guión gráfico podría ser nula (¿en cuyo caso? Detendrá la ejecución del resto de la línea), la llamada instantiateViewController() podría fallar si huéramos solicitado "Fzzzzz" o algún otro ID de guión gráfico no válido, y el typecast - ¿el como? Parte - también podría fallar, porque podríamos haber recibido de vuelta un controlador de vista de un tipo diferente.

// Por lo tanto, tres cosas en esa línea tienen el potencial de fracasar. Si has seguido todos mis pasos correctamente, no fracasarán, pero tienen el potencial de fracasar. Ahí es donde si let es inteligente: si alguna de esas cosas devuelve nuo (es decir, fallan), entonces el código dentro de los if let braces no se ejecutará. Esto garantiza que su programa esté en un estado seguro antes de que se tome cualquier medida.

// Solo queda una pequeña cosa por hacer antes de que puedas echar un vistazo a los resultados: tenemos que hacer que la imagen se cargue realmente en la vista de imagen en DetailViewController.

// Este nuevo código se basará en un nuevo tipo de datos, llamado UIImage. Esto no tiene "Ver" en su nombre como lo tiene UIImageView, por lo que no es algo que puedas ver, no es algo que sea realmente visible para los usuarios. En su lugar, UIImage es el tipo de datos que utilizará para cargar datos de imagen, como PNG o JPEG.

// Cuando creas una UIImage, se necesita un parámetro llamado llamado que te permite especificar el nombre de la imagen que se va a cargar. UIImage luego busca este nombre de archivo en el paquete de su aplicación y lo carga. Al pasar la propiedad selectedImage aquí, que se envió desde ViewController, se cargará la imagen que fue seleccionada por el usuario.

// Sin embargo, no podemos usar la imagen seleccionada directamente. Si te acuerdas, lo creamos así:

var selectedImage: String?

// ¿Eso? Significa que podría tener un valor o no, y Swift no te permite usar estos "tal vez" sin comprobarlos primero. Esta es otra oportunidad para si se permite: podemos comprobar que la imagen seleccionada tiene un valor y, si es así, sacarla para su uso; de lo contrario, no hacer nada.

// Añade este código a viewDidLoad() dentro de DetailViewController, después de la llamada a super.viewDidLoad():

if let imageToLoad = selectedImage {
    imageView.image  = UIImage(named: imageToLoad)
}

// La primera línea es lo que marca y desenvuelve lo opcional en la imagen seleccionada. Si por alguna razón la imagen seleccionada es nula (lo que nunca debería ser, en teoría), entonces la línea imageView.image nunca se ejecutará. Si tiene un valor, se colocará en imageToLoad, luego se pasará a UIImage y se cargará.

// Vale, eso es todo: ¡presiona play o Cmd+R ahora para ejecutar la aplicación y probarla! Deberías poder seleccionar cualquiera de las imágenes para que se deslicen y se muestren a pantalla completa.

// Tenga en cuenta que tenemos un botón Atrás en la barra de navegación que nos permite volver a ViewController. Si hace clic y arrastra con cuidado, encontrará que también puede crear un gesto de deslizamiento: haga clic en el borde izquierdo de la pantalla y luego arrastre hacia la derecha, como lo haría con el pulgar en un teléfono.



// ----- Ajustes finales: hidesBarsOnTap, márgenes de área segura -----

// En este punto tienes un proyecto en funcionamiento: puedes presionar Cmd+R para ejecutarlo, pasar por las imágenes de la tabla y luego tocar uno para verlo. Pero antes de que se complete este proyecto, hay varios otros pequeños cambios que vamos a hacer que hacen que el resultado final sea un poco más pulido.

// En primer lugar, es posible que hayas notado que todas las imágenes se están estirando para que se ajusten a la pantalla. Esto no es un accidente, es la configuración predeterminada de UIImageView.

// Esto tarda solo unos pocos clics en solucionarse: elija Main.storyboard, seleccione la vista de imagen en el controlador de vista de detalle y, a continuación, elija el inspector de atributos. Este está en el panel derecho, cerca de la parte superior, y es el cuarto de seis inspectores, justo a la izquierda del icono de la regla.

// Si no te apetece buscarlo, solo tienes que pulsar Cmd+Alt+4 para sacarlo. El estiramiento es causado por el modo de vista, que es un botón desplegable que por defecto es "Aspect Fit" o "Aspect Fill" dependiendo de su versión de Xcode. Intente cambiar eso a "Aspect Fill" para ver la imagen ampliada para adaptarse al espacio disponible.

// URL de la imagen:
// https://www.hackingwithswift.com/img/books/hws/1-18@2x.png

// Si te lo estabas preguntando, Aspect Fit ajusta el tamaño de la imagen para que todo sea visible. También hay Scale to Fill, que mide el tamaño de la imagen para que no quede espacio en blanco al estirarla en ambos ejes. Si utiliza Aspect Fill, la imagen se cuelga efectivamente fuera de su área de visión, por lo que debe asegurarse de habilitar Clip To Bounds para evitar el desperdicio de imagen.

// El segundo cambio que vamos a hacer es permitir a los usuarios ver las imágenes a pantalla completa, sin que la barra de navegación se interpongan en su camino. Hay una manera muy fácil de hacer que esto suceda, y es una propiedad en UINavigationController llamada hidesBarsOnTap. Cuando esto se establece en true, el usuario puede tocar en cualquier lugar del controlador de vista actual para ocultar la barra de navegación, y luego tocar de nuevo para mostrarla.

//Tenga en cuenta: debe configurarlo con cuidado cuando trabaje con iPhones. Si lo tuviéramos configurado todo el tiempo, entonces afectaría a los toques en la vista de la tabla, lo que causaría estragos cuando el usuario intentara seleccionar cosas. Por lo tanto, tenemos que habilitarlo al mostrar el controlador de vista de detalle, y luego desactivarlo cuando se oculta.

// Ya has conocido el método viewDidLoad(), que se llama cuando se ha cargado el diseño del controlador de vista. Hay varios otros que se llaman cuando la vista está a punto de ser mostrada, cuando se ha mostrado, cuando está a punto de desaparecer y cuando ha desaparecido. Estos se llaman, respectivamente, viewWillAppear(), viewDidAppear(), viewWillDisappear() y viewDidDisappear(). Vamos a usar viewWillAppear() y viewWillDisappear() para modificar la propiedad hidesBarsOnTap para que se establezca en true solo cuando se muestre el controlador de vista de detalle.

// Abra DetailViewController.swift, luego agregue estos dos nuevos métodos directamente debajo del final del método viewDidLoad():

override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.hidesBarsOnTap = true
}

override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    navigationController?.hidesBarsOnTap = false
}

// Hay algunas cosas importantes que hay que tener en cuenta:

// Estamos usando la anulación para cada uno de estos métodos, porque ya tienen valores predeterminados definidos en UIViewController y le estamos pidiendo que use el nuestro en su lugar. No te preocupes si no estás seguro de cuándo usar la anulación y cuándo no, porque si no la usas y es necesario, Xcode te lo dirá.

// Ambos métodos tienen un solo parámetro: si la acción está animada o no. Realmente no nos importa en este caso, así que lo ignoramos.

// Ambos métodos vuelven a usar el prefijo super: super.viewWillAppear() y super.viewWillDisappear(). Esto significa "dile a mi padre el tipo de datos que se llamó a estos métodos". En este caso, significa que pasa el método a UIViewController, que puede hacer su propio procesamiento.

// Estamos usando la propiedad navigationController de nuevo, que funcionará bien porque fuimos empujados a la pila de controladores de navegación desde ViewController. Estamos accediendo a la propiedad usando ?, así que si de alguna manera no estuviéramos dentro de un controlador de navegación, las líneas de hidesBarsOnTap no harán nada.

// Si ejecutas la aplicación ahora, verás que puedes tocar para ver una imagen a tamaño completo, y ya no se estirará. Mientras ves una imagen, puedes tocar para ocultar la barra de navegación en la parte superior, y luego tocar para mostrarla de nuevo.

// El tercer cambio es pequeño pero importante. Si miras otras aplicaciones que utilizan vistas de tabla y controladores de navegación para mostrar pantallas (de nuevo, la configuración es genial para esto), es posible que notes flechas grises a la derecha de las celdas de vista de tabla. Esto se llama un indicador de divulgación, y es una sutil sugerencia de la interfaz de usuario de que tocar esta fila mostrará más información.

// Solo se necesitan unos pocos clics en Interface Builder para obtener esta flecha de divulgación en nuestra vista de tabla. Abra Main.storyboard, luego haga clic en la celda de vista de la tabla, que es la que dice "Título", directamente debajo de "Células de prototipo". La vista de tabla contiene una celda, la celda contiene una vista de contenido y la vista de contenido contiene una etiqueta llamada "Título", por lo que es fácil seleccionar la cosa equivocada. Como resultado, es probable que le resulte más fácil usar el esquema del documento para seleccionar exactamente lo correcto: desea seleccionar la cosa marcada como "Imagen", que es el identificador de reutilización que adjuntamos a nuestra celda de vista de tabla.

// Cuando eso esté seleccionado, deberías poder ir al inspector de atributos y ver "Estilo: Básico", "Identificador: Imagen", y así suces. También verá "Accesorio: Ninguno" - por favor, cámbielo a "Indicador de divulgación", lo que hará que se muestre la flecha gris.

// El cuarto es pequeño pero importante: vamos a colocar algo de texto en la barra gris de la parte superior. Ya has visto que los controladores de vista tienen propiedades de storyboard y navigationController que obtenemos de UIViewController. Bueno, también tienen una propiedad de título que es leída automáticamente por el controlador de navegación: si proporciona este título, se mostrará en la barra de navegación gris en la parte superior.

// En ViewController, agregue este código a viewDidLoad() después de la llamada a super.viewDidLoad():

title = "Storm Viewer"

// This title is also automatically used for the “Back” button, so that users know what they are going back to.

// In DetailViewController we could add something like this to viewDidLoad():


title = "View Picture"

// Eso funcionaría bien, pero en su lugar vamos a usar algo de texto dinámico: vamos a mostrar el nombre de la imagen seleccionada en su lugar.

// Añade esto a viewDidLoad() en DetailViewController:

title = selectedImage

// No necesitamos desenvolver la imagen seleccionada aquí porque tanto la imagen seleccionada como el título son cadenas opcionales: estamos asignando una cadena opcional a otra. El título es opcional porque es nulo por defecto: los controladores de vista no tienen título, por lo que no muestran texto en la barra de navegación.



// ******* Large titles *******


// Este es un cambio totalmente opcional, pero quería presentártelo bien y temprano para que puedas probarlo por ti mismo y ver lo que piensas.

// Una de las pautas de diseño de Apple es el uso de títulos grandes, el texto que aparece en la barra gris en la parte superior de las aplicaciones. El estilo predeterminado es texto pequeño, que es lo que hemos tenido hasta ahora, pero con un par de líneas de código podemos adoptar el nuevo diseño.

// Primero, agregue esto a viewDidLoad() en ViewController.swift:


navigationController?.navigationBar.prefersLargeTitles = true

// Eso permite títulos grandes en toda nuestra aplicación, y verás una diferencia inmediata: "Storm Viewer" se hace mucho más grande, y en el controlador de vista de detalle todos los títulos de imagen también son grandes. Notarás que el título tampoco es estático: si tiras hacia abajo suavemente, verás que se estira un poco, y si intentas desplazarte hacia arriba en nuestra vista de tabla, verás que los títulos se encogen.

// Apple recomienda que use títulos grandes solo cuando tiene sentido, y eso generalmente significa solo en la primera pantalla de su aplicación. Como ha visto, el comportamiento predeterminado cuando está habilitado es tener títulos grandes en todas partes, pero eso se debe a que cada nuevo controlador de vista que se empuja a la pila del controlador de navegación hereda el estilo de su predecesor.

// En esta aplicación queremos que "Storm Viewer" parezca grande, pero que la pantalla de detalles se vea normal. Para que eso suceda, necesitamos agregar una línea de código a viewDidLoad() en DetailViewController.swift:


navigationItem.largeTitleDisplayMode = .never

// Eso es todo lo que se necesita: los títulos grandes deberían comportarse correctamente ahora.


//                  ********** Consejo: **********

// Las diferentes versiones de Xcode crean vistas de imagen de manera
// ligeramente diferente. Si desea usar Aspect Fill para su imagen, asegúrese
// de que Clip To Bounds esté marcado para evitar el desperdicio de la imagen;
// esto está habilitado de forma predeterminada en Xcode 10.2 o posterior.



// ----- Proyecto 1, tercera parte -----

// Ahora que nuestra aplicación está completa, es hora de hacer un resumen
// rápido de lo que aprendiste, una breve prueba para asegurarte de que has
// entendido lo que se enseñó, luego tus primeros desafíos:
// ejercicios diseñados para que escribas tu propio código lo más rápido posible.

// No doy las respuestas a estos desafíos. Esto es intencional: quiero que lo
// averigües por ti mismo en lugar de solo mirar el trabajo de otra persona.
// Probar las cosas por ti mismo, cometer errores y encontrar soluciones es
// clave para aprender, como dijo una vez Maya Angelou,
// "nada funcionará a menos que lo hagas".

// Hoy deberías trabajar en el capítulo de recapitulación del proyecto 1,
// completar su revisión y luego trabajar en los tres desafíos.



// ------ Terminar ------

// Este ha sido un proyecto muy simple en términos de lo que puede hacer,
// pero también has aprendido una gran cantidad sobre Swift, Xcode y storyboards.
// Sé que no es fácil, pero confía en mí: has llegado hasta aquí, así que has
// pasado por la parte más difícil.

// Para darte una idea de lo lejos que has llegado, estas son solo algunas de las
// cosas que hemos cubierto: vistas de tablas y vistas de imágenes, paquetes de
// aplicaciones, FileManager, typecasting, controladores de vista, guiones gráficos,
// puntos de venta, diseño automático, UIImage y más.

// Sí, esa es una gran cantidad, y para ser brutalmente honesto, lo más probable
// es que te olvides de la mitad. Pero eso está bien, porque todos aprendemos a
// través de la repetición, y si continúas siguiendo el resto de esta serie,
// usarás todos estos y más una y otra vez hasta que los conozcas
// como la palga de tu mano.


// ******** Review what you learned ********

// Cualquiera puede pasar por un tutorial, pero se necesita trabajo real para
// recordar lo que se enseñó. Es mi trabajo asegurarme de que tomes tanto de
// estos tutoriales como sea posible, así que he preparado una breve revisión
// para ayudarte a comprobar tu aprendizaje.


// ******** Desafío ********

// Esto tiene los comienzos de una aplicación útil, pero si realmente quieres
// que tus nuevos conocimientos se hundan, necesitas comenzar a escribir un
// nuevo código tú mismo, sin seguir un tutorial o tener una respuesta,
// puedes buscar en línea.

// Por lo tanto, cada vez que completes un proyecto, te desafiaré a modificarlo
// de alguna manera. Sí, esto llevará algo de trabajo, pero no hay aprendizaje
// sin lucha: todos los desafíos están completamente a tu alcance en función de
// lo que has aprendido hasta ahora.

// Para este proyecto, sus desafíos son:

// Utilice Interface Builder para seleccionar la etiqueta de texto dentro de su 
// celda de vista de tabla y ajustar su tamaño de fuente a algo más grande:
// experimente y vea qué se ve bien.

// En la vista de la tabla principal, muestre los nombres de las imágenes en
// orden ordenado, por lo que "nssl0033.jpg" viene antes que "nssl0034.jpg".

// En lugar de mostrar los nombres de las imágenes en la barra de título de
// detalles, muestre "Imagen X de Y", donde Y es el número total de imágenes
// y X es la posición de la imagen seleccionada en la matriz. Asegúrate de
// contar desde 1 en lugar de 0.


// Utilice Interface Builder para seleccionar la etiqueta de texto dentro de 
// su celda de la tabla y ajustar su tamaño de fuente a algo más grande:
// experimente y vea qué se ve bien.

// En la vista de la tabla principal, muestre los nombres de las imágenes en
// orden, por lo que "nssl0033.jpg" viene antes que "nssl0034.jpg".

// En lugar de mostrar los nombres de las imágenes en la barra de título de
// detalles, muestre "Imagen X de Y", donde Y es el número total de imágenes
// y X es la posición de la imagen seleccionada en la matriz. Asegúrate de 
// contar desde 1 en lugar de 0.

// ******* Hints *******

// Es vital para tu aprendizaje que pruebes los desafíos por encima de ti mismo,
// y no solo por un puñado de minutos antes de darte por un por mismo.

// Cada vez que intentas algo mal, aprendes que está mal y recordarás que está mal.
// En el momento en que encuentres la solución correcta, la recordarás mucho más a
// fondo, a la vez que recordarás muchos de los giros equivocados que tomaste.

// Esto es lo que quiero decir con "no hay aprendizaje sin lucha": si algo te llega
// fácilmente, puede ir con la misma facilidad. Pero cuando tienes que luchar
// mentalmente por algo, se quedará mucho más tiempo.

// Pero si ya has trabajado duro en los desafíos anteriores y todavía estás luchando
// para implementarlos, voy a escribir algunas sugerencias a continuación que deberían
// guiarte hacia la respuesta correcta.

// Si me ignoras y lees estas pistas sin haber pasado al menos 30 minutos probando
// los desafíos anteriores, la única persona a la que estás engañando eres tú mismo.

// ¿Sigues aquí? Vale. Echemos un vistazo a los desafíos...

// Utilice Interface Builder para seleccionar la etiqueta de texto dentro de su
// celda de vista de tabla y ajustar su tamaño de fuente a algo más grande:
// experimente y vea qué se ve bien.

// Esto debería ser bastante fácil: abra Main.storyboard, luego use el contorno
// del documento para seleccionar la vista de la tabla, seleccione la celda de
// imagen dentro de ella, seleccione la vista de contenido dentro de ella y,
// finalmente, seleccione la etiqueta Título. En el inspector de atributos
// encontrarás una serie de opciones: intenta averiguar cuál controla el tamaño
// de la fuente.

// En la vista de la tabla principal, muestre los nombres de las imágenes en
// orden ordenado, por lo que "nssl0033.jpg" viene antes que "nssl0034.jpg".

// Estas imágenes pueden o no estar ordenadas para usted, pero su desafío aquí
// es asegurarse de que siempre estén ordenadas. Hemos cubierto matrices de
// clasificación anteriormente, y debes recordar que hay un método sort()
// que puedes usar.

// Sin embargo, la pregunta es: ¿dónde debería llamarse? Podrías llamar a este
// método cada vez que añadas una imagen "nssl" a la matriz de imágenes, pero
// eso solo causa trabajo adicional. ¿Dónde podrías hacer una llamada a sort()
// para que se haga solo una vez, cuando se hayan cargado todas las imágenes?

// En lugar de mostrar los nombres de las imágenes en la barra de título de
// detalles, muestre "Imagen X de Y", donde Y es el número total de imágenes y
// X es la posición de la imagen seleccionada en la matriz. Asegúrate de contar
// desde 1 en lugar de 0.

// En este proyecto aprendiste a crear propiedades como esta:

var selectedImage: String?

// También aprendiste a establecer esas propiedades desde otro lugar, como este

vc.selectedImage = pictures[indexPath.row]

// Este desafío requiere que hagas dos nuevas propiedades en DetailViewController:
// una para contener la posición de la imagen en la matriz y otra para contener el
// número de imágenes.

// Por ejemplo, podrías añadir estas dos propiedades a DetailViewController:

var selectedPictureNumber = 0
var totalPictures = 0

// A continuación, puede usarlos para el título en la barra de navegación mediante
// la interpolación de cadenas. Recuerda, la interpolación de cadenas se ve así:

title = "This image is \(selectedImage)"

// ¿Cómo puedes usar eso con selectedPictureNumber y totalPictures?

// Una vez hecho eso, tienes que pasar algunos valores para esas propiedades.
// Creamos DetailViewController aquí:

override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
        vc.selectedImage = pictures[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

// Eso establece la propiedad selectedImage usando una de las cadenas de la matriz
// de imágenes. ¿Qué cuerda? Bueno, usamos indexPath.row para eso, porque eso nos
// dice qué celda de vista de tabla se seleccionó.

// Por lo tanto, podemos usar indexPath.row para establecer la propiedad
// selectedPictureNumber en DetailViewController, solo asegúrese de agregar
// 1 para que cuente desde 1 en lugar de 0.

// En cuanto a la propiedad totalPictures en DetailViewController, que debe contener
// el número total de imágenes en nuestra matriz. Ya escribimos código para leer el
// tamaño de la matriz dentro del método numberOfRowsInSection.
// ¿Cómo se puede usar un código similar para establecer totalPictures?


// ********* ¡Comparte tu éxito! *********

// Uno de los motivadores más efectivos del éxito es compartir tu progreso con
// otras personas: cuando le dices a la gente lo que estás haciendo y lo que has
// aprendido, te anima a volver por más, lo que a su vez te ayudará a alcanzar
// los objetivos de desarrollo de tu aplicación más rápido.

// Por lo tanto, ahora que has hecho todo el trabajo duro, es hora de compartir
// tu éxito: dile a la gente que has completado este proyecto, ya sea haciendo
// clic en el botón de abajo para comenzar a componer un tuit, o escribiendo tu
// propio mensaje desde cero. Esto definitivamente te animará a seguir aprendiendo,
// pero también ayudará a otras personas a descubrir mi trabajo, ¡gracias!

// URL de ejercicios:
// https://www.hackingwithswift.com/review/hws/project-1-storm-viewer


// Una vez que hayas terminado, dile a otras personas: has completado tu primer 
// proyecto de iOS, has pasado la prueba e incluso la has ampliado
// con tu propio código.

// Deberías estar orgulloso de lo que has logrado, ¡buen trabajo!

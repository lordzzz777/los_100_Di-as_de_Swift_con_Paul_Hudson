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

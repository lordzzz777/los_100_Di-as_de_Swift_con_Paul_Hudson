import Foundation



// ----- Creación de cierres básicos -----



// Swift nos permite usar funciones como cualquier otro tipo, como cadenas y enteros.
// Esto significa que puede crear una función y asignarla a una variable, llamar a
// esa función usando esa variable e incluso pasar esa función a otras funciones como parámetros.

// Las funciones utilizadas de esta manera se llaman cierres y, aunque funcionan como
// funciones, se escriben de manera un poco diferente.

//Comencemos con un ejemplo simple que imprime un mensaje:

let driving = {
    print("I'm driving in my car")
}

// Eso crea efectivamente una función sin nombre y asigna esa función a la conducción.
// Ahora puedes llamar a driving() como si fuera una función normal, así:

driving()



// ----- ¿Qué diablos son los cierres y por qué a Swift le gustan tanto? -----

// Adelante, admítelo: te hiciste exactamente esta pregunta. Si no lo hicieras, me
// sorprendería, porque los cierres son una de las características más poderosas de Swift,
// pero también fácilmente la característica que confunde a la gente.

// Entonces, si estás sentado aquí pensando "guau, los cierres son muy difíciles", no te
// desanimes, son difíciles, y si los encuentras difíciles solo significa que tu cerebro
// está funcionando correctamente.

// Una de las razones más comunes para los cierres en Swift es almacenar la funcionalidad,
// poder decir "aquí hay algo de trabajo que quiero que hagas en algún momento, pero no
// necesariamente ahora". Algunos ejemplos:

//Running some code after a delay.

//Running some code after an animation has finished.

//Running some code when a download has finished.

//Running some code when a user has selected an option from your menu.

// Closures let us wrap up some functionality in a single variable, then store that somewhere.
// We can also return it from a function, and store the closure somewhere else.

// When you’re learning, closures are a little hard to read – particularly when they accept
// and/or return their own parameters. But that’s OK: take small steps, and backtrack if you get
// stuck, and you’ll be fine.


// ---- Enlace de ejercicios Creación de cierres básicos ----
// https://www.hackingwithswift.com/review/creating-basic-closures



// ----- Aceptar parámetros en un cierre -----


// Cuando creas cierres, no tienen un nombre o un espacio para escribir ningún parámetro.
// Eso no significa que no puedan aceptar parámetros, solo que lo hacen de una manera diferente:
// se enumeran dentro de las llaves abiertas.

// Para hacer que un cierre acepte parámetros, enumérelos dentro de los paréntesis justo después
// de la llave de apertura, luego escriba para que Swift sepa que el cuerpo
// principal del cierre está comenzando.

// Por ejemplo, podríamos hacer un cierre que acepte una cadena de nombre de
// lugar como su único parámetro como este:

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

// Una de las diferencias entre las funciones y los cierres es que no se utilizan etiquetas
// de parámetros al ejecutar cierres. Así que, para llamar a driving() ahora escribiríamos esto:

driving("London")



// ---- ¿Por qué los parámetros de cierre de Swift están dentro de los frenos? -----


// Tanto los cierres como las funciones pueden tomar parámetros, pero la forma en que toman los
// parámetros es muy diferente. Aquí hay una función que acepta una cadena y un entero:

func pay(user: String, amount: Int) {
    // code
}

// Y aquí está exactamente lo mismo escrito como un cierre:

let payment = { (user: String, amount: Int) in
    // code
}

// Como puede ver, los parámetros se han movido dentro de las llaves, y la palabra clave in está
// ahí para marcar el final de la lista de parámetros y el comienzo del propio cuerpo del cierre.

// Los cierres toman sus parámetros dentro del corsé para evitar confundir a Swift: si huéramos
// escrito let payment = (usuario: Cadena, cantidad: Int), entonces parecería que estábamos
// tratando de crear una tupla, no un cierre, lo cual sería extraño.

// Si lo piensas, tener los parámetros dentro de las llaves también captura perfectamente la
// forma en que todo es un bloque de datos almacenado dentro de la variable:
// la lista de parámetros y el cuerpo de cierre son parte del mismo trozo de código y se
// almacenan en nuestra variable.

// Tener la lista de parámetros dentro de las llaves muestra por qué la palabra clave in es tan
// importante, sin eso es difícil para Swift saber dónde comienza realmente su cuerpo de cierre,
// porque no hay un segundo conjunto de llaves.


// ---- Enlace de ejercicios Creación de cierres básicos ----
// https://www.hackingwithswift.com/review/accepting-parameters-in-a-closure




// ----- Devolver valores de un cierre -----


// Los cierres también pueden devolver valores, y se escriben de manera similar a los parámetros:
// los escribes dentro de tu cierre, directamente antes de la palabra clave in.

// Para demostrar esto, vamos a tomar nuestro cierre de driving() y hacer que devuelva su valor
// en lugar de imprimirlo directamente. Aquí está el original:

let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

// Queremos un cierre que devuelva una cadena en lugar de imprimir el mensaje directamente,
// por lo que tenemos que usar -> String antes de entrar, luego usar return como una función normal:

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Ahora podemos ejecutar ese cierre e imprimir su valor de retorno:
let message = drivingWithReturn("London")
print(message)



// ----- ¿Cómo se devuelve un valor de un cierre que no toma parámetros? -----


// Los cierres en Swift tienen una sintaxis distinta que realmente los separa de las funciones simples,
// y un lugar que puede causar confusión es la forma en que aceptamos y devolvemos los parámetros.

// En primer lugar, aquí hay un cierre que acepta un parámetro y no devuelve nada:


let payment = { (user: String) in
    print("Paying \(user)…")
}

// Ahora aquí hay un cierre que acepta un parámetro y devuelve un booleano:

let payment = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}

// Si quieres devolver un valor sin aceptar ningún parámetro, no puedes simplemente escribir ->
// Bool in - Swift no entenderá lo que quieres decir. En su lugar, debe usar paréntesis vacíos
// para su lista de parámetros, como esta:

let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}

// Si lo piensas, eso funciona igual que una función estándar donde se escribiría
// func payment() -> Bool.

// ---- Enlace de ejercicios Creación de cierres básicos ----
// https://www.hackingwithswift.com/review/returning-values-from-a-closure



// ----- Cierres como parámetros -----

// Debido a que los cierres se pueden usar al igual que cadenas y enteros,
// puedes pasarlos a funciones. La sintaxis de esto puede dañar tu cerebro al principio,
// así que vamos a tomarlo con calma.

// En primer lugar, aquí está nuestro cierre básico de conducción() de nuevo

let driving = {
    print("I'm driving in my car")
}

// Si quisiéramos pasar ese cierre a una función para que se pueda ejecutar dentro de esa función,
// especificaríamos el tipo de parámetro como () -> Vacío. Eso significa "no acepta parámetros y
// devuelve Vacío", la forma de Swift de decir "nada".

// Por lo tanto, podemos escribir una función travel() que acepte diferentes tipos de acciones de
// viaje, e imprima un mensaje antes y después:

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// Ahora podemos llamar a eso usando nuestro cierre de conducción, así:

travel(action: driving)


// ----- ¿Por qué querrías usar los cierres como parámetros? ------

// Los cierres de Swift se pueden usar como cualquier otro tipo de datos, lo que significa que puedes
// pasarlos a funciones, tomar copias de ellos, etc. Pero cuando solo estás aprendiendo, esto puede
// parecerse mucho a "solo porque puedas, no significa que debas" - es difícil ver el beneficio.

// Uno de los mejores ejemplos que puedo dar es la forma en que Siri se integra con las aplicaciones.
// Siri es un servicio de sistema que se ejecuta desde cualquier lugar de tu dispositivo iOS, pero es
// capaz de comunicarse con aplicaciones: puedes reservar un viaje con Lyft, puedes comprobar el clima
// con Carrot Weather, y así suces. Detrás de escena, Siri lanza una pequeña parte de la aplicación en
// segundo plano para transmitir nuestra solicitud de voz, y luego muestra la respuesta de la
// aplicación como parte de la interfaz de usuario de Siri.

// Ahora piensa en esto: ¿qué pasa si mi aplicación se comporta mal y tarda 10 segundos en responder a
// Siri? Recuerda, el usuario en realidad no ve mi aplicación, solo Siri, así que desde su perspectiva
// parece que Siri se ha congelado por completo.

// Esta sería una experiencia de usuario terrible, por lo que Apple utiliza cierres en su lugar:
// inicia nuestra aplicación en segundo plano y pasa un cierre al que podemos
// llamar cuando hayamos terminado. Nuestra aplicación puede tardar todo el tiempo que quiera en
// averiguar qué trabajo hay que hacer, y cuando hayamos terminado, llamamos al cierre para devolver
// los datos a Siri. El uso de un cierre para devolver datos en lugar de devolver un valor de la
// función significa que Siri no necesita esperar a que se complete la función, por lo que puede
// mantener su interfaz de usuario interactiva, no se congelará.

// Otro ejemplo común es hacer solicitudes de red. Tu iPhone promedio puede hacer varios miles de
// millones de cosas por segundo, pero conectarse a un servidor en Japón lleva medio segundo o más,
// es casi glacial en comparación con la velocidad a la que suceden en tu dispositivo. Por lo tanto,
// cuando solicitamos datos de Internet, lo hacemos con cierres: "por favor, btenga estos datos y,
// cuando haya terminado, ejecute este cierre". Una vez más, significa que no forzamos que nuestra
// interfaz de usuario se congele mientras se está produciendo un trabajo lento.


// ---- Enlace de ejercicios Cierres como parámetros ----
// https://www.hackingwithswift.com/review/closures-as-parameters



// ----- Sintaxis de cierre final -----

// Si el último parámetro de una función es un cierre, Swift le permite usar una sintaxis especial
// llamada sintaxis de cierre final. En lugar de pasar tu cierre como parámetro, 
// lo pasas directamente después de la función dentro de las llaves.

// Para demostrar esto, aquí está nuestra función travel() de nuevo. Acepta un cierre de acción para
// que se pueda ejecutar entre dos llamadas print():

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

// Debido a que su último parámetro es un cierre, podemos llamar a travel() usando la sintaxis
// de cierre final como esta:

travel() {
    print("I'm driving in my car")
}

// De hecho, debido a que no hay ningún otro parámetro, podemos eliminar los paréntesis por completo:

travel {
    print("I'm driving in my car")
}

// Trailing closure syntax is extremely common in Swift, so it’s worth getting used to.



// ---- ¿Por qué Swift tiene sintaxis de cierre final? -----

// La sintaxis de cierre final está diseñada para hacer que el código Swift sea más fácil de leer,
// aunque algunos prefieren evitarlo.

// Empecemos primero con un ejemplo simple. Aquí hay una función que acepta un doble y luego un
// cierre lleno de cambios para hacer:

func animate(duration: Double, animations: () -> Void) {
    print("Starting a \(duration) second animation…")
    animations()
}

// (En caso de que te lo estuvieras preguntando, ¡esa es una versión simplificada de una función
// UIKit real y muy común!)

// Podemos llamar a esa función sin un cierre final como este:

animate(duration: 3, animations: {
    print("Fade out the image")
})

// Eso es muy común. Mucha gente no usa cierres finales, y eso está bien. Pero muchos más
// desarrolladores de Swift miran el }) al final y hacen un poco de vida, no es agradable.

// Los cierres de seguimiento nos permiten limpiar eso, a la vez que eliminamos la etiqueta
// de parámetros de animaciones. Esa misma llamada de función se convierte en esto:

Animate(duración: 3) {

print("Desvanecer la imagen")

}

// Los cierres de trailing funcionan mejor cuando su significado está directamente vinculado
// al nombre de la función: puedes ver lo que está haciendo 
// el cierre porque la función se llama animate().

// Si no estás seguro de si usar cierres de trailing o no, mi consejo es que empieces a 
// usarlos en todas partes. Una vez que les hayas dado uno o dos meses, tendrás suficiente uso
// para mirar hacia atrás y decidir más claramente, ¡pero espero que te acostumbres a ellos
// porque son muy comunes en Swift!

// ---- Enlace de ejercicios Sintaxis de cierre final ----
// https://www.hackingwithswift.com/review/trailing-closure-syntax

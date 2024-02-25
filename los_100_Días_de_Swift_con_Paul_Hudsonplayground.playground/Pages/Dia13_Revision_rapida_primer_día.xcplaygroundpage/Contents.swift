import Foundation



// ------ Revisión rápida, primer día ------

// ¡Felicidades! Has superado todos los fundamentos del lenguaje de
// programación Swift. Cada vídeo fue a propósito muy corto para
// darte una introducción a la velocidad del rayo al tema, pero durante
// los próximos tres días nos ralentizaremos para que puedas consolidar
// lo que has aprendido.

// Esto significa que volveremos a repasar los fundamentos de Swift,
// pero esta vez más despacio y con más detalle.

// Sé lo que estás pensando. Estás pensando "¿por qué molestarte? Ya
// aprendí estas cosas, ¿por qué repasarlo de nuevo?"
// Bueno, hay varias razones:

// La repetición nos ayuda a aprender las cosas más a fondo. Estos
// fundamentos son muy importantes en todo el Swift que escribirás,
// por lo que vale la pena duplicarlos para asegurarte de que los
// entiendes completamente.
// Algunos conceptos solo tienen sentido cuando has entendido otros
// conceptos. Dar la vuelta hacia atrás de esta manera te ayudará a
// vincular los conceptos básicos de Swift en tu cabeza.
// Puede que te hayas perdido algo. Seamos reales, acabas de ver 100
// vídeos sobre las partes más importantes de Swift,
// ¿estás absolutamente seguro de que lo recordaste todo?
// Verás lo lejos que has llegado. Cuando leas sobre matrices y bucles,
// cosas que podrías haber encontrado desafiantes anteriormente, espero
// que las encuentres más fáciles ahora y te sientas
// bien de que estás progresando.

// Hoy tienes nueve temas que revisar. Una vez que los hayas completado,
// puedes, si quieres, volver a repasar las pruebas de días anteriores
// para mejorar tus puntuaciones.


// ------ Variables y constantes ------

// Cada programa útil necesita almacenar datos en algún momento, y en 
// Swift hay dos formas de hacerlo: variables y constantes. Una variable
// es un almacén de datos que puede cambiar su valor cuando lo desee, y
// una constante es un almacén de datos que establece una vez y que nunca
// puede cambiar. Entonces, las variables tienen valores que pueden variar,
// y las constantes tienen valores que son constantes, fácil, ¿verdad?

// Tener ambas opciones puede parecer inútil, después de todo, podrías crear
// una variable y nunca cambiarla, ¿por qué hay que convertirla en una
// constante? Bueno, resulta que muchos programadores son, ¡choque!, no son
// más que perfectos en la programación, y cometemos errores.

// Una de las ventajas de separar constantes y variables es que Xcode nos 
// dirá si hemos cometido un error. Si decimos, "haz de esta fecha una
// constante, porque sé que nunca cambiará", entonces 10 líneas más tarde
// intenta cambiarla, Xcode se negará a construir nuestra aplicación.

// Las constantes también son importantes porque permiten que Xcode tome
// decisiones sobre la forma en que construye su aplicación. Si sabe que
// un valor nunca cambiará, puede aplicar optimizaciones para que su código
// se ejecute más rápido.

// En Swift, creas una variable usando la palabra clave var, así:

var name = "Tim McGraw"

// Vamos a poner eso en un playground para que puedas empezar a recibir
// comentarios. Elimine todo lo que hay allí, aparte de la línea de
// importación de UIKit (esa es la parte que inserta el marco principal de
// iOS de Apple y se necesita más adelante), y agregue esa variable.

// Debido a que esta es una variable, puedes cambiarla cuando quieras, pero
// no deberías usar la palabra clave var cada vez, que solo se usa cuando
// declaras nuevas variables. Intenta escribir esto:

// **** var name = "Tim McGraw" ****
name = "Romeo"

// Por lo tanto, la primera línea crea la variable de nombre y le da un valor
// inicial, luego la segunda línea actualiza la variable de nombre para que
// su valor sea ahora "Romeo". Verás ambos valores impresos en el área de
// resultados del playground.

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/variables-and-constants-1@2x.png

// Ahora, ¿y si lo habiéramos hecho una constante en lugar de una variable?
// Bueno, las constantes usan la palabra clave let en lugar de var, por lo
// que puedes cambiar tu primera línea de código para decir let name en lugar
// de var name como esta:

let name = "Tim McGraw"
name = "Romeo"

// Pero ahora hay un problema: Xcode mostrará una advertencia roja junto a la
// línea tres, y debería haber dibujado un subrayado rojo debajo de su código.
// El mensaje de Xcode es "No se puede asignar un valor: 'nombre' es una
// constante 'let'", que es Xcode-speak para "estás tratando de cambiar una
// constante y no puedes hacer eso".

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/variables-and-constants-2@2x.png

// Por lo tanto, las constantes son una gran manera de hacer una promesa a Swift
// y a ti mismo de que un valor no cambiará, porque si intentas cambiarlo, Xcode
// se negará a ejecutarse. Los desarrolladores de Swift tienen una fuerte
// preferencia por usar constantes siempre que sea posible porque hace que su
// código sea más fácil de entender. De hecho, Xcode en realidad te dirá que si
// haces de algo una variable, ¡entonces nunca lo cambies!

// Nota importante: los nombres de variables y constantes deben ser únicos en su
// código. Oberás un error si intentas usar el mismo nombre
// de variable dos veces, así:

var name = "Tim McGraw"
var name = "Romeo"

// Si el playground encuentra un error en su código, marcará una advertencia
// en un cuadro rojo o simplemente se negará a ejecutarse. Sabrás si esto último
// ha sucedido porque el texto en el panel de resultados se ha vuelto gris en
// lugar de su negro habitual.

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/variables-and-constants-3@2x.png



// ------ Tipos de datos ------

// Hay muchos tipos de datos, y Swift los maneja todos individualmente.
// Ya viste uno de los tipos más importantes cuando asignaste algo de texto
// a una variable, pero en Swift esto se llama cadena, literalmente una
// cadena de caracteres.

// Las cuerdas pueden ser largas (por ejemplo, un millón de letras o más),
// cortas (por ejemplo, 10 letras) o incluso vacías (sin letras), no importa:
// todas son cuerdas a los ojos de Swift, y todas funcionan igual. Swift sabe
// que ese nombre debe contener una cadena porque le asignas una cadena cuando
// la creas: "Tim McGraw". Si tuvieras que reescribir tu código en esto,
// dejaría de funcionar:

var name
name = "Tim McGraw"

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-1.png

// En este punto, tiene dos opciones: crear su variable y darle un valor inicial
// en una línea de código, o usar lo que se llama una anotación de tipo, que es
// donde le dice a Swift qué tipo de datos tendrá la variable más adelante, a
// pesar de que no le está dando un valor en este momento.

// Ya has visto cómo se ve la primera opción, así que echemos un vistazo a la
// segunda: anotaciones de tipo. Sabemos que ese nombre va a ser una cadena, así
// que podemos decirle a Swift que escribiendo
// dos puntos y luego una cadena, así:

var name: String
name = "Tim McGraw"

// ***** Nota: ******
// a algunas personas les gusta poner un espacio antes y después de los dos
// puntos, haciendo el nombre de var: String, pero están equivocados y debes
// tratar de evitar mencionar su error en una compañía educada.


// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-2.png



// La lección aquí es que Swift siempre quiere saber qué tipo de datos tendrá
// cada variable o constante. Siempre. No puedes escapar de él, y eso es algo
// bueno porque proporciona algo llamado seguridad de tipo: si dices
// "esto sostendrá una cuerda" y luego intentas poner un conejo allí, Swift se
// negará.

// Podemos probar esto ahora introduciendo otro tipo de datos importante, llamado
// Int, que es la abreviatura de "entero". Los números enteros son números
// redondos como 3, 30, 300 o -16777216. Por ejemplo:

var name: String
name = "Tim McGraw"

var age: Int
age = 25

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-3.png

// Eso declara que una variable es una cadena y otra como un entero. 
// Tenga en cuenta que tanto String como Int tienen letras mayúsculas
// al principio, mientras que el nombre y la edad no lo tienen; esta
// es la convención de codificación estándar en Swift. Una convención
// de codificación es algo que no le importa a Swift (¡puedes escribir
// tus nombres como quieras!) Pero es importante para otros
// desarrolladores.
// En este caso, los tipos de datos comienzan con una letra mayúscula,
// mientras que las variables y constantes no lo hacen.

// Ahora que tenemos variables de dos tipos diferentes, puedes ver la 
// seguridad del tipo en acción. Intenta escribir esto:

name = 25
age = "Tim McGraw"

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-4.png

// En ese código, estás tratando de poner un entero en una variable de cadena,
// y una cadena en una variable entera, y, afortunadamente, Xcode arrojará
// errores.
// Podrías pensar que esto es pedante, pero en realidad es bastante útil:
// prometes que una variable contendrá un tipo particular de datos, y Xcode lo
// hará cumplir durante todo tu trabajo.

// Antes de seguir, elimine esas dos líneas de código que causan el error,
// ¡de lo contrario nada en su playground funcionará en el futuro!

// ******** Float y Double ********

// Echemos un vistazo a otros dos tipos de datos, llamados Float y Double.
// Esta es la forma de Swift de almacenar números con un componente
// fraccional, como 3.1, 3.141, 3.1415926 y -16777216.5. Hay dos tipos de
// datos para esto porque puedes elegir la cantidad de precisión que
// quieres, pero la mayoría de las veces no importa, por lo que la
// recomendación oficial de Apple es siempre usar Double porque tiene la
// mayor precisión.

// Intenta poner esto en tu playground:

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-5.png

// Puedes ver que ambos números aparecen a la derecha, pero mira con cuidado
// porque hay una pequeña discrepancia. Dijimos que la longitud debería ser
// igual a -86.783333, pero en el panel de resultados verás -86.78333 - falta
// un último 3 al final. Ahora, bien podrías decir: "¿qué importa 0.000003
// entre amigos?" Pero esto está demostrando sáitamente lo que estaba diciendo
// sobre la precisión.

// Debido que el playground se actualizan a medida que escribes,
// podemos probar las cosas para que puedas ver exactamente cómo se diferencian
// Float y Double. Intenta cambiar el código para que sea este:

var longitude: Float
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-6.png

// Eso es sumar números crecientes antes del punto decimal, mientras se mantiene
// la misma cantidad de números después. Pero si miras en el panel de resultados,
// te darás cuenta de que a medida que agregas más números antes del punto, Swift
// eliminará los números después. Esto se debe a que tiene un espacio limitado
// para almacenar su número, por lo que está almacenando la parte más importante
// primero: estar fuera de 1 000 000 es una gran cosa, mientras que estar fuera
// de 0,000003 es menos.

// Ahora intenta cambiar el Float para que sea un Double y verás que Swift
// imprime el número correcto cada vez:

var longitude: Double

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-7.png

// Esto se debe a que, de nuevo, Double tiene el doble de precisión que Float,
// por lo que no necesita cortar su número para que encaje. Sin embargo, los
// dobles todavía tienen límites: si tuvieras que probar un número masivo como
// 123456789.123456789, verías que se reduce a 123456789.1234568.


// ******** Boolean ********

// Swift tiene un tipo de datos integrado que puede almacenar si un valor es
// verdadero o falso, llamado Bool, abreviatura de Boolean. Los bools no tienen
// espacio para "tal vez" o "tal vez", solo absolutos: verdadero o falso.
// Por ejemplo:

var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

// Enlace de imagen:
// https://www.hackingwithswift.com/img/books/hws/types-of-data-8.png

// Consejo: Notará que estas variables están escritas de una manera muy
// particular: no escribimos MissABeat, missabeat u otras variaciones
// similares, sino que hacemos que la letra inicial esté en minúsculas
// y luego ponemos en mayúsculas la primera letra de la segunda y las
// palabras posteriores. Esto se llama "caso de camello" porque se parece
// un poco a las jorobas de un camello, y se usa para facilitar la lectura
// de palabras en nombres variables.


// ******** Usar las anotaciones de tipo sabiamente ********

// Como has aprendido, hay dos formas de decirle a Swift qué tipo de datos
// contiene una variable: asignar un valor cuando creas la variable o usar
// una anotación de tipo. Si tienes una opción, la primera siempre es
// preferible porque es más clara. Por ejemplo:

var name = "Tim McGraw"

// ...Se prefiere a:

var name: String
name = "Tim McGraw"

// Esto se aplica a todos los tipos de datos. Por ejemplo:

var age = 25
var longitude = -86.783333
var nothingInBrain = true

// Esta técnica se llama inferencia de tipo, porque Swift puede inferir qué tipo
// de datos se debe usar para una variable mirando el tipo de datos que desea
// poner allí. Cuando se trata de números como -86.783333, Swift siempre inferirá
// un Double en lugar de un Flotat.

// En aras de la integridad, debo añadir que es posible especificar un tipo de
// datos y proporcionar un valor al mismo tiempo, así:

var name: String = "Tim McGraw"



// ------ Operadores ------

// Los operadores son esos pequeños símbolos que aprendiste en tus primeras
// clases de matemáticas: + para sumar, " - " para restar," * " para multiplicar,
// " / " para dividir," = " para asignar valor, y así suc. Todos existen en Swift,
// junto con algunos extras.

// Vamos a probar algunos conceptos básicos. Por favor, escribe esto en tu patio
// de recreo:

var a = 10
a = a + 1
a = a - 1
a = a * a

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-1.png

// En el panel de resultados, verás 10, 11, 10 y 100 respectivamente.
// Ahora prueba esto:

var b = 10
b += 10
b -= 10

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-2.png

// += es un operador que significa "añadir y luego asignar a". 
// En nuestro caso, significa "toma el valor actual de b, añádele 10
// y luego vuelve a poner el resultado en b". Como puedes imaginar,
// -= hace lo mismo, pero resta en lugar de sumar. Por lo tanto, ese
// código mostrará 10, 20, 10 en el panel de resultados.

// Algunos de estos operadores se aplican a otros tipos de datos.
// Como te puedes imaginar, puedes añadir dos dobles juntos de
// esta manera:

var a = 1.1
var b = 2.2
var c = a + b

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-3.png

// Cuando se trata de cuerdas, + las unirá. Por ejemplo:

var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-4.png

// Eso escribirá "Tim McGraw y Romeo" en el panel de resultados.

// Un operador más común que verás se llama módulo, y está escrito usando
// un símbolo de porcentaje: %. Significa "divida el número de la mano
// izquierda por igual por la derecha y devuelva el resto". Por lo tanto,
// el 9 % 3 devuelve 0 porque 3 se divide por igual en 9, mientras que el
// 10 % 3 devuelve 1, porque 10 se divide por 3 tres veces, con el resto 1.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-5.png

// ***** Nota: *****
// Si compraste Hacking con Swift y estás utilizando el acompañamiento
// exclusivo de la guía del curso, encontrarás el operador del módulo
// útil más adelante.

// ******** Operadores de comparación ********

// Swift tiene un conjunto de operadores que realizan comparaciones de
// valores. Por ejemplo:

var a = 1.1
var b = 2.2
var c = a + b

c > 3
c >= 3
c > 4
c < 4

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-6.png


// Eso muestra mayor que (>), mayor o igual (>=), y menor que (<). En la 
// ventana de resultados verás verdadero, verdadero, falso, verdadero -
// estos son booleanos, porque la respuesta a cada una de estas
// afirmaciones solo puede ser verdadera o falsa.

// Si quieres comprobar la igualdad, no puedes usar = porque ya tiene un
// significado: se usa para dar un valor a una variable. Por lo tanto,
// Swift tiene una alternativa en forma de ==, que significa "es igual a".
// Por ejemplo:

var name = "Tim McGraw"
name == "Tim McGraw"

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-7.png

// Eso mostrará "verdadero" en el panel de resultados. Ahora, una cosa que
// podría atraparte es que en Swift las cadenas distinguen entre mayúsculas
// y minúsculas, lo que significa que "Tim McGraw", "TIM MCGRAW" y
// "TiM mCgRaW" se consideran diferentes. Si usas == para comparar dos
// cadenas, debes asegurarte de que tengan la misma letra y minúscula.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-8.png

// Hay un operador más al que quiero presentarte, y se llama el operador "no":
// !. Sí, es solo un signo de exclamación. Esto hace que tu declaración
// signifique lo contrario de lo que hizo. Por ejemplo:

var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/operators-9.png


// Eso imprimirá verdadero, verdadero, falso, con el último valor allí porque
// cambió el verdadero anterior.

// ¡También puedes usar! Con = para hacer ! = o "no igual". Por ejemplo:

var name = "Tim McGraw"
name == "Tim McGraw"
name != "Tim McGraw"

// Enlace de imagen
//https://www.hackingwithswift.com/img/books/hws/operators-10.png


// ------ Interpolación de cadenas ------

// Este es un nombre elegante para lo que en realidad es algo muy simple:
// combinar variables y constantes dentro de una cadena.

// Borra todo el código que acabas de escribir y deja solo esto:

var name = "Tim McGraw"

// Si quisiéramos imprimir un mensaje al usuario que incluyera su nombre,
// la interpolación de cadenas es lo que lo hace fácil: solo tienes que
// escribir una barra invertida, luego un paréntesis abierto, luego tu
// código, luego un paréntesis cerrado, así:

var name = "Tim McGraw"
"Your name is \(name)"

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/string-interpolation-1.png

// El panel de resultados ahora mostrará "Tu nombre es Tim McGraw" como una
// sola cadena, porque la interpolación de cadenas combinó
// las dos para nosotros.

// Ahora, podríamos haber escrito eso usando el operador +, así:

var name = "Tim McGraw"
"Your name is " + name

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/string-interpolation-2.png

// ...Pero eso no es tan eficiente, especialmente si estás combinando varias
// variables juntas. Además, la interpolación de cadenas en Swift es lo
// suficientemente inteligente como para poder manejar una variedad de
// diferentes tipos de datos automáticamente. Por ejemplo:

var name = "Tim McGraw"
var age = 25
var latitude = 36.166667

"Your name is \(name), your age is \(age), and your latitude is \(latitude)"

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/string-interpolation-3.png

// Hacer eso usando + es mucho más difícil, porque Swift no te permite añadir
// números enteros y duplicar una cadena.

// En este punto, es posible que su resultado ya no quepa en el panel de
// resultados, así que redimensione su ventana o haga el cursor sobre el
// resultado y haga clic en el botón + que parece que se muestra en línea.

// Una de las características poderosas de la interpolación de cadenas es
// que todo entre \( y ) en realidad puede ser una expresión completa de
// Swift. Por ejemplo, puedes hacer matemáticas allí usando operadores,
// como este:

var age = 25
"You are \(age) years old. In another \(age) years you will be \(age * 2)."

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/string-interpolation-4.png



// ------ Matrices ------

// Las matrices le permiten agrupar muchos valores en una sola colección,
// y luego acceder a esos valores por su posición en la colección. Swift
// utiliza la inferencia de tipo para averiguar qué tipo de datos contiene
// su matriz, así:

var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-1.png

// Como puede ver, Swift utiliza corchetes para marcar el inicio y el final 
// de una matriz, y cada elemento de la matriz está separado con una coma.

// Cuando se trata de leer elementos de una matriz, hay una trampa: Swift
// comienza a contar en 0. Esto significa que el primer elemento es 0, el
// segundo elemento es 1, el tercero es 2, y así sucesimo. Intenta poner
// esto en tu patio de recreo:

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-2.png


// Eso imprimirá "Shake it Off", "You Belong with Me" y "Back to December" 
// en el panel de resultados.

// La posición de un elemento en una matriz se llama su índice, y puede leer
// cualquier elemento de la matriz con solo proporcionar su índice.
// Sin embargo, debes tener cuidado: nuestra matriz tiene tres elementos,
// lo que significa que los índices 0, 1 y 2 funcionan muy bien. Pero si
// intentas leer canciones[3], tu patio de recreo dejará de funcionar, ¡y
// si lo intentas en una aplicación real, se bloquearía!

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-3.png

// Debido a que has creado tu matriz dándole tres cadenas, Swift sabe que
// esta es una matriz de cadenas. Puedes confirmar esto usando un comando
// especial en el patio de recreo que imprimirá el tipo de datos de
// cualquier variable, como esta:

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-4.png


// Eso imprimirá Array<String>. Escribe en el panel de resultados, 
// diciéndote que Swift considera que las canciones son una serie de cuerdas.

// Digamos que cometiste un error y accidentalmente pusiste un número al final
// de la matriz. Pruebe esto ahora y vea lo que imprime el panel de resultados:

var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3]
type(of: songs)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-5.png

// Esta vez verás un error. El error no se debe a que Swift no pueda manejar
// matrices mixtas como esta, ¡te mostraré cómo hacerlo en un momento!,
// sino porque Swift está siendo útil. El mensaje de error que verá es:
// "el literal de colección heterogénea solo se puede inferir en '[Cualquier]';
// agregue una anotación de tipo explícita si esto es intencional". O, en
// inglés sencillo, "parece que esta matriz está diseñada para contener muchos
// tipos de datos - si realmente querías decir eso, por favor, hazlo explícito".

// La seguridad del tipo es importante, y aunque es genial que Swift pueda hacer
// que las matrices contengan cualquier tipo de datos, este caso en particular
// fue un accidente. Afortunadamente, ya he dicho que puedes usar anotaciones
// de tipo para especificar exactamente qué tipo de datos quieres que almacene
// una matriz. Para especificar el tipo de matriz, escriba el tipo de datos que
// desea almacenar con corchetes a su alrededor, de la siguiente manera:

var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-6.png

// Ahora que le hemos dicho a Swift que queremos almacenar solo cadenas en la
// matriz, siempre se negará a ejecutar el código porque 3 no es una cadena.

// Si realmente desea que la matriz contenga cualquier tipo de datos, utilice
// el tipo de datos especial Cualquier tipo de datos, como este:

var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-7.png


// ******** Crear Arrays ********

// Si haces una matriz utilizando la sintaxis que se muestra arriba, Swift crea
// la matriz y la rellena con los valores que especificamos. Las cosas no son
// tan sencillas si quieres crear la matriz y luego llenarla más tarde, esta
// sintaxis no funciona:

var songs: [String]
songs[0] = "Shake it Off"

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-8.png

// La razón es una que parecerá innecesariamente pedante al principio, 
// pero tiene profundas implicaciones subyacentes en el rendimiento,
// así que me temo que estás atascado con ella. En pocas palabras,
// escribir canciones var: [String] le dice a Swift que "la variable de
// canciones tendrá una matriz de cuerdas", pero en realidad no crea esa
// matriz. No asigna ninguna RAM, ni hace nada del trabajo para crear
// realmente una matriz Swift. Solo dice que en algún momento habrá una
// matriz y que contendrá cadenas.

// Hay algunas formas de expresar esto correctamente, y la que probablemente
// tenga más sentido en este momento es esta:

var songs: [String] = []

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-9.png


// Eso utiliza una anotación de tipo para dejar claro que queremos una
// matriz de cadenas, y le asigna una matriz vacía (esa es la parte []).

// También verás comúnmente esta construcción:

var songs = [String]()

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-10.png


// Eso significa lo mismo: el () le dice a Swift que queremos crear la matriz
// en cuestión, que luego se asigna a las canciones utilizando la inferencia
// de tipo. Esta opción es dos caracteres más corta, ¡así que no es de extrañar
// que los programadores la prefieran!


// ******** Operadores de Arrays ********

// Puedes usar un conjunto limitado de operadores en matrices. Por ejemplo, 
// puedes fusionar dos matrices usando el operador +, así:

var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs + songs2

// También puedes usar += para añadir y asignar, así:

both += ["Everything has Changed"]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/arrays-11.png



// ------ Diccionarios ------

// Como has visto, las matrices de Swift son una colección en la que se accede
// a cada elemento utilizando un índice numérico, como canciones[0].
// Los diccionarios son otro tipo común de colección, pero difieren de las
// matrices porque le permiten acceder a valores basados en una clave que
// especifique.

// Para darte un ejemplo, imaginemos cómo podríamos almacenar datos sobre una
// persona en una matriz:

var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]

// Para leer el segundo nombre de esa persona, usaríamos persona[1], y para leer
// el mes en que nació, usaríamos persona[3]. Esto tiene algunos problemas, sobre
// todo porque es difícil recordar qué número de índice se asigna a cada valor de
// la matriz. ¿Y qué pasa si la persona no tiene segundo nombre? Lo más probable
// es que todos los demás valores se muevan hacia abajo en un lugar,
// causando caos en su código.

// Con los diccionarios podemos volver a escribir esto para que sea mucho más
// sensato, porque en lugar de números arbitrarios, puedes leer y escribir
// valores usando una clave que especifiques. Por ejemplo:

var person = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person["middle"]
person["month"]

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/dictionaries-1.png

// Podría ayudar si uso muchos espacios en blanco para romper el diccionario
// en tu pantalla, así:

var person = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person["middle"]
person["month"]

// Como puedes ver, cuando haces un diccionario escribes su clave, luego dos
// puntos y luego su valor. Entonces puedes leer cualquier valor del diccionario
// con solo conocer su clave, con la que es mucho más fácil trabajar.

// Al igual que con las matrices, puedes almacenar una amplia variedad de valores
// dentro de los diccionarios, aunque las claves suelen ser cadenas.




// ------ Declaraciones condicionales ------

// A veces quieres que el código se ejecute solo si una cierta condición es
// verdadera, y en Swift eso está representado principalmente por las
// instrucciones if y else. Le das a Swift una condición para comprobar,
// luego un bloque de código para ejecutar si esa condición es verdadera.

// Opcionalmente, también puede escribir else y proporcionar un bloque de
// código para ejecutar si la condición es falsa, o incluso si tiene más
// condiciones. Un "bloque" de código es solo un trozo de código marcado
// con una llave abierta - { - al principio y una llave cerrada - } - al final.

// He aquí un ejemplo básico:

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/conditional-statements-1.png


// Eso utiliza el operador == (igualdad) introducido anteriormente para comprobar
// si la cadena dentro de la persona es exactamente equivalente a la cadena "hater".
// Si lo es, establece la variable de acción en "odiar". Tenga en cuenta que los
// corchetes abiertos y cerrados, también conocidos por su nombre menos técnico de
// "corchetes rizados", que marcan el inicio y el final del código que se ejecutará
// si la condición es verdadera.

// Vamos a añadir otro si y otros bloques:

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/conditional-statements-2.png

// Eso comprobará cada condición en orden, y solo se ejecutará uno de los bloques:
// una persona es un hater, un jugador o cualquier otra cosa.


// ******** Evaluación de múltiples condiciones ********

// Puedes pedirle a Swift que evalúe tantas condiciones como quieras,
// pero todas deben ser ciertas para que Swift ejecute el bloque de código.
// Para comprobar múltiples condiciones, utilice el operador &&, que significa
// "y". Por ejemplo:

var action: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/conditional-statements-3.png

// Debido a que stayOutTooLate y nothingInBrain son ciertos, toda la condición
// es verdadera, y la acción se establece en "crucero". Swift utiliza algo
// llamado evaluación de cortocircuito para aumentar el rendimiento: si está
// evaluando varias cosas que todas tienen que ser ciertas, y la primera es
// falsa, ni siquiera se molesta en evaluar el resto.

// ******** Buscando lo contrario de la verdad ********

// Esto puede sonar profundamente filosófico, pero en realidad esto es importante:
// a veces te importa si una condición no es verdadera, es decir, es falsa.
// ¡Puedes hacer esto con el! (No) operador que se introdujo anteriormente.
// Por ejemplo:

if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/conditional-statements-4.png

// Esta vez, la variable de acción solo se establecerá si tanto stayOutTooLate
// como nothingInBrain son falsos, ¡el! Los ha dado la vuelta.


// ------ Bucles ------

// Los ordenadores son geniales para hacer tareas aburridas miles de millones
// de veces en el tiempo que te llevó leer esta frase. Cuando se trata de
// repetir tareas en código, puede copiar y pegar su código varias veces,
// o puede usar bucles, construcciones de programación simples que repiten
// un bloque de código mientras una condición sea cierta.

// Para demostrar esto, quiero presentarte una función de depuración especial
// llamada print(): le das algo de texto para imprimir, y lo imprimirá.
// Si estás corriendo en un patio de recreo como nosotros, verás que tu texto
// aparece en la ventana de resultados. Si estás ejecutando una aplicación real
// en Xcode, verás que tu texto aparece en la ventana de registro de Xcode.
// De cualquier manera, print() es una gran manera de echar un vistazo al
// contenido de una variable.

// Echa un vistazo a este código:

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-1.png

// Cuando haya terminado de ejecutarse, tendrás la tabla de 10 veces en el 
// panel de resultados de tu patio de recreo. Pero no es un código eficiente,
// y de hecho, una forma mucho más limpia es hacer un bucle a través de un
// rango de números usando lo que se llama el operador de rango cerrado, que
// son tres períodos seguidos: ...

// Usando el operador de rango cerrado, podríamos reescribir
// todo eso en tres líneas:


 for i in 1...10 {
print("\(i) x 10 is \(i * 10)")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-2.png

// El panel de resultados solo muestra "(10 veces)" para nuestro bucle, lo que
// significa que el bucle se ejecutó 10 veces. Si quieres saber qué hizo
// realmente el bucle, haz clic en el cuadrado inmediatamente a la derecha de
// "(10 veces). Verá un cuadro que dice "10 x 10 es 100" dentro de su código,
// y si hace clic con el botón derecho en él, debería ver la opción "Historial
// de valores". Haz clic en eso ahora y deberías ver todos los valores impresos
// a lo largo del tiempo.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-3.png

// Lo que hace el bucle es contar del 1 al 10 (incluyendo 1 y 10), asigna ese 
// número a la constante i, luego ejecuta el bloque de
// código dentro de las llaves.

// Si no necesitas saber en qué número estás, puedes usar un guión bajo en
// su lugar. Por ejemplo, podríamos imprimir algunas letras
// de Taylor Swift como esta:

var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-4.png

// Eso imprimirá "Fakers gonna fake fake fake fake fake" añadiendo a la cadena
// cada vez que el bucle se da la vuelta.

// Si Swift no tiene que asignar cada número a una variable cada vez que el bucle
// gira, puede ejecutar su código un poco más rápido. Como resultado, si escribes
// para i en... entonces no uses i, Xcode te sugerirá que lo cambies a _.

// Hay una variante del operador de rango cerrado llamado operador de rango medio
// abierto, y se confunden fácilmente. El operador de rango medio abierto se parece
// a ..< y cuenta desde un número hasta y excluyendo otro. Por ejemplo, 1..<5
// contará 1, 2, 3, 4.

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-5.png



// ******** Bucle sobre Arrays ********

// Swift proporciona una forma muy sencilla de hacer un bucle sobre todos los
// elementos de una matriz. Debido a que Swift ya sabe qué tipo de datos
// contiene su matriz, pasará por cada elemento de la matriz, lo asignará a una
// constante que nombre y luego ejecutará un bloque de su código. Por ejemplo,
// podríamos imprimir una lista de grandes canciones como esta:

var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    print("My favorite song is \(song)")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-6.png

// También puede usar la construcción for i en bucle para hacer un bucle a
// través de matrices, porque puede usar esa constante para indexar en una
// matriz. Incluso podríamos usarlo para indexar en dos matrices, como esta:

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0...3 {
    print("\(people[i]) gonna \(actions[i])")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-7.png

// Puede que te preguntes qué uso tiene el operador de medio rango abierto,
// pero es particularmente útil para trabajar con matrices porque cuentan
// desde cero. Por lo tanto, en lugar de contar desde 0 hasta e incluyendo 3,
// podríamos contar desde 0 hasta y excluyendo el número de elementos
// en una matriz.

// Recuerde: cuentan desde cero, por lo que si tienen 4 elementos, el índice
// máximo es 3, por lo que necesitamos usar exclusión para el bucle.

// Para contar cuántos elementos hay en una matriz, use someArray.count.
// Así que podríamos reescribir nuestro código de esta manera:

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    print("\(people[i]) gonna \(actions[i])")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-8.png


// ******** Bucles internos ********

// Puedes poner bucles dentro de bucles si quieres, e incluso bucles dentro
// de bucles dentro de bucles, aunque de repente podrías descubrir que estás
// haciendo algo 10 millones de veces, ¡así que ten cuidado!

// Podemos combinar dos de nuestros bucles anteriores para crear esto:

var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0..<people.count {
    var str = "\(people[i]) gonna"

    for _ in 1...5 {
        str += " \(actions[i])"
    }

    print(str)
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-9.png

// Eso da como resultado "los jugadores van a jugar, jugar, jugar, jugar, jugar",
// luego "los que odian van a..." Bueno, entiendes la idea.

// Una nota importante: aunque los programadores usan convencionalmente i, j
// e incluso k para las constantes de bucle, puedes nombrarlas como quieras:
// para personNumber en 0..<people.count es perfectamente válido.


// ******** bucles While ********

// Hay un tercer tipo de bucle que verás, que repite un bloque de código hasta
// que le dices que se detenga. Esto se utiliza para cosas como bucles de juego
// en los que no tienes idea de antemano de cuánto tiempo durará el juego: solo
// sigues repitiendo "comprobar toques, animar robots, dibujar la pantalla,
// comprobar si hay toques..." y así, hasta que finalmente el usuario toca un
// botón para salir del juego y volver al menú principal.

// Estos bucles se llaman bucles while, y se ven así:

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-10.png

// Ese código introduce una nueva palabra clave, llamada break. 
// Se usa para salir un rato o para el bucle en un punto que tú decidas.
// Sin él, el código anterior nunca terminaría porque la condición para
// comprobar es simplemente "verdadera", y verdadera siempre es verdadera.
// Sin esa declaración de ruptura, el bucle es un bucle infinito, lo cual
// es algo malo.

// Estos bucles de while funcionan mejor cuando se utilizan datos desconocidos,
// como descargar cosas de Internet, leer desde un archivo como XML, buscar a
// través de la entrada del usuario, etc. Esto se debe a que solo sabes cuándo
// detener el bucle después de haberlo ejecutado un número suficiente de veces.

// Hay una contraparte para romper llamada continuar. Mientras que la ruptura
// de un bucle detiene la ejecución inmediatamente y continúa directamente
// después del bucle, continuar con un bucle solo sale de la iteración actual
// del bucle: volverá a la parte superior del bucle y se recogerá desde allí.

// Como ejemplo, considere el siguiente código:

var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/loops-11.png

// Eso hace un bucle a través de tres canciones de Taylor Swift, pero solo
// imprimirá el nombre de dos. La razón de esto es la palabra clave continue:
// cuando el bucle intenta usar la canción "You Belong with Me", se llama a
// continue, lo que significa que el bucle salta inmediatamente de nuevo al
// inicio: la llamada print() nunca se realiza, y en su lugar el bucle continúa
// directamente a "Look What You Made Me Do".



// ------ Switch case ------

// Has visto declaraciones if y ahora bucles, pero Swift tiene otro tipo de
// control de flujo llamado switch/case. Es más fácil pensar en esto como una
// forma avanzada de si, porque puedes tener muchas coincidencias y Swift
// ejecutará la correcta.

// En la forma más básica de un interruptor/caso, le dices a Swift qué variable
// quieres comprobar y luego proporcionas una lista de posibles casos para esa
// variable. Swift encontrará el primer caso que coincida con su variable y luego
// ejecutará su bloque de código. Cuando ese bloque termina, Swift sale de todo el
// bloque de interruptor/caso.

// He aquí un ejemplo básico:

let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/switch-case-1@2x.png

// Podríamos muy bien haber escrito eso usando muchos bloques if y else if, 
// pero de esta manera es más claro y eso es importante.

// Una ventaja de cambiar/caso es que Swift se asegurará de que sus casos sean
// exhaustivos. Es decir, si existe la posibilidad de que su variable tenga un
// valor que no comprueba, Xcode se negará a crear su aplicación.

// En situaciones en las que los valores son efectivamente abiertos, como nuestro
// entero liveAlbums, debe incluir un caso predeterminado para detectar estos
// valores potenciales. Sí, incluso si "sabes" que tus datos solo pueden estar
// dentro de un cierto rango, Swift quiere estar absolutamente seguro.

// Swift puede aplicar alguna evaluación a sus declaraciones de casos para que
// coincidan con las variables. Por ejemplo, si desea comprobar un rango de
// valores posibles, podría usar el operador de rango cerrado de esta manera:

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}


// Enlace de imagen
// https://www.hackingwithswift.com/img/books/hws/switch-case-2@2x.png


// Una cosa que debes saber es que los bloques de interruptores/casas en Swift
// no se caen como lo hacen en otros idiomas que podrías haber visto.
// Si estás acostumbrado a escribir break en tus bloques de casos, deberías
// saber que esto no es necesario en Swift.

// En su lugar, usas la palabra clave fallthrough para hacer que un caso caiga
// en el siguiente, es efectivamente lo contrario. Por supuesto, si no tienes ni
// idea de lo que esto significa, eso es aún mejor: ¡no te preocupes!


// Opcional: una vez que haya terminado de revisarlos, puede volver a la página
// de revisión y repasar las pruebas relacionadas con los temas anteriores.
// https://www.hackingwithswift.com/review


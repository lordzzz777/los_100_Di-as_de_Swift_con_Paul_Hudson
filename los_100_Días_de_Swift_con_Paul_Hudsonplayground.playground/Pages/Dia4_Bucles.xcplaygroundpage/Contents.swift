import Foundation

// Los bucles son una de las cosas que hacen que los ordenadores sean tan brillantes:
// la capacidad de repetir algunas tareas simples miles de millones de veces cada segundo.

// Por supuesto, lo que va en esos bucles depende de ti: podrías estar agregando algunos números,
// podrías estar leyendo algunos datos de sensores o podrías estar redibujando la pantalla 120
// veces por segundo. Como dijo Craig Bruce, "es el hardware lo que hace que una máquina sea rápida,
// pero es el software lo que hace que una máquina rápida sea lenta".

// Hoy tienes ocho vídeos de un minuto para ver, y te encontrarás con cosas como bucles, bucles infinitos
// y más. Una vez que hayas visto cada vídeo y hayas pasado por cualquier lectura adicional opcional
// que te interese, hay una breve prueba para asegurarte de que has entendido lo que se enseñó.


// ---- Bucles For ----

// Swift tiene algunas formas de escribir bucles, pero su mecanismo subyacente es el mismo: ejecuta algo
// de código repetidamente hasta que una condición se evalúe como falsa.

// El bucle más común en Swift es un bucle for: hará un bucle sobre matrices y rangos, y cada vez que el
// bucle lo rodee, extraerá un elemento y lo asignará a una constante.

// Por ejemplo, aquí hay un rango de números:

let count = 1...10

// Podemos usar un bucle for para imprimir cada artículo de esta manera:

for number in count {
    print("Number is \(number)")
}

// Podemos hacer lo mismo con las matrices:

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

// Si no usas la constante que te dan los bucles, debes usar un guión bajo en su lugar para que Swift
// no cree valores innecesarios:

print("Players gonna ")

for _ in 1...5 {
    print("play")
}


// ----- ¿Por qué Swift usa guiones bajos con bucles? ----

// Si desea hacer un bucle sobre los elementos de una matriz, puede escribir código como este:

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

// Cada vez que el bucle da la vuelta, Swift tomará un elemento de la matriz de nombres, lo pondrá
// en la constante de nombre y luego ejecutará el cuerpo de nuestro bucle, ese es el método print().

// Sin embargo, a veces en realidad no necesitas el valor que se está leyendo actualmente, que es
// donde entra el guión bajo: Swift reconocerá que en realidad no necesitas la variable y no hará
// la constante temporal para ti.

// Por supuesto, Swift realmente puede ver eso de todos modos: puede ver si estás usando o no el 
// nombre dentro del bucle, por lo que puede hacer el mismo trabajo sin el guión bajo.
// Sin embargo, el uso de un guión bajo hace algo muy similar para nuestro cerebro: podemos mirar
// el código e inmediatamente ver que la variable de bucle no se está utilizando, sin importar
// cuántas líneas de código haya dentro del cuerpo del bucle.

// Por lo tanto, si no usas una variable de bucle dentro del cuerpo, Swift te advertirá que la
// reescribas de esta manera:

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}

// ---- Enlace de ejercicios Bucles For ----
// https://www.hackingwithswift.com/review/for-loops



// ----- Bucle While -----

// Una segunda forma de escribir bucles es usar while: darle una condición para comprobar, y su
// código de bucle dará vueltas y vueltas hasta que la condición falle.

// Por ejemplo, podríamos usar un bucle while para simular el conteo de un niño en un juego de
// escondite: comenzamos en uno, contamos hasta 20 inclusive mientras imprimimos cada número,
// luego después del bucle imprimimos "Listo o no".

// Así es como se ve en Swift:

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")


// ----- ¿Cuándo deberías usar un bucle while-----

// Swift nos da bucles para y while, y ambos se usan comúnmente. Sin embargo, cuando estás
// aprendiendo, puede parecer extraño tener dos formas comúnmente utilizadas de hacer bucles:
// ¿cuál deberías usar y por qué?

// La principal diferencia es que los bucles se utilizan generalmente con secuencias finitas:
// hacemos un bucle a través de los números del 1 al 10, o a través de los elementos de una matriz,
// por ejemplo. Por otro lado, mientras que los bucles pueden hacer un bucle hasta que cualquier
// condición arbitraria se vuelva falsa, lo que les permite hasta que les digamos que se detengan.

// Esto significa que podemos repetir el mismo código hasta...

// ...El usuario nos pide que nos detengamos

// ...Un servidor nos dice que nos detengamos

// ...Hemos encontrado la respuesta que estamos buscando

// ...Hemos generado suficientes datos

// Y esos son solo un puñado de ejemplos. Piénsalo: si te pidiera que tiraras 10 dados e imprimieras
// sus resultados, podrías hacerlo con un simple bucle for contando del 1 al 10. Pero si te pedí que
// tiraras 10 dados e imprimieras los resultados, mientras que también lanzas automáticamente otros
// dados si los dados anteriores tuvieron el mismo resultado, entonces no sabes de antemano cuántos
// dados tendrás que tirar. Tal vez tengas suerte y solo necesites 10 rollos, pero tal vez consigas
// algunos rollos duplicados y necesites 15 rollos. O tal vez obtengas muchos rollos duplicados
// y necesites 30, ¿quién sabe?

// Ahí es donde un bucle de tiempo es útil: podemos mantener el bucle hasta que estemos listos para salir.


// ---- Enlace de ejercicios Bucles While ----
// https://www.hackingwithswift.com/review/while-loops




// ----- Repetir bucles -----

// La tercera forma de escribir bucles no se usa comúnmente, pero es tan simple de aprender que también
// podríamos cubrirlo: se llama el bucle de repetición, y es idéntico a un bucle while, excepto que la
// condición para verificar viene al final.

// Por lo tanto, podríamos reescribir nuestro ejemplo de escondite de esta manera:

var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

// Because the condition comes at the end of the repeat loop the code inside the loop will always be executed
// at least once, whereas while loops check their condition before their first run.

// For example, this print() function will never be run, because false is always false:

while false {
    print("This is false")
}

// Xcode incluso nos advertirá de que la línea print() nunca se ejecutará.

// Por otro lado, esta función print() se ejecutará una vez, porque la repetición solo falla en la condición
// después de que se ejecute el bucle:

repeat {
    print("This is false")
} while false


// ---- ¿Cuándo deberías usar un bucle de repetición? ----

// Swift’s for and while loops are overwhelmingly the most common ways to create loops, but we also have a third
// option called repeat that is similar to a while loop except it will always run its loop body at least once.

// Ahora, esta diferencia es tan pequeña que es posible que te preguntes cuál es el punto: si siempre queremos
// que el código se ejecute al menos una vez, ¿por qué no ponerlo antes del cuerpo del bucle,
// así como dentro del cuerpo del bucle?

// La respuesta es en parte algo que los programadores llaman "SECO": No te repitas. Por lo general, preferimos
// escribir código una vez y solo una vez, y consideramos que el código repetido es una señal de que algo
// ha salido mal. Algunas personas llevan esto al extremo y no repiten nada y eso suele ser una mala idea,
// pero aquí definitivamente podemos evitar repetirnos con un bucle de repetición.

// Para demostrarte esto, quiero mostrarte cómo puedes barajar una matriz de números. Swift nos da shuffled(),
// que es el código que podemos ejecutar en una matriz que crea una copia de la matriz de la matriz, aleatoriza
// el orden de los elementos de la copia y la devuelve.

// Ahora, si tuviéramos una variedad de números, podríamos barajarlas así:

let numbers = [1, 2, 3, 4, 5]
let random = numbers.shuffled()

// Sin embargo, eso tiene un problema potencial: barajar 1, 2, 3, 4, 5 podría significar que volvemos 
// 5, 4, 3, 2, 1, podría significar que volvemos, 1, 4, 3, 5, 2, o podría significar que volvemos
// 1, 2, 3, 4, 5, exactamente la misma matriz en la que pasamos. Después de todo, es aleatorio, y a
// veces la aleatoriedad viene de formas extrañas.

// Ahora, ¿y si quisiéramos asegurarnos de que nuestra matriz aleatoria no fuera la misma que la original?
// Eso significaría ejecutar la mezcla, comprobar si los números originales y aleatorios coinciden, y si lo
// hacen, se mezclan de nuevo. Esto podría suceder muchas veces, porque en teoría es posible que la misma
// secuencia vuelva repetidamente, aunque es cada vez más poco probable.

// Por lo tanto, usando un bucle while podríamos escribir esto:

let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()

while random == numbers {
    random = numbers.shuffled()
}

// Eso hace que lo aleatorio sea igual a los números barajados en números. Luego comprueba si los nuevos 
// números son los mismos que los antiguos y, si es así, los mezcla de nuevo. Como puedes ver, eso signific
// que hemos repetido shuffled() en dos lugares. Para el código simple, esto no es realmente un problema,
// pero ¿y si el código que necesitabas repetir fuera de 5 líneas de código? ¿O 20 líneas?

// Ahora mira el mismo código usando la repetición:

let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers

// Eso le dice a Swift que al azar será una matriz entera, pero en realidad no la llena con nada. Dentro del
// cuerpo del bucle le asignamos los números aleatorios, luego comprobamos si tenemos los mismos valores o no:
// el código es más simple, sin repetición.


// ---- Enlace de ejercicios Repetir bucles  ----
// https://www.hackingwithswift.com/review/repeat-loops




// ----- Salir de los bucles -----

// Puedes salir de un bucle en cualquier momento usando la palabra clave break. Para probar esto, comencemos
// con un bucle de while regular que cuenta atrás para el lanzamiento de un cohete:

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

// En este caso, el astronauta al mando se aburre a mitad de la cuenta atrás y decide saltarse
// el resto y lanzar de inmediato:

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

// Con ese cambio, tan pronto como la cuenta atrás llegue a las 4, se imprimirá el mensaje del
// astronauta y se omitirá el resto del bucle.


// ----- ¿Por qué querrías salir de un bucle? ----

// La palabra clave break de Swift nos permite salir de un bucle inmediatamente, independientemente
// del tipo de bucle del que estemos hablando. La mayor parte del tiempo no necesitarás esto, porque
// estás revisando los elementos de una matriz y quieres procesarlos todos, o porque estás contando
// del 1 al 10 y quieres manejar todos esos valores.

// Sin embargo, a veces quieres terminar tu bucle prematuramente. Por ejemplo, si tenías una serie de
// puntuaciones y quieres averiguar cuántas de ellas logró el jugador sin obtener un 0, podrías escribir esto:

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")

// Sin break, tendríamos que seguir revisando las puntuaciones incluso después de encontrar el primer 0,
// lo cual es un desperdicio.


// ---- Enlace de ejercicios Salir de los bucles  ----
// https://www.hackingwithswift.com/review/exiting-loops




// ---- Salir de varios bucles ----

//Si pones un bucle dentro de un bucle, se llama bucle anidado, y no es raro querer salir tanto del bucle
// interior como del bucle exterior al mismo tiempo.

//Como ejemplo, podríamos escribir algo de código para calcular las tablas de tiempos del 1 al 10 de esta manera:

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

// Si queríamos salir a mitad de camino, tenemos que hacer dos cosas. En primer lugar, le damos al bucle
// exterior una etiqueta, como esta:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

// En segundo lugar, agregue nuestra condición dentro del bucle interior, luego use break outerLoop para
// salir de ambos bucles al mismo tiempo:

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


// Con un break regular, solo se saldría del bucle interior: el bucle exterior continuaría donde lo dejó.


// ----- ¿Por qué Swift tiene declaraciones etiquetadas? -----

// Las declaraciones etiquetadas de Swift nos permiten nombrar ciertas partes de nuestro código, y se usa
// más comúnmente para romper los bucles anidados.

// Para demostrarlos, echemos un vistazo a un ejemplo en el que estamos tratando de averiguar la combinación
// correcta de movimientos para desbloquear una caja fuerte. Podríamos comenzar definiendo una serie de todos
// los movimientos posibles:

let options = ["up", "down", "left", "right"]

// Para fines de prueba, esta es la combinación secreta que estamos tratando de adivinar:

let secretCombination = ["up", "up", "right"]

// Para encontrar esa combinación, necesitamos hacer matrices que contengan todas las variables posibles
// de tres colores:

/*
up, up, up
up, up, down
up, up, left
up, up, right
up, down, left
up, down, right
*/

// ...Entiendes la idea.

// Para que eso suceda, podemos escribir tres bucles, uno anidado dentro del otro, así:

for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]
            
            if attempt == secretCombination {
                print("The combination is \(attempt)!")
            }
        }
    }
}

// Eso repasa los mismos elementos varias veces para crear una matriz de intento, e imprime un mensaje
// si su intento coincide con la combinación secreta.

// Eso repasa los mismos elementos varias veces para crear una matriz de intento, e imprime un mensaje
// si su intento coincide con la combinación secreta.

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

// Con ese pequeño cambio, esos tres bucles dejan de funcionar tan pronto como se encuentra la combinación.
// En este caso trivial, es poco probable que haya una diferencia en el rendimiento, pero ¿qué pasaría si
// sus artículos tuvieran cientos o incluso miles de artículos? Guardar el trabajo como este es una buena
// idea, y vale la pena recordarlo por tu propio código.

// ---- Enlace de ejercicios Salir de varios bucles  ----
// https://www.hackingwithswift.com/review/exiting-multiple-loops



// ----- Saltar artículos -----

// Como has visto, la palabra clave break sale de un bucle. Pero si solo quieres omitir el elemento actual 
// y continuar con el siguiente, deberías usar continuar en su lugar.

// Para probar esto, podemos escribir un bucle del 1 al 10, luego usar el operador de resto de Swift para
// omitir cualquier número que sea impar:

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// Recuerde, el operador restante averigua cuántas veces 2 cabe en cada número de nuestro bucle, y luego
// devuelve lo que queda. Por lo tanto, si queda 1, significa que el número es impar, por lo que podemos
// continuar para omitirlo.



// ----- Cuándo usar el descanso y cuándo usar continuar -----

// A veces, a los estudiantes de Swift les resulta difícil entender cuándo la palabra clave break es
// correcta y cuándo la palabra clave continue es correcta, porque ambos
// alteran el flujo de nuestros bucles.

//Cuando usamos continuar, estamos diciendo "He terminado con la ejecución actual de este bucle"
// - Swift se saltará el resto del cuerpo del bucle e irá al siguiente elemento del bucle.
// Pero cuando decimos descanso, estamos diciendo "He terminado con este bucle por completo,
// así que sal por completo". Eso significa que Swift omitirá el resto del bucle del cuerpo,
// pero también omitirá cualquier otro elemento del bucle que aún esté por venir.

// Al igual que el descanso, puedes usar continuar con declaraciones etiquetadas si quieres, ¡pero
// honestamente no recuerdo haberlo visto hecho!


// ---- Enlace de ejercicios Salir de varios bucles  ----
// https://www.hackingwithswift.com/review/skipping-items




// ----- Bucles infinitos -----

// Es común usar bucles while para hacer bucles infinitos: bucles que no tienen fin o solo terminan
// cuando estás listo. Todas las aplicaciones de tu iPhone usan bucles infinitos, porque comienzan
// a ejecutarse, y luego observan continuamente los eventos hasta que decides abandonarlos.

// Para hacer un bucle infinito, solo usa true como tu condición. true siempre es true, por lo que el
// bucle se repetirá para siempre. Advertencia: Por favor, asegúrese de tener un cheque que salga de su
// bucle, de lo contrario nunca terminará.

// Como ejemplo, vamos a usar while true para imprimir la música de la pieza de John Cage 4'33" - si no
// lo sabías, es famosa porque son 4 minutos y 33 segundos de completo silencio.

// Podemos escribir la "música" para esta pieza usando mientras sea verdadera, con una condición que sale
// del bucle cuando hemos ido suficientes veces

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


// ---- ¿Por qué querrías hacer un bucle infinito? ----

// Los bucles infinitos son bucles de programa que continúan de manera efectiva para siempre.
// En Swift, se ven así:

while true {
    print("I'm alive!")
}

print("I've snuffed it!")

// En ese código, "¡Estoy vivo!" Se imprimirá una y otra vez para siempre, mientras que el "¡Lo he apagado!"
// El mensaje nunca se imprimirá: el bucle no terminará, por lo que el mensaje no se imprimirá. En la práctica,
// es más probable que tengas algún tipo de condición en tu bucle, como esta:

var isAlive = false

while isAlive == true {
    print("I'm alive!")
}

print("I've snuffed it!")

// Eso te permite terminar el bucle cuando estés listo, para que no sean realmente infinitos. Como resultado,
// los programadores a menudo llamarán a estos bucles pseudoinfinitos: se ejecutarán durante mucho tiempo,
// y tal vez para siempre en el caso de los sistemas críticos que nunca se reinician, pero técnicamente
// no son realmente infinitos.

// Puede que te preguntes por qué este tipo de código es útil, pero en realidad es muy común. Por ejemplo,
// todas las aplicaciones que usas en tu iPhone tienen bucles infinitos. Piénsalo: cuando tu aplicación se
// inicia, necesita repetir una serie de instrucciones hasta que se le diga que se detenga

// Comprueba si hay alguna entrada de usuario

// Ejecuta cualquier código que necesites

// Vuelve a dibujar la pantalla

// Repetir

// Eso podría durar 10 segundos si solo estás revisando Twitter, pero podría durar horas si estás jugando
// un juego, o tal vez podría durar mucho más tiempo. El punto es que no sabemos cuándo se detendrá el bucle,
// por lo que podemos pasar de 1 a mil millones.

// En su lugar, usan algo como un bucle infinito un poco como el que te mostré antes: el programa continuará
// ejecutándose una y otra vez hasta que llegue el momento de cerrarse, momento en el que el bucle puede terminar
// y cualquier código de limpieza puede ejecutarse.


// ---- Enlace de ejercicios Salir de varios bucles  ----
// https://www.hackingwithswift.com/review/infinite-loops



// ----- Resumen en bucle -----

// Has llegado al final de la cuarta parte de esta serie, así que resumamos:

// Los bucles nos permiten repetir el código hasta que una condición sea falsa.

// El bucle más común es for, que asigna cada elemento dentro del bucle a una constante temporal.

// Si no necesitas la constante temporal que te dan los bucles, usa un guión bajo en su lugar para
// que Swift pueda omitir ese trabajo.

// Hay bucles while, que usted proporciona una condición explícita para verificar.

// Aunque son similares a los bucles while, los bucles de repetición siempre ejecutan el cuerpo de 
// su bucle al menos una vez.

// Puede salir de un solo bucle usando break, pero si tiene bucles anidados, debe usar break seguido
// de cualquier etiqueta que haya colocado antes de su bucle exterior.

// Puedes omitir elementos en un bucle usando continuar.

// Los bucles infinitos no terminan hasta que se lo pides, y se hacen usando mientras son verdaderos.
// ¡Asegúrate de tener una condición en algún lugar para terminar tus bucles infinitos!


// ---- Enlace de ejercicios Resumen en bucle  ----
// https://www.hackingwithswift.com/review/looping-summary



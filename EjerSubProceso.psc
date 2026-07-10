Algoritmo EjerSubProceso
	Escribir "Ejemplo de una matriz"
	Escribir ""
	Dimension estudiantes[10,3]
    Definir opcion Como Entero
    Repetir
        Limpiar Pantalla
        Escribir "===== MENU ====="
        Escribir "1. Registrar"
        Escribir "2. Mostrar"
        Escribir "3. Actualizar"
        Escribir "4. Eliminar"
        Escribir "5. Salir"
        Leer opcion
        Segun opcion Hacer
            1:
                Limpiar Pantalla
                Escribir "=== REGISTRAR ESTUDIANTES ==="
                Registrar(estudiantes)
                Escribir "Presione cualquier tecla para continuar..."
                Esperar Tecla
				
            2:
                Limpiar Pantalla
                Escribir "=== MOSTRAR ESTUDIANTES ==="
                MostrarE(estudiantes)
                Escribir "Presione cualquier tecla para continuar..."
                Esperar Tecla
				
            3:
                Limpiar Pantalla
                Escribir "=== ACTUALIZAR ESTUDIANTES ==="
                Actualizar(estudiantes)
                Escribir "Presione cualquier tecla para continuar..."
                Esperar Tecla
				
            4:
                Limpiar Pantalla
                Escribir "=== ELIMINAR ESTUDIANTES ==="
                Eliminar(estudiantes)
                Escribir "Presione cualquier tecla para continuar..."
                Esperar Tecla
        FinSegun
    Hasta Que opcion = 5
FinAlgoritmo
SubProceso Registrar(estudiantes)
    Definir i Como Entero
    Definir registrado Como Logico
    registrado <- Falso
	
    Para i <- 1 Hasta 10 Hacer
        Si estudiantes[i,1] = "" Entonces
            Escribir "Codigo:"
            Leer estudiantes[i,1]
            Escribir "Nombre:"
            Leer estudiantes[i,2]
            Escribir "Edad:"
            Leer estudiantes[i,3]
            Escribir "Estudiante registrado."
            registrado <- Verdadero
            i <- 10
        FinSi
    FinPara 
	
    Si registrado = Falso Entonces
        Escribir "Matriz llena."
    FinSi
FinSubProceso
SubProceso MostrarE(estudiantes)
    Definir i Como Entero
	
    Escribir "CODIGO    NOMBRE    EDAD"
    Para i <- 1 Hasta 10 Hacer
        Si estudiantes[i,1] <> "" Entonces
            Escribir estudiantes[i,1], "    ", estudiantes[i,2], "    ", estudiantes[i,3]
        FinSi
    FinPara
FinSubProceso
SubProceso Actualizar(estudiantes)
    Definir i Como Entero
    Definir codigo Como Cadena
    Definir encontrado Como Logico
    encontrado <- Falso
    Escribir "Codigo a buscar:"
    Leer codigo
    Para i <- 1 Hasta 10 Hacer
        Si estudiantes[i,1] = codigo Entonces
            Escribir "Nuevo nombre:"
            Leer estudiantes[i,2]
            Escribir "Nueva edad:"
            Leer estudiantes[i,3]
            Escribir "Registro actualizado."
            encontrado <- Verdadero
        FinSi
    FinPara
	
    Si encontrado = Falso Entonces
        Escribir "Codigo no encontrado."
    FinSi
FinSubProceso
SubProceso Eliminar(estudiantes)
    Definir i Como Entero
    Definir codigo Como Cadena
    Definir encontrado Como Logico
    encontrado <- Falso
    Escribir "Codigo a eliminar:"
    Leer codigo
    Para i <- 1 Hasta 10 Hacer
        Si estudiantes[i,1] = codigo Entonces
            estudiantes[i,1] <- ""
            estudiantes[i,2] <- ""
            estudiantes[i,3] <- ""
            Escribir "Registro eliminado."
            encontrado <- Verdadero
        FinSi
    FinPara
    Si encontrado = Falso Entonces
        Escribir "Codigo no encontrado."
    FinSi
FinSubProceso

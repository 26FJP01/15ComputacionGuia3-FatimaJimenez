using System;
internal class Program
{
    private static void Main(string[] args)
    {
        string[,] productos = new string[10, 3];
        int opcion;
        do
        {
            Console.Clear();
            Console.WriteLine("===== MENU =====");
            Console.WriteLine("1. Registrar producto");
            Console.WriteLine("2. Mostrar productos");
            Console.WriteLine("3. Actualizar producto");
            Console.WriteLine("4. Eliminar producto");
            Console.WriteLine("5. Salir");
            Console.Write("Seleccione una opcion: ");
            if (!int.TryParse(Console.ReadLine(), out opcion))
            {
                opcion = 0;
            }
            switch (opcion)
            {
                case 1:
                    Registrar(productos);
                    break;
                case 2:
                    Mostrar(productos);
                    break;
                case 3:
                    Actualizar(productos);
                    break;
                case 4:
                    Eliminar(productos);
                    break;
                case 5:
                    Console.WriteLine("Programa finalizado.");
                    break;
                default:
                    Console.WriteLine("Opcion invalida.");
                    break;
            }
            if (opcion != 5)
            {
                Console.WriteLine("\nPresione una tecla para continuar...");
                Console.ReadKey();
            }
        } while (opcion != 5);
    }
    static void Registrar(string[,] productos)
    {
        for (int i = 0; i < 10; i++)
        {
            if (productos[i, 0] == null)
            {
                Console.Write("Codigo: ");
                productos[i, 0] = Console.ReadLine();
                Console.Write("Nombre: ");
                productos[i, 1] = Console.ReadLine();
                Console.Write("Cantidad: ");
                productos[i, 2] = Console.ReadLine();
                Console.WriteLine("Producto registrado.");
                return;
            }
        }
        Console.WriteLine("No hay espacio disponible.");
    }
    static void Mostrar(string[,] productos)
    {
        Console.WriteLine("\nLISTA DE PRODUCTOS");
        Console.WriteLine("---------------------------------------");
        bool hay = false;
        for (int i = 0; i < 10; i++)
        {
            if (productos[i, 0] != null)
            {
                hay = true;
                Console.WriteLine("Codigo: " + productos[i, 0]);
                Console.WriteLine("Nombre: " + productos[i, 1]);
                Console.WriteLine("Cantidad: " + productos[i, 2]);
                Console.WriteLine("---------------------------------------");
            }
        }
        if (!hay)
        {
            Console.WriteLine("No hay productos registrados.");
        }
    }
    static void Actualizar(string[,] productos)
    {
        Console.Write("Ingrese el codigo del producto: ");
        string codigo = Console.ReadLine();
        for (int i = 0; i < 10; i++)
        {
            if (productos[i, 0] == codigo)
            {
                Console.Write("Nuevo nombre: ");
                productos[i, 1] = Console.ReadLine();
                Console.Write("Nueva cantidad: ");
                productos[i, 2] = Console.ReadLine();
                Console.WriteLine("Producto actualizado.");
                return;
            }
        }
        Console.WriteLine("Producto no encontrado.");
    }
    static void Eliminar(string[,] productos)
    {
        Console.Write("Ingrese el codigo del producto: ");
        string codigo = Console.ReadLine();
        for (int i = 0; i < 10; i++)
        {
            if (productos[i, 0] == codigo)
            {
                productos[i, 0] = null;
                productos[i, 1] = null;
                productos[i, 2] = null;
                Console.WriteLine("Producto eliminado.");
                return;
            }
        }
        Console.WriteLine("Producto no encontrado.");
    }
}
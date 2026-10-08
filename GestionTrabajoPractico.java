import java.util.ArrayList;
import java.util.List;

// Clase que representa a un Estudiante
class Estudiante {
    private String nombreApellido;
    private String cursoSeccion;

    public Estudiante(String nombreApellido, String cursoSeccion) {
        this.nombreApellido = nombreApellido;
        this.cursoSeccion = cursoSeccion;
    }

    public String getNombreApellido() {
        return nombreApellido;
    }

    public String getCursoSeccion() {
        return cursoSeccion;
    }
}

// Clase que representa el Trabajo Práctico
class TrabajoPractico {
    private String titulo;
    private String asignatura;
    private int puntajeTotal;
    private String enlaceWeb;
    private int puntosObtenidos;

    public TrabajoPractico(String titulo, String asignatura, int puntajeTotal, String enlaceWeb, int puntosObtenidos) {
        this.titulo = titulo;
        this.asignatura = asignatura;
        this.puntajeTotal = puntajeTotal;
        this.enlaceWeb = enlaceWeb;
        this.puntosObtenidos = puntosObtenidos;
    }

    public boolean estaAprobado() {
        // Condición de logro: 70% o más (21 de 30 puntos)
        double porcentaje = ((double) puntosObtenidos / puntajeTotal) * 100;
        return porcentaje >= 70.0;
    }

    public void mostrarDetalles() {
        System.out.println("--- Detalle del Trabajo Práctico ---");
        System.out.println("Título: " + titulo);
        System.out.println("Asignatura: " + asignatura);
        System.out.println("Puntaje Obtenido: " + puntosObtenidos + " / " + puntajeTotal);
        System.out.println("Enlace Web: " + enlaceWeb);
        System.out.println("Estado: " + (estaAprobado() ? "APROBADO (Logrado)" : "REPROBADO (No logrado)"));
    }
}

// Clase principal para ejecutar el programa
public class GestionTrabajoPractico {
    public static void main(String[] args) {
        // Creación del estudiante (reemplaza con tus datos)
        Estudiante estudiante = new Estudiante("Juan Pérez", "2.º BTI - Sección A");

        // Creación del trabajo práctico con un puntaje de ejemplo (ej: 27 de 30 puntos)
        TrabajoPractico tp = new TrabajoPractico(
            "Trabajo Práctico: Video y Página Web",
            "Software / Desarrollo Web",
            30,
            "https://tu-enlace-netlify.app",
            27
        );

        // Mostrar información general en consola
        System.out.println("Colegio Nacional EMD Asunción Escalada");
        System.out.println("Estudiante: " + estudiante.getNombreApellido());
        System.out.println("Curso: " + estudiante.getCursoSeccion());
        System.out.println();

        // Mostrar detalles y calificación
        tp.mostrarDetalles();
    }
}
use std::io;

fn main() {
    
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Error leyendo input");
    let dia: i32 = input.trim().parse().expect("Esto no es un numero");

    let dia_nombre = match dia {
        1 => "Lunes",
        2 => "Martes",
        3 => "Miercoles",
        4 => "Jueves",
        5 => "Viernes",
        6 => "Sábado",
        7 => "Domingo",
        _ => "Dia invalido",
    };

    println!("El dia {} es {}", dia, dia_nombre);

}

use std::io;

fn main() {
    let mut input1 = String::new();
    io::stdin()
        .read_line(&mut input1)
        .expect("Error en el input");
    let numerador: i32 = input1.trim().parse().expect("Esto no es un numero");

    let mut input2 = String::new();
    io::stdin()
        .read_line(&mut input2)
        .expect("Error en el input");
    let denominador: i32 = input2.trim().parse().expect("Esto no es un numero");

    println!("numerador: {} - denominador {}", numerador, denominador);
    let resultado = dividir(numerador, denominador);
    println!("Division = {:?}", resultado);
}

fn dividir (numerador: i32, denominador: i32) -> Option<i32> {
    if denominador == 0 {
        None
    }
    else {
        Some (numerador / denominador)
    }
}

use rand::Rng;
use std::io;

fn main() {
    let mut rng = rand::thread_rng();
    let numero = rng.gen_range(1..=6);
    let mut input = String::new();
    io::stdin()
        .read_line(&mut input)
        .expect("Error leyendo input");
    let entrada_num = input.trim().parse().expect("No es un numero");

    let mensaje = acertar(entrada_num, numero);
    println!("{}, el numero era {}", mensaje, numero);
}

fn acertar(entrada: i32, random: i32) -> String {
    if entrada == random {
        let resultado = String::from("Acertaste!.");
        resultado
    }
    else {
        let resultado_malo = String::from("No Acertaste.");
        resultado_malo
    }
}

use rand::Rng;
use std::io;

fn main(){
    let mut rng = rand::thread_rng();
    let mut numero = rng.gen_range(1..=6);
    let mut entrada_num = input.trim().parse().expect("No es un numero");

    let mensaje = acertar;
    println!("{}", mensaje);
}

fn acertar(entrada: i32, random: i32) -> String{
    if entrada == random {
        let resultado = String::from("Acertaste!.");
        resultado;
    }
    else {
        let resultado_malo = String::from("No acertaste");
        resultado_malo;
    }
}

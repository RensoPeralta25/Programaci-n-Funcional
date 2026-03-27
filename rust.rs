// Funcion que da el cuadrado de un numero en Rust
fn cuadrado(x: &mut i32) {
    *x *= *x;
}

fn main() {
    let mut x: i32 = 2; 
    cuadrado(&mut x);
    println!("{}", x);
}

fn main(){
    let numeros = vec![1,2,3,4,5,6];
    let suma_cuadrados_pares: i32 = numeros
        .iter()
        .filter(|x| **x % 2 == 0)
        .map(|x| x * x)
        .sum();
    println!("Resultado: {}", suma_cuadrados_pares);
}

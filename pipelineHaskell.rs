fn main(){
    let lista = vec![10, 15, 20, 25, 30];
    let pip: i32 = lista
        .iter()
        .filter(|x| **x > 15)
        .map(|x| x / 5)
        .sum();
    println!("Resultado: {}", pip);
}

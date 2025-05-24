mod product;
mod ui;
mod user;

#[tokio::main]
async fn main() {
    println!("Hello, world! {}", task::add(2, 2));
}

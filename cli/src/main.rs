mod product;
mod ui;
mod user;

use promkit::{preset::readline::Readline, suggest::Suggest};

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let mut p = Readline::default()
        .title("Hi!")
        .enable_suggest(Suggest::from_iter([
            "apple",
            "applet",
            "application",
            "banana",
        ]))
        .validator(
            |text| text.len() > 10,
            |text| format!("Length must be over 10 but got {}", text.len()),
        )
        .prompt()?;
    println!("result: {:?}", p.run()?);
    println!("Hello, world! {}", task::add(2, 2));
    Ok(())
}

pub mod browser;
pub mod config;
pub mod log;
pub mod net;
pub mod notice;

pub use browser::*;
pub use config::*;
pub use log::*;
pub use net::*;
pub use notice::*;

pub fn add(left: u64, right: u64) -> u64 {
    left + right
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = add(2, 2);
        assert_eq!(result, 4);
    }
}

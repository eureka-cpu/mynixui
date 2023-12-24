use nix::{net::if_, unistd};
fn main() {
    let hostname = unistd::gethostname().expect("Failed getting hostname");
    let hostname = hostname.into_string().expect("Hostname wasn't valid UTF-8");
    println!("Hostname: {}", hostname);

    let interfaces = if_::if_nameindex().unwrap();
    for iface in &interfaces {
        dbg!(&iface);
    }
}

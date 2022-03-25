use reedline::{DefaultPrompt, Reedline, Signal};

fn handle_user_input(buffer: String) -> bool{
    match buffer.to_ascii_lowercase().as_str() {
        "y" | "yes" => true,
        "n" | "no" => {
            println!("Ok");
            true
        },
        _ => {
            println!("Please write only yes/y or no/n!");
            false
        },
    }
}

fn hello() {
    println!("TRAP");
    println!("CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY");
    println!("\nInstructions? ");

    let mut line_editor = Reedline::create().unwrap();
    let prompt = DefaultPrompt::default();
    let mut next = false;
    loop {
        let sig = line_editor.read_line(&prompt).unwrap();
        match sig {
            Signal::Success(buffer) => {
                next = handle_user_input(buffer);
            }
            Signal::CtrlD | Signal::CtrlC => {
                println!("\nAborted!");
                break;
            }
            Signal::CtrlL => {
                line_editor.clear_screen().unwrap();
            }
        }
        if next {
            break;
        }
    }

    println!("");
    println!("");
    println!("");
    println!("");
    println!("");
    println!("");
    println!("");
}

fn main() {
    hello();
}

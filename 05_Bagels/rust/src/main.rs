use rand::seq::SliceRandom;
use rand::Rng;
use rustyline::error::ReadlineError;
use rustyline::Editor;
use std::process;

struct Nums(u8, u8, u8);

impl Nums {
    fn new() -> Nums {
        let mut rng = rand::thread_rng();
        let mut numbers: [u8; 10] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
        numbers.shuffle(&mut rng);
        println!("O.K.  I have a number in mind");
        Nums(numbers[0], numbers[1], numbers[2])
        
    }
}

fn main() {
    let max_guesses: u8 = 20;
    // function for printing rooles
    rooles();
    let nums = Nums::new();
    println!("{}", nums[0]);

}

fn rooles() {
    let mut rl = Editor::<()>::new();
    let rool: bool;
    loop {
        let readline = rl.readline("Would you like the rules (Yes or No)? ");
        match readline {
           Ok(line) => {
               if line.as_str() == String::from("yes") || 
                line.as_str() == String::from("Yes") ||
                line.as_str() == String::from("y"){
                    rool = true;
                    break
               } else if line.as_str() == String::from("no") || 
               line.as_str() == String::from("No") ||
               line.as_str() == String::from("n"){
                    rool = false;
                    break
               } else {
                   println!("Please only what is specified");
               }
            },
            Err(ReadlineError::Interrupted) => {
                println!("Good bye!!");
                process::exit(0x0100);
            },
            Err(ReadlineError::Eof) => {
                println!("Good bye!!");
                process::exit(0x0100);
            },
            Err(err) => {
                println!("Error: {:?}", err);
                process::exit(0x0100);
            }
        }
    }

    if rool {
        println!("\nI am thinking of a three-digit number.  Try to guess");
        println!("my number and I will give you clues as follows:");
        println!("   PICO   - One digit correct but in the wrong position");
        println!("   FERMI  - One digit correct and in the right position");
        println!("   BAGELS - No digits correct");
    }    
}
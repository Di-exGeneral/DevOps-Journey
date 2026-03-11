# Scripting using bash
Bash is a scripting language more similar to python.

### Key Points
- don't include spacess when declaring variable or else bash will treat you variable as a command
- use `read -p` to accept user input
- use `$(())` to do arithmetic operations


Numeric comparison

    -lt  = less than
    -gt  = greater than
    -le  = less than or equal to
    -ge  = greater than or equal to
    -eq  = equal to
    -ne  = not equal to

## Methods/Functions
The function the same as how they do in other languages

The `$1` in the function means get the first arfument passed to the function

    func_name () {
      variable = $1
    }

    func_name "argument"


@main
public struct guessNumber {
    public static func main() {
        print("Digite o primeiro valor do intervalo: ", terminator: "")
        let first =  Int(readLine()!)!
        print("Digite o segundo valor do intervalo: ", terminator: "")
        let last = Int(readLine()!)!
        guessMyNumber(first: first, last: last)
    }
}

func guessMyNumber(first: Int, last: Int) {
    var result: Int
    result = checkNumer(x: first, y: last)
    print("Seu número é: \(result)")
    print("Está correto? 's' para sim e 'n' para não")
    var answer = readLine()!
    if answer == "s" {
        print("Seu número foi advinhado!")
        return
    } else if answer == "n" {
        print("Digite 'a' para um valor mais alto e 'b' para um valor mais baixo")
        answer = readLine()!
        switch answer {
        case "a":
            if last < first {
                guessMyNumber(first: last, last: result)
            } else {
                guessMyNumber(first: result, last: last)
            }
        case "b":
            if last < first {
                guessMyNumber(first: last, last: result)
            } else {
                guessMyNumber(first: result, last: first)
            }
        default:
            print("deu pau")
        }
    }
    return
}

func checkNumer(x: Int, y: Int) -> Int {
    return (x + y)/2
}


@main
public struct binarySearch {
    public static func main() {
        let list = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
        let result = binarySearchByItem(list: list, item: 3)
        if result == 0 {
            print("valor nao encontrado")
        } else {
            print("Posição do valor: \(result)")
            print("Valor: \(list[result])")
        }
    }
}

func binarySearchByItem(list: [Int], item: Int) -> Int{
    var low = 0
    var high = list.count - 1

    while low <= high {
        let center = (low + high)/2
        let guess = list[center]
        if guess == item {
            return guess
        } else if guess > item {
            high = center - 1
        } else {
            low = center + 1
        }
    }
    return 0
}

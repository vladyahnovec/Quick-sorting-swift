
var array : [Int] = []

func randomArray(array: inout [Int]) -> [Int] {
    for _ in 0...9 {
        array.append(Int.random(in: 0...100))
    }
    return array
}

randomArray(array: &array)
print(array)

func quickSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    var pivot = array[0]
    var left: [Int] = []
    var right: [Int] = []
    
    for i in 1..<array.count {
        if pivot > array[i] {
            left.append(array[i])
        }
        else {
            right.append(array[i])
        }
    }
    return quickSort(array: left) + [pivot] + quickSort(array: right)
}

let sortedArray = quickSort(array: array)
print(sortedArray)

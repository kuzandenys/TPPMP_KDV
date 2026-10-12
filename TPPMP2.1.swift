// ЗАВДАННЯ №1: Робота з масивами

// 1. Описати масив fibArray з десяти перших чисел Фібоначчі
let fibArray = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

// 2. Створити масив revArray, елементи якого знаходяться в оберненому порядку відносно масиву fibArray
let revArray = Array(fibArray.reversed())

// 3. Описати масив простих чисел snglArray, які не перевищують число 100
var snglArray = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

// 4. Вивести на екран кількість елементів масиву snglArray
print(snglArray.count)

// 5. Вивести на екран 10-й елемент масиву snglArray
print(snglArray[9])

// 6. Вивести на екран підмасив елементів масиву snglArray, починаючи з 15-го та закінчуючи 20-м елементами
print(Array(snglArray[14...19]))

// 7. Створити масив rptArray з 10 елементів, що рівні 10-му елементу масиву snglArray
let tenthElement = snglArray[9]
let rptArray = Array(repeating: tenthElement, count: 10)

// 8. Описати масив непарних чисел oddArray (не менших за число 0, та не більших за число 10), використовуючи init(arrayLiteral:)
var oddArray = Array(arrayLiteral: 1, 3, 5, 7, 9)

// 9. Додати до масиву oddArray число 11
oddArray.append(11)

// 10. Додати до масиву oddArray числа 15, 17, 19 у якості підмасиву
oddArray.append(contentsOf: [15, 17, 19])

// 11. Вставити у масив oddArray число 13 на позицію між числами 11 та 15
if let index15 = oddArray.firstIndex(of: 15) {
    oddArray.insert(13, at: index15)
}

// 12. Видалити елементи масиву oddArray, починаючи з 5-го та закінчуючи 8-им (невключно) елементами
oddArray.removeSubrange(4..<7)

// 13. Видалити останній елемент масиву oddArray та вивести його на екран
let removedLast = oddArray.removeLast()
print(removedLast)

// 14. Замінити елементи масиву oddArray, починаючи з 2-го та закінчуючи останнім, на масив з числовими елементами 2, 3, 4
if oddArray.count > 1 {
    oddArray[1..<oddArray.count] = [2, 3, 4]
}

// 15. Видалити елемент масиву oddArray, який рівний числу 3
oddArray.removeAll(where: { $0 == 3 })

// 16. Вивести значення, яке визначає, чи міститься число 3 у масиві oddArray
print(oddArray.contains(3))

// 17. Вивести на екран рядкове представлення масиву oddArray
print(String(describing: oddArray))
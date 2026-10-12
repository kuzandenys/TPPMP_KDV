import Foundation

// Початковий рядок
var text = "Hello World. This is Swift programming language"

// 1. Визначити та вивести на екран довжину рядка
print("1. Довжина рядка: \(text.count)")

// 2. Замінити кожне входження символа “i” на символ “u”
text = text.replacingOccurrences(of: "i", with: "u")
print("2. Після заміни 'i' -> 'u': \(text)")

// 3. Видалити 4-й, 7-й та 10-й символи (індекси 3, 6, 9)
// Видаляємо у зворотному порядку індексів, щоб не збивати позиції
let indicesToRemove = [3, 6, 9].map { text.index(text.startIndex, offsetBy: $0) }
for index in indicesToRemove.sorted(by: >) {
    text.remove(at: index)
}
print("3. Після видалення 4, 7, 10 символів: \(text)")

// 4. Додати рядок “ (modified)” до існуючого рядка
text += " (modified)"
print("4. Після додавання ' (modified)': \(text)")

// 5. Вивести значення, що визначає чи існуючий рядок є пустим
print("5. Рядок пустий: \(text.isEmpty)")

// 6. Додати символ “.” до кінця існуючого рядка
text.append(".")
print("6. Після додавання крапки: \(text)")

// 7. Вивести значення, що визначає чи рядок починається з підрядка “Hello”
print("7. Починається з 'Hello': \(text.hasPrefix("Hello"))")

// 8. Вивести значення, що визначає чи рядок закінчується підрядком “world.”
print("8. Закінчується на 'world.': \(text.hasSuffix("world."))")

// 9. Вставити символ “-“ після 10-го символа (тобто на позицію з індексом 10)
let index10 = text.index(text.startIndex, offsetBy: 10)
text.insert("-", at: index10)
print("9. Після вставки '-': \(text)")

// 10. Замінити послідовність “Thus us” послідовністю “It is”
text = text.replacingOccurrences(of: "Thus us", with: "It is")
print("10. Після заміни 'Thus us' -> 'It is': \(text)")

// 11. Вивести 10-й та 15-й символи (індекси 9 та 14)
let char10Index = text.index(text.startIndex, offsetBy: 9)
let char15Index = text.index(text.startIndex, offsetBy: 14)
print("11. 10-й символ: '\(text[char10Index])', 15-й символ: '\(text[char15Index])'")

// 12. Вивести підрядок у межах 10-го (включно, індекс 9) та 15-го (невключно, індекс 14) символів
let substringRange = char10Index..<char15Index
let substring = String(text[substringRange])
print("12. Підрядок з 10-го включно по 15-й невключно: '\(substring)'")

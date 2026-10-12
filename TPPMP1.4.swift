import Foundation

// 1. Сутність, що містить або не містить ціле десяткове число integerNumber без значення за замовчуванням
var integerNumber: Int?

// 2. Сутність, що містить або не містить число з плаваючою крапкою decimalNumber без значення за замовчуванням
var decimalNumber: Double?

// 3. Присвоїти значення числу integerNumber
integerNumber = 15

// 4. Додати до числа integerNumber те ж значення (інкремент/додавання)
if let current = integerNumber {
    integerNumber = current + current
}

// 5. Змінити знак числа на протилежний, використовуючи unary minus (-)
if let current = integerNumber {
    integerNumber = -current
}

// 6. Присвоїти значення числу decimalNumber значенням числа integerNumber
if let intVal = integerNumber {
    decimalNumber = Double(intVal)
}

// 7. Опишіть сутність pairOfValues, що містить або не містить значення integerNumber та decimalNumber
var pairOfValues: (intVal: Int?, decimalVal: Double?)? = (integerNumber, decimalNumber)

// 8. Перевірте, чи містить сутність pairOfValues цілочислове значення та виведіть його
if let pair = pairOfValues, let intVal = pair.intVal {
    print("8. pairOfValues містить integerNumber: \(intVal)")
} else {
    print("8. integerNumber відсутнє у pairOfValues")
}

// 9. Перевірте, чи містить сутність pairOfValues значення з плаваючою крапкою та виведіть його
if let pair = pairOfValues, let decVal = pair.decimalVal {
    print("9. pairOfValues містить decimalNumber: \(decVal)")
} else {
    print("9. decimalNumber відсутнє у pairOfValues")
}

// 10. Виведіть значення числа decimalNumber використовуючи optional binding (if let)
if let finalDecimal = decimalNumber {
    print("10. decimalNumber через optional binding: \(finalDecimal)")
} else {
    print("10. decimalNumber дорівнює nil")
}

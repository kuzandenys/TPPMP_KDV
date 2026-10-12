import Foundation


// 1. Ціле десяткове число 12 з мінімально необхідною розрядною сіткою (8-bit unsigned: 0...255)
let num12: UInt8 = 12


// 2. Ціле десяткове число -100 з мінімально необхідною розрядною сіткою (8-bit signed: -128...127)
let numNeg100: Int8 = -100


// 3. Ціле шістнадцяткове число, що рівне десятковому 128 (128 у hex = 0x80)
let hexNum: UInt8 = 0x80


// 4. Мінімальне десяткове значення числа у межах 16-розрядної сітки (-32,768)
let min16Bit: Int16 = Int16.min


// 5. Максимальне десяткове значення числа у межах 64-розрядної сітки (беззнакове: 18,446,744,073,709,551,615)
let max64Bit: UInt64 = UInt64.max


// 6. Число з плаваючою крапкою 10,235.34 з мінімально необхідною розрядною сіткою (Float має 32 біти, precision ~6 знаків)
let floatNum: Float = 10235.34


// 7. Символ “а”
let charA: Character = "a"


// 8. Рядок “Hello World”
let strHelloWorld: String = "Hello World"


// 9. Істина
let isTrue: Bool = true


// 10. Число 12 та його рядкове представлення “twelve” (Кортеж / Tuple)
let numberAndName: (number: Int, name: String) = (12, "twelve")

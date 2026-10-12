// ЗАВДАННЯ №3: Робота зі словниками

// 1. Описати словник nDict з числовими рядковими ключами від "1" до "5" та значеннями англійською
var nDict = ["1": "One", "2": "Two", "3": "Three", "4": "Four", "5": "Five"]

// 2. Вивести на екран значення масиву nDict за ключем "3"
print(nDict["3"] ?? "")

// 3. Вивести на екран значення масиву nDict за індексом ключа "4"
let indexKey4 = nDict.index(forKey: "4")
if let index = indexKey4 {
    print(nDict[index].value)
}

// 4. Створити mutable словник mNDict на основі словника nDict
var mNDict = nDict

// 5. Додайте елементи 6:Seven та 7:Six до словника mNDict
mNDict["6"] = "Seven"
mNDict["7"] = "Six"

// 6. Оновити значення елементів словника mNDict, не використовуючи subscript, до наступних: 6:Six, 7:Seven, 8:Eight
mNDict.updateValue("Six", forKey: "6")
mNDict.updateValue("Seven", forKey: "7")
mNDict.updateValue("Eight", forKey: "8")

// 7. Видалити елемент за ключем "5" зі словника mNDict
mNDict.removeValue(forKey: "5")

// 8. Видалити елемент за індексом ключа "4" зі словника mNDict
if let index4 = mNDict.index(forKey: "4") {
    mNDict.remove(at: index4)
}

// 9. Визначити та вивести відстань у словнику mNDict між парами значень 1:One та 7:Seven
if let index1 = mNDict.index(forKey: "1"), let index7 = mNDict.index(forKey: "7") {
    let distanceDict = mNDict.distance(from: index1, to: index7)
    print(distanceDict)
}

// 10. Створити масив mNDictKeys, елементами якого є усі ключі словника mNDict
let mNDictKeys = Array(mNDict.keys)

// 11. Створити масив mNDictValues, елементами якого є усі значення словника mNDict
let mNDictValues = Array(mNDict.values)

// 12. Вивести на екран кількість елементів словника mNDict, а також кількість його всіх ключів та його всіх значень
print("Елементів: \(mNDict.count), Ключів: \(mNDictKeys.count), Значень: \(mNDictValues.count)")

// 13. Вивести на екран рядкове представлення словника mNDict
print(String(describing: mNDict))
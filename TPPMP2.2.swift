// ЗАВДАННЯ №2: Робота із множинами

// 1. Описати множину chSet із символів a, b, c та d
let chSet: Set<Character> = ["a", "b", "c", "d"]

// 2. Створити mutable множину mChSet на основі множини chSet
var mChSet = chSet

// 3. Вивести на екран кількість елементів множини mChSet
print(mChSet.count)

// 4. Вставити символ e в множину mChSet
mChSet.insert("e")

// 5. Створити множину srtChSet, яка є відсортованою версією множини mChSet
let srtChSet = mChSet.sorted()

// 6. Видалити з множини mChSet символ f та вивести видалений символ на екран
let removedChar = mChSet.remove("f")
print(removedChar ?? "Letter f is missing")

// 7. Видалити символ за його індексом та вивести рядкове представлення множини mChSet
if let firstIndex = mChSet.firstIndex(of: mChSet.first!) {
    mChSet.remove(at: firstIndex)
}
print(String(describing: mChSet))

// 8. Визначити та вивести відстань у множині mChSet між першим елементом та символом a
if let firstElem = mChSet.first, let indexA = mChSet.firstIndex(of: "a"), let indexFirst = mChSet.firstIndex(of: firstElem) {
    let distance = mChSet.distance(from: indexFirst, to: indexA)
    print(distance)
}

// 9. Вставити символ a в множину mChSet
mChSet.insert("a")

// 10. Описати множини aSet та bSet
let aSet: Set<AnyHashable> = ["One", "Two", "Three", 1, 2]
let bSet: Set<AnyHashable> = [1, 2, 3, "One", "Two"]

// 11. Створити множину, яка містить усі спільні елементи для множин aSet та bSet
let intersectionSet = aSet.intersection(bSet)

// 12. Створити множину унікальних елементів у aSet відносно bSet, і навпаки
let uniqueASet = aSet.subtracting(bSet)
let uniqueBSet = bSet.subtracting(aSet)

// 13. Створити множину, яка містить елементи, які не є спільними для множин aSet та bSet
let symmetricDiffSet = aSet.symmetricDifference(bSet)

// 14. Створити множину, яка об'єднує усі елементи множин aSet та bSet
let unionSet = aSet.union(bSet)

// 15. Описати множини xSet, ySet, zSet та x1Set
let xSet: Set = [2, 3, 4]
let ySet: Set = [1, 2, 3, 4, 5, 6]
let zSet: Set = [3, 4, 2]
let x1Set: Set = [5, 6, 7]

// 16. Визначити та вивести значення, чи xSet входить у ySet, а також чи ySet входить у xSet
print(xSet.isSubset(of: ySet))
print(ySet.isSubset(of: xSet))

// 17. Визначити та вивести значення, чи xSet містить ySet, а також чи ySet містить xSet
print(xSet.isSuperset(of: ySet))
print(ySet.isSuperset(of: xSet))

// 18. Визначити та вивести значення, чи множини xSet та zSet є рівними
print(xSet == zSet)

// 19. Визначити та вивести значення, чи xSet входить у zSet, але не є рівною множині zSet
print(xSet.isStrictSubset(of: zSet))

// 20. Визначити та вивести значення, чи xSet містить zSet, але не є рівною множині zSet
print(xSet.isStrictSuperset(of: zSet))
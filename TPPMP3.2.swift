import Foundation

class Operand {
    var number: Int
    var operand: Operand?
    var aConstant: Int = 10
    var sumClosure: (() -> Int)?
    var aBlock: (() -> Void)?

    init(number: Int, operand: Operand? = nil, useWeakInBlock: Bool = true) {
        self.number = number
        self.operand = operand
        print("Operand(\(number)) init")

        // Частина 2: блок без параметрів усередині init
        if useWeakInBlock {
            aBlock = { [weak self] in
                guard let self = self else { return }
                print("aBlock (weak): aConstant = \(self.aConstant)")
            }
        } else {
            // Варіант з retain cycle: self захоплюється сильно
            aBlock = {
                print("aBlock (strong cycle): aConstant = \(self.aConstant)")
            }
        }
        aBlock?()
    }

    deinit {
        print("Operand(\(number)) deinit")
    }
}

// Частина 1.3: closure для обчислення суми чисел двох Operand
let sumTwoOperands: (Operand, Operand) -> Int = { lhs, rhs in
    return lhs.number + rhs.number
}

let first = Operand(number: 5)
let second = Operand(number: 8)
print("Sum: \(sumTwoOperands(first, second))")

// Частина 1.4–1.5: closure як властивість об'єкта з [weak self] (без retain cycle)
do {
    let op1 = Operand(number: 12)
    let op2 = Operand(number: 3)
    op1.operand = op2

    op1.sumClosure = { [weak op1] in
        guard let op1 = op1 else { return 0 }
        return op1.number + (op1.operand?.number ?? 0)
    }
    print("op1 + op2 = \(op1.sumClosure?() ?? 0)")
}

// Частина 2.2–2.3: створюємо і відразу занулюємо (з [weak self] викликається deinit)
var obj1: Operand? = Operand(number: 1, useWeakInBlock: true)
obj1 = nil

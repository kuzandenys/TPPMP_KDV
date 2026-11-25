import Foundation

class Person {
    var name: String
    var child: Son?

    init(name: String) {
        self.name = name
        print("Person \(name): init")
    }

    deinit {
        print("Person \(name): deinit")
    }
}

class Son {
    var name: String
    weak var parent: Person?

    init(name: String) {
        self.name = name
        print("Son \(name): init")
    }

    deinit {
        print("Son \(name): deinit")
    }
}

// 4–5. Об'єкт на верхньому рівні 
let topPerson = Person(name: "TopLevel")

// 6. Локальний scope: при виході з do {} одразу викликається deinit
do {
    let p = Person(name: "Scoped")
    print("Inside do: \(p.name)")
}

// 7–10. Зв'язок Person <-> Son: з weak обоє викликають deinit
do {
    let parent = Person(name: "Father")
    let son = Son(name: "Boy")
    parent.child = son
    son.parent = parent
}
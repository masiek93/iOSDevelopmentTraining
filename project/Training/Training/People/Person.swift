struct Person {
    let id: Int
    let name: String
    let surname: String
    var selected: Bool
}


extension Person {
    static var testData: [Person] {
        return (0..<1000).map { index in
            Person(id: index, name: "Name \(index)", surname: "Sur \(index)", selected: false)
        }
    }
}

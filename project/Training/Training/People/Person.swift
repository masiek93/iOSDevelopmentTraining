struct Person {
    let name: String
    let surname: String
}


extension Person {
    static var testData: [Person] {
        return (0..<1000).map { index in
            Person(name: "Name \(index)", surname: "Sur \(index)")
        }
    }
}

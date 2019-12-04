import UIKit

let str = "Hello, playground"

let copy = str.appending("! ssssss")

print(copy)


struct Customer: CustomStringConvertible {
    var name: String = ""
    var surname: String = ""
    
    init(_ name: String, _ surname: String){
        self.name = name
        self.surname = surname
    }
    
    var description: String {
        return "Name: \(name) surname: \(surname)"
    }
    
}

let aCustomer = Customer("Tom", "Lallala")
print(aCustomer)

protocol CustomersProviding{
    func addCustomer(_ customer: Customer)
}


class CustomerProvider: CustomersProviding {
    var customers: [Customer] = []
    
    func addCustomer(_ customer: Customer){
        customers.append(customer)
    }
    
    func firstCustomer(with name: String) -> Customer? {
        //customers.first { $0.name == name} // shorter v
        return customers.first { $0.name == name}
//        if customers.isEmpty {
//            return nil
//        }
//
//        return customers[0]
    }
    
    func firstCustomerName(with name: String) {
        if let customer = firstCustomer(with: name){
             print("Sth " + customer.name)
        }
    }
}

extension CustomersProviding {
    func addCustomers(_ customers: [Customer]){
        
        for customer in customers{
            addCustomer(customer)
        }
    }
}


let provider = CustomerProvider()

provider.addCustomer(Customer("Tom", "Bee"))

print(aCustomer)
print(provider.customers)
//print(provider.firstCustomer(with: "Tom")?.name)
print(provider.firstCustomerName(with: "Tom"))


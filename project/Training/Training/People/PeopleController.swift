import UIKit

class PeopleController: UITableViewController {
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        tabBarItem.title = title
        if #available(iOS 13, *) {
            tabBarItem.image = UIImage(systemName: "person.fill")
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    let people = Person.testData
    
    override func numberOfSections(in tableView: UITableView) -> Int { 1 }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(PersonCell.self, forCellReuseIdentifier: PeopleControllerCell.person.rawValue)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PersonCell =
            tableView.dequeueReusableCell(withIdentifier: PeopleControllerCell.person.rawValue, for: indexPath) as! PersonCell
        
        cell.nameLabel.text = people[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = people[indexPath.row].name
        
        let alertController = UIAlertController(title: "Person selected", message: "You have selected \(name)", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default,
                                                handler: { _ in print("OK tapped")}))
        
        
        let controller = HomeViewController()
        
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .partialCurl
        
        present(controller, animated: true, completion: nil)
    }
}

enum PeopleControllerCell: String {
    case person = "Person"
}

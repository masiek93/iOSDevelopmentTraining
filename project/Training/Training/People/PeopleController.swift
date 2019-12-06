import UIKit

class PeopleController: UITableViewController {
    var people = Person.testData
    private let repository = PersonSelectedRepository()
    
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
        cell.selectedSwitch.addTarget(self, action: #selector(switchSelectionChanged(_:)), for: .valueChanged)
        cell.selectedSwitch.tag = people[indexPath.row].id
        cell.selectedSwitch.isOn = repository.isPersonSelected(cell.selectedSwitch.tag)
        // cell.selectedSwitch.accessibilityIdentifier // string tag
        
        
        return cell
    }
    
    @objc
    private func switchSelectionChanged(_ selectedSwitch: UISwitch) {
        
        if selectedSwitch.isOn {
            repository.selectPerson(selectedSwitch.tag)
        } else {
            repository.deselectPerson(selectedSwitch.tag)
        }
    }
    
    override func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
    
    
}

enum PeopleControllerCell: String {
    case person = "Person"
}

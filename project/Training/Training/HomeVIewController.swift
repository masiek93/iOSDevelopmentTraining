import UIKit

class HomeViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabControllers = [
            HomeDetailsViewController(title: "Tab 1"),
            PeopleController(title: "People"),
            HomeDetailsViewController(title: "Tab 3")
        ]
        
        viewControllers = tabControllers.map { controller in
            let navigationController =
            UINavigationController(rootViewController: controller)
        
            navigationController.tabBarItem.title = controller.tabBarItem.title
            
            return navigationController
        }
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = "Home View"
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}

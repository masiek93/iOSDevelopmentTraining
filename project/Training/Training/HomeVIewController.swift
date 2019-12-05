import UIKit

class HomeViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            HomeDetailsViewController(title: "Tab 1"),
            HomeDetailsViewController(title: "Tab 2"),
            HomeDetailsViewController(title: "Tab 3")
        ]
    }
    
    init() {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = "Tab View"
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    
}

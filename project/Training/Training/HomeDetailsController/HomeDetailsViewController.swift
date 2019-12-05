import UIKit

class HomeDetailsViewController: UIViewController {
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        tabBarItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    
    lazy var homeView = HomeDetailsView()
    
    override func loadView() {
        view = homeView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        homeView.sendButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc
    func buttonPressed(_ button: UIButton){
        navigationController?.pushViewController(NewViewController(), animated: true)
    }
    
    
    
    
}

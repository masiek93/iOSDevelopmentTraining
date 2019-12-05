import UIKit

class HomeDetailsViewController: UIViewController {
    
    init(title: String){
        super.init(nibName: nil, bundle: nil)
        tabBarItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }

    
    lazy var detailsView = HomeDetailsView()
    
    override func loadView() {
        view = detailsView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let buttonController = ButtonController { NewViewController() }
        
        embed(buttonController, inside: detailsView.sendButtonContainer)
    }
    
    
    
    
    
}

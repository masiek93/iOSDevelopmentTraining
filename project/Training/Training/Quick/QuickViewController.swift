import UIKit

class Enviroment {
    let navigationController = UINavigationController()
    let now: () -> Date = Date.init
    
    static let shared: Enviroment = Enviroment()
    
    lazy var pushController: (UIViewController, Bool) -> Void = {[weak self] controller, animated in
        self?.navigationController.pushViewController(controller, animated: animated)
    }
}

class QuickViewController: UIViewController {
    lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Untapped", for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc
    private func buttonPressed(_: UIButton) {
        button.setTitle("Tapped", for: .normal)
    }
}

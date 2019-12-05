import UIKit

class ButtonController: UIViewController {
    init(controllerFactory: @escaping () -> UIViewController){
        self.controllerFactory = controllerFactory
        super.init(nibName: nil, bundle: nil)
        tabBarItem.title = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
    
    var controllerFactory: (() -> UIViewController)?
    
    
    lazy var button: UIButton = {
            let button = UIButton(frame: .zero)
            button.setTitle("Send", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = .white
            return button
    }()
    
    override func loadView() {
        view = button
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc
    func buttonPressed(_ button: UIButton){
        guard let controller = controllerFactory?() else {
            return
        }
        
        navigationController?.pushViewController(controller, animated: true)
    }
    
}

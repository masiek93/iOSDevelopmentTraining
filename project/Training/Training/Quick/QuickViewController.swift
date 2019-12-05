import UIKit

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

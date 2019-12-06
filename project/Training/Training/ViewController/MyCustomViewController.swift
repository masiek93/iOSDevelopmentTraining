import KeychainAccess
import UIKit

class MyCustomViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        navigationItem.title = "1st View"
    }
    
    required init?(coder: NSCoder) {
        return nil
        
    }
    
    lazy var aView = MyCustomView()
    
    private static let passwordKey = "UserPassword"
    
    override func loadView() {
        view = aView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aView.sendButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        aView.passwordTextField.text = keychain[MyCustomViewController.passwordKey]
        aView.passwordTextField.addTarget(self, action: #selector(passwordChanged(_:)), for: .editingChanged)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    @objc
    func buttonPressed(_ button: UIButton){
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
    
    @objc
    func passwordChanged(_ textField: UITextField){
        keychain[MyCustomViewController.passwordKey] = textField.text
    }
    
    private var keychain: Keychain {
        guard let bundleID = Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String else {
            fatalError("You shouln't use this controller withoun an app!")
        }
        return Keychain(service: "\(bundleID).password")
            .accessibility(.whenUnlockedThisDeviceOnly)
    }
}


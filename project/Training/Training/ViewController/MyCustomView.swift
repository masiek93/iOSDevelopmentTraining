import UIKit

class MyCustomView: UIView {
    
    let textField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.placeholder = "Enter email"
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField(frame: .zero)
        passwordTextField.placeholder = "Enter Password"
        passwordTextField.isSecureTextEntry = true
        return passwordTextField
    }()
    
    let sendButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Send", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        
        addSubviews()
        setUpLayout()
        
        
        
    }
    
    private func addSubviews(){
        addSubview(textField)
        addSubview(passwordTextField)
        addSubview(sendButton)
    }
    
    private func setUpLayout(){
        backgroundColor = .yellow
        
        
        textField.horizontalAnchors == horizontalAnchors + 20
        textField.centerAnchors == centerAnchors
        textField.heightAnchor == 60
        
        
        passwordTextField.heightAnchor == 60
        passwordTextField.horizontalAnchors == horizontalAnchors + 20
        passwordTextField.topAnchor == textField.bottomAnchor + 30
        
        sendButton.sizeAnchors == CGSize(width: 100, height: 30)
        sendButton.topAnchor == passwordTextField.bottomAnchor + 20
        sendButton.centerXAnchor == passwordTextField.centerXAnchor
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}

import UIKit

class HomeDetailsView: UIView {
    

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
        addSubview(sendButton)
    }
    
    private func setUpLayout(){
        backgroundColor = .yellow
        
        
        sendButton.sizeAnchors == CGSize(width: 100, height: 30)
        sendButton.bottomAnchor == safeAreaLayoutGuide.bottomAnchor
        sendButton.centerXAnchor == centerXAnchor
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}

import UIKit

class HomeDetailsView: UIView {
    init() {
        super.init(frame: .zero)
        
        addSubviews()
        setUpLayout()
        
    }
    
    let sendButtonContainer = UIView(frame: .zero)
    
    private func addSubviews(){
        addSubview(sendButtonContainer)
    }
    
    private func setUpLayout(){
        backgroundColor = .yellow
        
        
        sendButtonContainer.sizeAnchors == CGSize(width: 100, height: 30)
        sendButtonContainer.bottomAnchor == safeAreaLayoutGuide.bottomAnchor
        sendButtonContainer.centerXAnchor == centerXAnchor
    }
    
    required init?(coder aDecoder: NSCoder) {
        return nil
    }
}

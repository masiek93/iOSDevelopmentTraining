import Anchorage
import UIKit

extension UIViewController {
    
    public func embed(_ childController: UIViewController, inside targetView: UIView) {
        addChild(childController)
        targetView.addSubview(childController.view)
        childController.view.edgeAnchors == targetView.edgeAnchors
        childController.didMove(toParent: self)
    }
    
    public func unembed(_ childController: UIViewController) {
        childController.willMove(toParent: nil)
        childController.view.removeFromSuperview()
        childController.removeFromParent()
    }
    
}

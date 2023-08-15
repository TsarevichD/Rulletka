//
//  UIViewHelper.swift

import UIKit

extension UIView {
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    func blink() {
         self.alpha = 0.0;
         UIView.animate(withDuration: 0.1, //Time duration you want,
             delay: 0.0,
             options: [.curveEaseInOut, .autoreverse, .repeat],
             animations: { [weak self] in self?.alpha = 1.0 },
             completion: { [weak self] _ in self?.alpha = 0.0 })
     }
    
    func stopBlink() {
            layer.removeAllAnimations()
            alpha = 1
        }
}

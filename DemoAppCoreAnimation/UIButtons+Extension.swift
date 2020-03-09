//
//  UIButtons+Extension.swift
//  DemoAppCoreAnimation
//
//  Created by Евгений Васильев on 09.03.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func shake() {
        let shake = CABasicAnimation(keyPath: "position")
        shake.duration = 0.2
        shake.repeatCount = 2
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 10, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 10, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
    }
    
    func applyShadows() {
        self.layer.shadowColor = Colors.darkBlue.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 5)    // смещение под углом
        self.layer.shadowOpacity = 1                             // прозрачность тени
        self.layer.shadowRadius = 10                             // рассеянность (чёткость границ)
    }
    
    func applyDesign() {
        self.titleLabel?.font = UIFont(name: "Apple SD Gothic Neo", size: 23)
        self.layer.cornerRadius = 8
    }
}

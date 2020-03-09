//
//  UIView+Extension.swift
//  DemoAppCoreAnimation
//
//  Created by Евгений Васильев on 09.03.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.1, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        // 1.0, 1.0
        // 0.0, 0.0
        // insertSublayer - так как мы хотим знать точные координаты добавления слоя
        layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

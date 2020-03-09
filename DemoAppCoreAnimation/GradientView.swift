//
//  GradientView.swift
//  DemoAppCoreAnimation
//
//  Created by Евгений Васильев on 09.03.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//


import UIKit

@IBDesignable
class GradientView: UIView {
    
    @IBInspectable var FirstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var SecondColor: UIColor = UIColor.clear {
       // наблюдатель свойства
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [FirstColor.cgColor, SecondColor.cgColor]
        
        
    }
    
}

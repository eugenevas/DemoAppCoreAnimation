//
//  AccountViewController.swift
//  DemoAppCoreAnimation
//
//  Created by Евгений Васильев on 09.03.2020.
//  Copyright © 2020 Eugene Vasilyev. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var login: String!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        
    //guard let login = login else { return }
        welcomeLabel.text = "You are welcome!"
}

}

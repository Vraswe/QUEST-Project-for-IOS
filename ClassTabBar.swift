//
//  ClassTabBar.swift
//  QUEST
//
//  Created by Паша on 24/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class ClassTabBar: UITabBarController {

    var Number_of_Section: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let constNumber = Number_of_Section else {return}
        self.selectedIndex = constNumber
        
    }
    


}

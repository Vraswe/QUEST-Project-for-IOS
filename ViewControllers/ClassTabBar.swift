//
//  ClassTabBar.swift
//  QUEST
//
//  Created by Паша on 24/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit
import Firebase

var removedItem: UIViewController?

class ClassTabBar: UITabBarController{

    var Number_of_Section: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        Auth.auth().addStateDidChangeListener({ [weak self] (auth, user) in
            guard let count = self?.viewControllers?.count else {return}
            guard count > 4 else {return}
            if user != nil {
                removedItem = self?.viewControllers?.remove(at: 2)
            } else {
                removedItem = self?.viewControllers?.remove(at: 3)
            }
        })
        
    }
    


}

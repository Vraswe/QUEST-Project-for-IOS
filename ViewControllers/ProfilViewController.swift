//
//  ProfilViewController.swift
//  QUEST
//
//  Created by Павел on 15/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit
import Firebase

class ProfilViewController: UIViewController {
    @IBOutlet var rectangels: [UIImageView]!
    
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for elem in rectangels {
            elem.layer.cornerRadius = 10
            elem.clipsToBounds = true
        }
        
        
        avatar.layer.borderWidth = 5
        avatar.layer.borderColor = #colorLiteral(red: 0.3050524592, green: 0.3241906762, blue: 0.3947377801, alpha: 1)
        avatar.layer.cornerRadius = 10
        avatar.clipsToBounds = true
        
        editButton.layer.cornerRadius = editButton.frame.width / 2
        exitButton.layer.cornerRadius = editButton.frame.width / 2
    }
    
}

extension ProfilViewController {
    @IBAction func exitButtonTapped(_ sender: UIButton) {
        //Log Out
        do {
        try Auth.auth().signOut()
        } catch {
            print ("Ошибка")
            return
        }
        tabBarController?.viewControllers?.insert(removedItem!, at: 3)
        removedItem = tabBarController?.viewControllers?.remove(at: 2)
//        dismiss(animated: true, completion: nil)
    }
}

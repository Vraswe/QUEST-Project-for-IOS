//
//  RulesView.swift
//  QUEST
//
//  Created by Павел on 25/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class RulesView: UIViewController {

    //MARK: - All outlets
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var rule1Label: UILabel!
    @IBOutlet weak var rule2Label: UILabel!
    @IBOutlet weak var rule3Label: UILabel!
    @IBOutlet weak var rule4Label: UILabel!
    @IBOutlet weak var rule5Label: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    

}

// MARK: - Choosing Class
extension RulesView {
    func initView () {
        guard let rule = universalQuest?.thisRules else {return}
        switch rule.type {
        case .threeRule:
            break
            
        case .fourRule:
            background.image = UIImage(named: rule.backgroundImage)
            descriptionLabel.text = rule.description
            rule1Label.text = rule.rule1
            rule2Label.text = rule.rule2
            rule3Label.text = rule.rule3
            rule4Label.text = rule.rule4
            rule5Label.text = rule.rule5
            
        case .fiveRule:
            break
        }
    }
}

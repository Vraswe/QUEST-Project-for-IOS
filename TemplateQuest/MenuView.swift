//
//  MenuView.swift
//  QUEST
//
//  Created by Павел on 25/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class MenuView: UIViewController {

    // MARK: - All outlets
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var titleQuest: UINavigationItem!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    
    var currentButton: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    
}


// MARK: - Choosing Class
extension MenuView {
    func initView () {
        guard let menu = universalQuest?.thisMenu else {return}
        switch menu.type {
        case .square:
            background.image = UIImage(named: menu.backgroundImage) // MARK: - Need Solving!
            titleQuest.title = menu.nameQuest
            label1.text = menu.firstLabel
            label2.text = menu.secondLabel
            label3.text = menu.thirdLabel
        default:
            break
        }
    }
}

// MARK: - Action and send information
extension MenuView {
@IBAction func task1Button(_ sender: UIButton) {
    currentButton = buttons.firstIndex(of: sender)
    performSegue(withIdentifier: "SegueAtTask", sender: nil)
}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? TasksView else {return}
        guard let task = universalQuest?.thisTasks else {return}
        guard let currentButton = currentButton else {return}
        guard currentButton < task.count else {return}
        dvc.task = task[currentButton]
    }
}

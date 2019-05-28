//
//  TasksView.swift
//  QUEST
//
//  Created by Павел on 25/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class TasksView: UIViewController {

    var task: tasks?
    
    let timeConst = 900
    var timer = Timer()
    let Answer = "уд"
    var counter: Int?

    
    // MARK: - All outlets
    @IBOutlet weak var titleTask: UINavigationItem!
    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var answerField: UITextField!
    @IBOutlet weak var wrongLabel: UILabel!
    
    // Class Number 1
    @IBOutlet weak var classNumber1: UIStackView!
    @IBOutlet weak var imageC1: UIImageView!
    @IBOutlet weak var descriptionLabelC1: UILabel!
    
    // Class Number 2
    @IBOutlet weak var classNumber2: UIView!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var descriptionLabelC2: UILabel!
    @IBOutlet weak var podskazkaLabel: UILabel!
    
    // Class Number 3
    @IBOutlet weak var classNumber3: UIScrollView!
    @IBOutlet weak var descriptionLabelC3: UILabel!
    @IBOutlet weak var itSelfTask: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideAll()
        initView()
        
    }
    
    func initView () {
        guard let currentTask = task else {return}
        switch currentTask.type {
        case .oneImage:
            initclass1(currentTask: currentTask)
        case .someImages:
            initclass2(currentTask: currentTask)
        case .onlyText:
            initclass3(currentTask: currentTask)
        }
        
        // Timer init
        timerLabel.text = NSString(format: "%0.2d:%0.2d", timeConst/60,timeConst%60) as String
        
        counter = timeConst
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeraction), userInfo: nil, repeats: true)
    }
    
    func hideAll () {
        // Hide all classes
        classNumber1.isHidden = true
        classNumber2.isHidden = true
        classNumber3.isHidden = true
        
        answerButton.isHidden = true
        timerLabel.isHidden = true
        wrongLabel.alpha = 0
    }
    
    func initclass1 (currentTask: tasks) {
        classNumber1.isHidden = false
        answerButton.isHidden = false
        timerLabel.isHidden = false
        
        guard let mainImage = currentTask.mainImage else {return}
        imageC1.image = UIImage(named: mainImage)
        titleTask.title = currentTask.target
        descriptionLabelC1.text = currentTask.description
    }
    
    func initclass2 (currentTask: tasks) {
        classNumber2.isHidden = false
        answerButton.isHidden = false
        timerLabel.isHidden = false
        
        guard let images = currentTask.images else {return}
        image1.image = UIImage(named: images[0])
        image2.image = UIImage(named: images[1])
        image3.image = UIImage(named: images[2])
        
        image3.layer.borderWidth = CGFloat(10)
        image3.layer.borderColor = UIColor.white.cgColor
        
        titleTask.title = currentTask.target
        descriptionLabelC2.text = currentTask.description
        podskazkaLabel.text = currentTask.podskazka
    }
    func initclass3 (currentTask: tasks) {
        classNumber3.isHidden = false
        answerButton.isHidden = false
        timerLabel.isHidden = false
        
        titleTask.title = currentTask.target
        descriptionLabelC3.text = currentTask.description
        itSelfTask.text = currentTask.itSelfTask
    }

}

// MARK: - Timer
extension TasksView {
    @IBAction func AnswerButtonIsPressed(_ sender: Any) {
        guard let wrongAns = answerField.text else {return}
        if wrongAns != Answer {
            UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: { [weak self] in
                self?.wrongLabel.alpha = 1
            }) { [weak self] complete in
                self?.wrongLabel.alpha = 0
            }
        } else {
            timer.invalidate()
            answerButton.isHidden = true
            answerField.isHidden = true
            let alert2 = UIAlertController(title: "Правильный ответ!", message: "Это было непросто, да?!", preferredStyle: .alert)
            let alertAction2 = UIAlertAction(title: "В меню", style: .default) { _ in
            self.navigationController?.popViewController(animated: true)
            }
            alert2.addAction(alertAction2)
            present(alert2, animated: true, completion: nil)
        }
        
    }
    
    @objc func timeraction () {
        guard counter! > 0 else {
            timer.invalidate()
            self.navigationController?.popViewController(animated: true)
            return
        }
        counter! -= 1
        timerLabel.text = NSString(format: "%0.2d:%0.2d", counter!/60,counter!%60) as String
    }
}

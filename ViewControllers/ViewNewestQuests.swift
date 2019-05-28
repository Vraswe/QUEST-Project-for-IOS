//
//  ViewNewestQuests.swift
//  QUEST
//
//  Created by Паша on 27/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class ViewNewestQuests: UIViewController {
    @IBOutlet weak var ImageImg: UIImageView!
    @IBOutlet weak var NAME: UILabel!
    @IBOutlet weak var Info: UILabel!
    @IBOutlet weak var ControlPage: UIPageControl!
    
    var Action: Int?
    var currentPage = 0
    var numberOfPages = 0
    var name = ""
    var ImageI = ""
    var Information = ""
    var identify = 0
    var Desciption = ""

    
    @IBAction func Q(_ sender: Any) {Action = 1}
    @IBAction func Karta(_ sender: Any) {Action = 2}
    @IBAction func SMS(_ sender: Any) {Action = 3}
    @IBAction func person(_ sender: Any) {Action = 4}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? ClassTabBar else {return}
        guard let ProveAction = Action else {return}
        dvc.Number_of_Section = ProveAction - 1
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageImg.image = UIImage(named: ImageI)
        ImageImg.image?.accessibilityIdentifier = String(identify)
        
        // Tapping Image View
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        ImageImg.isUserInteractionEnabled = true
        ImageImg.addGestureRecognizer(tapGestureRecognizer)
        
        //
        
        
        
        switch name.count {
        case 8..<11:
            NAME.font = UIFont(name: "Helvetica Neue", size: 58)
        case 11..<14:
            NAME.font = UIFont(name: "Helvetica Neue", size: 44)
        case 14..<30:
            NAME.font = UIFont(name: "Helvetica Neue", size: 38)
        default:
            print ("Ok")
        }
        NAME.text = name
        Info.text = Information
        ControlPage.numberOfPages = numberOfPages
        ControlPage.currentPage = currentPage
        

    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print (String(tappedImage.image?.accessibilityIdentifier ?? "nil"))
        // Your action
        for NeedStruct in questsList {
            if String(NeedStruct.identify) == String(tappedImage.image?.accessibilityIdentifier ?? "nil") {
                
                // MARK: - Present View Controller Info Quest
                let vc = storyboard?.instantiateViewController(withIdentifier: "InfoQuestViewController") as! DescriptionViewController
                vc.ourQuest = NeedStruct
                self.present(vc, animated: true, completion: nil)
            }
        }
    }
    
    
   
    
    
}

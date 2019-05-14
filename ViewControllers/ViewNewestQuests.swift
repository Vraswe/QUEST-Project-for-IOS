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
        NAME.text = name
        Info.text = Information
        ControlPage.numberOfPages = numberOfPages
        ControlPage.currentPage = currentPage
        

    }
    
    
    
    
   
    
    
}

//
//  DescribsionViewController.swift
//  QUEST
//
//  Created by Павел on 15/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var timeLengthLabel: UILabel!
    @IBOutlet weak var reitLabel: UILabel!
    @IBOutlet weak var prizLabel: UILabel!
    @IBOutlet weak var Description: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    
    @IBAction func arrowBlack(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    var ourQuest = (image: "",
                    NAME:  "",
                    Info: "",
                    imageMini: "",
                    reit: Double(0),
                    hard: 0,
                    level_l: "",
                    prize_l: "",
                    time_l: "",
                    pictures: ["","",""],
                    topBack: "",
                    identify: 0,
                    Describtion: "",
                    bodyOfQuest: template()
                        
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLabels()
    }
}

// func of initing Labels
extension DescriptionViewController {
    func initLabels () {
        topImage.image = UIImage(named: ourQuest.topBack)
        nameLabel.text = ourQuest.NAME
        //genreLabel.text =
        timeLengthLabel.text = ourQuest.time_l
        reitLabel.text = String(ourQuest.reit)
        prizLabel.text = ourQuest.prize_l
        Description.text = ourQuest.Describtion
        levelLabel.text = String(ourQuest.hard)
        
        // To give in universalQuest current quest
        universalQuest = ourQuest.bodyOfQuest
    }
}


// MARK: - Set items for collection view
extension DescriptionViewController {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! imageCell
        
        cell.image.image = UIImage(named: ourQuest.pictures[indexPath.row])
        cell.image.layer.cornerRadius = 10
        cell.image.clipsToBounds = true
        
        return cell
}
}

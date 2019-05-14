////
////  Menu.swift
////  QUEST
////
////  Created by Паша on 24/04/2019.
////  Copyright © 2019 Паша. All rights reserved.
////
//
import UIKit

class Menu: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var AllButton: UIButton!
    @IBOutlet weak var ZabroshkaButton: UIButton!
    @IBOutlet weak var PictureButton: UIButton!
    @IBOutlet weak var HistoryButton: UIButton!
    @IBOutlet weak var StelsButton: UIButton!
    
}

// MARK: - Genre Buttons
extension Menu {
    @IBAction func all(_ sender: UIButton) {
        questsList = News
        self.collectionView.reloadData()
        hiddenAll()
        AllButton.alpha = CGFloat(0.7)
    }
    @IBAction func zabroshka(_ sender: UIButton) {
        questsList = Zabroshka
        self.collectionView.reloadData()
        hiddenAll()
        ZabroshkaButton.alpha = CGFloat(0.7)
    }
    @IBAction func picture(_ sender: UIButton) {
        questsList = Panorama
        self.collectionView.reloadData()
        hiddenAll()
        PictureButton.alpha = CGFloat(0.7)
    }
    @IBAction func history(_ sender: UIButton) {
        questsList = Advanture
        self.collectionView.reloadData()
        hiddenAll()
        HistoryButton.alpha = CGFloat(0.7)
    }
    @IBAction func stels(_ sender: UIButton) {
        questsList = Night
        self.collectionView.reloadData()
        hiddenAll()
        StelsButton.alpha = CGFloat(0.7)
    }
    
    // Lighting by pressing
    func hiddenAll () {
        AllButton.alpha = CGFloat(1)
        ZabroshkaButton.alpha = CGFloat(1)
        PictureButton.alpha = CGFloat(1)
        HistoryButton.alpha = CGFloat(1)
        StelsButton.alpha = CGFloat(1)
    }
    
    
}


// MARK: - Collection View for quest tape
extension Menu {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questsList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.ImageView.image = UIImage(named: questsList[indexPath.row].imageMini)
        cell.ImageView.image?.accessibilityIdentifier = questsList[indexPath.row].imageMini
        cell.name.text = String(questsList[indexPath.row].NAME)
        cell.reit.text = String(questsList[indexPath.row].reit)
        cell.hard.text = String(questsList[indexPath.row].hard)
        cell.str_hard.text = "Уровень: \(questsList[indexPath.row].level_l)"
        cell.str_prize.text = "Приз: \(questsList[indexPath.row].prize_l)"
        cell.str_time.text = "Время: \(questsList[indexPath.row].time_l)"
        
        // Tapping Image View
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        cell.ImageView.isUserInteractionEnabled = true
        cell.ImageView.addGestureRecognizer(tapGestureRecognizer)
        
        //
        if 4...5 ~= questsList[indexPath.row].hard {
            cell.imageHard.image = UIImage(named: (reiting["blue"]?.Hard)!)
            cell.imageReit.image = UIImage(named: (reiting["blue"]?.Reit)!)
        } else if 1...3 ~= questsList[indexPath.row].hard {
            cell.imageHard.image = UIImage(named: (reiting["orange"]?.Hard)!)
            cell.imageReit.image = UIImage(named: (reiting["orange"]?.Reit)!)
        }
        
        return cell
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print (String(tappedImage.image?.accessibilityIdentifier ?? "nil"))
        // Your action
    }
}



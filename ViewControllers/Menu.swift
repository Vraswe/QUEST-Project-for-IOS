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
    
    
    @IBAction func izbranoe(_ sender: UIButton) {
        questsList = News
      self.collectionView.reloadData()
    }
    @IBAction func zabroshka(_ sender: UIButton) {
        questsList = Zabroshka
        self.collectionView.reloadData()
    }
    @IBAction func panorama(_ sender: UIButton) {
        questsList = Panorama
        self.collectionView.reloadData()
    }
    @IBAction func advanture(_ sender: UIButton) {
        questsList = Advanture
        self.collectionView.reloadData()
    }
    @IBAction func night(_ sender: UIButton) {
        questsList = Night
        self.collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questsList.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        
        cell.ImageView.image = UIImage(named: questsList[indexPath.row].imageMini)
        cell.name.text = String(questsList[indexPath.row].NAME)
        cell.reit.text = String(questsList[indexPath.row].reit)
        cell.hard.text = String(questsList[indexPath.row].hard)
        cell.str_hard.text = "Уровень: \(questsList[indexPath.row].level_l)"
        cell.str_prize.text = "Приз: \(questsList[indexPath.row].prize_l)"
        cell.str_time.text = "Время: \(questsList[indexPath.row].time_l)"
        
        if 4...5 ~= questsList[indexPath.row].hard {
            cell.imageHard.image = UIImage(named: (reiting["blue"]?.Hard)!)
            cell.imageReit.image = UIImage(named: (reiting["blue"]?.Reit)!)
        } else if 1...3 ~= questsList[indexPath.row].hard {
            cell.imageHard.image = UIImage(named: (reiting["orange"]?.Hard)!)
            cell.imageReit.image = UIImage(named: (reiting["orange"]?.Reit)!)
        }
        
        return cell
    }
    
}


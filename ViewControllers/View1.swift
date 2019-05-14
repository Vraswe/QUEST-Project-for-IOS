//
//  View1.swift
//  QUEST
//
//  Created by Паша on 24/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit


class View1: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    var Action: Int?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return questsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellImage", for: indexPath) as! CollectionViewCellImage
        
        cell.ImageImg.image = UIImage(named: questsList[indexPath.row].image)
        cell.NAME.text = questsList[indexPath.row].NAME
        cell.Info.text = questsList[indexPath.row].Info
        
        return cell
    }
    
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

    }

}

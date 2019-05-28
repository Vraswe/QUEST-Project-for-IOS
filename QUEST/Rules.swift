//
//  Rules.swift
//  QUEST
//
//  Created by Паша on 20/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit
import CoreData

class Rules: UIViewController {
    @IBOutlet weak var imageback: UIImageView!
    @IBOutlet weak var imagefront: UIImageView!
    @IBOutlet weak var B1O: UIButton!
    @IBOutlet weak var B2O: UIButton!
    @IBOutlet weak var B3O: UIButton!
    @IBOutlet weak var B4O: UIButton!
    @IBOutlet weak var B5O: UIButton!
    @IBOutlet weak var B6O: UIButton!
    @IBOutlet weak var B7O: UIButton!
    @IBOutlet weak var B8O: UIButton!
    @IBOutlet weak var B9O: UIButton!
    
   // var a: Task = false
   // var Items: [Task] = Array<Task.tasktodo>(repeating: false, count: 3)

   var Items: [Task] = []
    
    @IBAction func B1(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 1)
        B1O.isHidden = true
    }
    @IBAction func B2(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 2)
        B2O.isHidden = true
    }
    @IBAction func B3(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 3)
        B3O.isHidden = true
        delete()
        
    }
    @IBAction func B4(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 4)
        B4O.isHidden = true
    }
    @IBAction func B5(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 5)
        B5O.isHidden = true
    }
    @IBAction func B6(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 6)
        B6O.isHidden = true
    }
    @IBAction func B7(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 7)
        B7O.isHidden = true
    }
    @IBAction func B8(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 8)
        B8O.isHidden = true
    }
    @IBAction func B9(_ sender: Any) {
        self.saveTask(tasktodo: true, num: 9)
        B9O.isHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageback.isHidden = true
        imagefront.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext

        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()

        do {
            Items = try context.fetch(fetchRequest)
            print ("Подгружаем")
        } catch {
            print (error.localizedDescription)
        }
        print (Items.count)
        if (B1O.isHidden == true && B2O.isHidden == true && B3O.isHidden == true && B4O.isHidden == true && B5O.isHidden == true && B6O.isHidden == true && B7O.isHidden == true && B8O.isHidden == true && B9O.isHidden == true) {
            imageback.isHidden = false
            imagefront.isHidden = false
        }
        
//        for val in Items {
//            if val.num == 1 && val.tasktodo == true {B1O.isHidden = true}
//            if val.num == 2 && val.tasktodo == true {B2O.isHidden = true}
//            if val.num == 3 && val.tasktodo == true {B3O.isHidden = true}
//            if val.num == 4 && val.tasktodo == true {B4O.isHidden = true}
//            if val.num == 5 && val.tasktodo == true {B5O.isHidden = true}
//            if val.num == 6 && val.tasktodo == true {B6O.isHidden = true}
//            if val.num == 7 && val.tasktodo == true {B7O.isHidden = true}
//            if val.num == 8 && val.tasktodo == true {B8O.isHidden = true}
//            if val.num == 9 && val.tasktodo == true {B9O.isHidden = true}
//        }
//        delete()
   }

    func saveTask (tasktodo: Bool, num: Int) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Task", in: context)
        
        let TaskObj = NSManagedObject(entity: entity!, insertInto: context) as! Task
        TaskObj.tasktodo = tasktodo
        TaskObj.num = Int32(num)
        
        do {
            try context.save()
            Items.append(TaskObj)
        } catch {
            print (error.localizedDescription)
        }
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    func delete () {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        for i in 0..<Items.count {
            guard let deleteT = Items[i] as Task? else {return}
            print ("88")
            context.delete(deleteT)
            print (Items.count)
        }
    }
}

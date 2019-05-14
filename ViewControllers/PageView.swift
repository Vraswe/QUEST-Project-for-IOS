//
//  PageView.swift
//  QUEST
//
//  Created by Паша on 27/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import UIKit

class PageView: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let ViewController = showViewControllerAtIndex(0) {
            setViewControllers([ViewController], direction: .forward, animated: true, completion: nil)
        }
    }
    
    func showViewControllerAtIndex (_ index: Int) -> ViewNewestQuests? {
        guard index >= 0 else {return nil}
        guard index < questsList.count else {return nil}
        guard let ViewController = storyboard?.instantiateViewController(withIdentifier: "NewestQuest") as? ViewNewestQuests else {return nil}
        
        ViewController.currentPage = index
        ViewController.numberOfPages = questsList.count
        ViewController.ImageI = questsList[index].image
        ViewController.name = questsList[index].NAME
        ViewController.Information = questsList[index].Info
        
        return ViewController
    }
    
}

extension PageView: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        var pageCurrent = (viewController as! ViewNewestQuests).currentPage
        pageCurrent -= 1
        
        return showViewControllerAtIndex(pageCurrent)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        var pageCurrent = (viewController as! ViewNewestQuests).currentPage
        pageCurrent += 1
        
        return showViewControllerAtIndex(pageCurrent)
    }
    
    
}

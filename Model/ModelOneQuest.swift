//
//  ModelOneQuest.swift
//  QUEST
//
//  Created by Павел on 25/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import Foundation

struct template {
    var thisRules: rules?
    var thisMenu: menu?
    var thisTasks: [tasks]?
}

struct rules {
    var backgroundImage: String
    var description: String
    var type: TypeOfRules
    var rule1: String?
    var rule2: String?
    var rule3: String?
    var rule4: String?
    var rule5: String?
}

struct menu {
    var backgroundImage: String
    var nameQuest: String
    var type: TypeOfMenu
    var firstLabel: String?
    var secondLabel: String?
    var thirdLabel: String?
    
}

struct tasks {
    var target: String
    var description: String
    var itSelfTask: String?
    var type: TypeOfTask
    var mainImage: String?
    var images: [String]?
    var answer: String
    var podskazka: String?
}

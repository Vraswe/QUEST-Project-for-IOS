//
//  File.swift
//  QUEST
//
//  Created by Паша on 26/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import Foundation



var News = [(image: "Бауманка",
                 NAME:  "Тайна Баумана",
                 Info: "Путешествие по закаулкам университета\nЖанр: ночью",
                 imageMini: "Бауманка mini",
                 reit: Double(8),
                 hard: 3,
                 level_l: "средне",
                 prize_l: "да",
                 time_l: "2,5 часа")]

let Zabroshka  = [(image: "Бункер Z312",
                   NAME:  "Бункер Z312",
                   Info: "Жутко интересно!\nЖанр: заброшка",
                   imageMini: "Бункер mini",
                   reit: Double(9),
                   hard: 4,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "50 мин"),
                  (image: "Darknet",
                   NAME:  "Darknet",
                   Info: "Испытайте нереальные впечатления при поиске посылки с ДАРКНЕТ!\nЖанр: заброшка",
                   imageMini: "Darknet mini",
                   reit: Double(9),
                   hard: 4,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "1 ч 20 мин")]

let Panorama = [(image: "MosCity",
                 NAME:  "MosCity",
                 Info: "Самые красочные виды\nЖанр: панорама",
                 imageMini: "MosCity mini",
                 reit: 8.5,
                 hard: 2,
                 level_l: "легко",
                 prize_l: "нет",
                 time_l: "1,5 часа"),
                (image: "Marvel",
                 NAME:  "Marvel",
                 Info: "Кино - это тоже квест!\nЖанр: панорама",
                 imageMini: "Marvel mini",
                 reit: 10,
                 hard: 2,
                 level_l: "легко",
                 prize_l: "да",
                 time_l: "30 мин")]

let Advanture = [(image: "ВДНХ",
                  NAME:  "ВДНХ",
                  Info: "Самые загадочные места\nЖанр: приключение",
                  imageMini: "ВДНХ mini",
                  reit: 7.5,
                  hard: 5,
                  level_l: "сложно",
                  prize_l: "да",
                  time_l: "2 часа"),
                 (image: "Mars",
                  NAME:  "MARS",
                  Info: "Есть ли жизнь на марсе?!\nЖанр: приключение",
                  imageMini: "Mars mini",
                  reit: 8.2,
                  hard: 3,
                  level_l: "средне",
                  prize_l: "да",
                  time_l: "2 часа"),
                 (image: "Jungle",
                  NAME:  "Джунгли",
                  Info: "Будете прыгать, как на лиане!\nЖанр: приключение",
                  imageMini: "Jungle mini",
                  reit: 9.5,
                  hard: 4,
                  level_l: "сложно",
                  prize_l: "да",
                  time_l: "1 час")]

let Night =      [(image: "Бауманка",
                   NAME:  "Тайна Баумана",
                   Info: "Путешествие по закаулкам университета\nЖанр: ночью",
                   imageMini: "Бауманка mini",
                   reit: Double(8),
                   hard: 3,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "2,5 часа")]

var questsList = Advanture

//let questsList = [(image: "ВДНХ",
//                   NAME:  "ВДНХ",
//                   Info: "Самые загадочные места\nЖанр: приключение",
//                   imageMini: "ВДНХ mini",
//                   reit: 7.5,
//                   hard: 5,
//                   level_l: "сложно",
//                   prize_l: "да",
//                   time_l: "2 часа"),
//                  (image: "MosCity",
//                   NAME:  "MosCity",
//                   Info: "Самые красочные виды\nЖанр: панорама",
//                   imageMini: "MosCity mini",
//                   reit: 8.5,
//                   hard: 2,
//                   level_l: "легко",
//                   prize_l: "нет",
//                   time_l: "1,5 часа"),
//                  (image: "Jungle",
//                   NAME:  "Джунгли",
//                   Info: "Уровень сложности: 4\nЖанр: приключение",
//                   imageMini: "Jungle mini",
//                   reit: 9.5,
//                   hard: 4,
//                   level_l: "сложно",
//                   prize_l: "да",
//                   time_l: "1 час")]

var reiting = ["blue" : (Hard: "Blue Сложность",
               Reit: "Blue Рейтинг"),
               "orange" : (Hard: "Orange Сложность",
              Reit: "Orange Рейтинг")]

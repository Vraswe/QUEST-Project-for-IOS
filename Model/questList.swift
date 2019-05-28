//
//  File.swift
//  QUEST
//
//  Created by Паша on 26/04/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import Foundation

//struct quest {
//    let image: String = ""
//    let NAME:  String = ""
//    let Info: String = ""
//    let imageMini: String = ""
//    let reit: Double = 0
//    let hard: Int = 0
//    let level_l: String = ""
//    let prize_l: String = ""
//    let time_l: String = ""
//    let pictures: [String] = ["","",""]
//    let identify: Int = 0,
//    let Describtion: String = ""
//    
//    
//}


let Zabroshka = [(image: "Бункер Z312",
                   NAME:  "Бункер Z312",
                   Info: "Жутко интересно!\nЖанр: заброшка",
                   imageMini: "Бункер mini",
                   reit: Double(9),
                   hard: 4,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "50 мин",
                   pictures: ["bunker1","bunker2","bunker3"],
                   topBack: "Бункер Z312 back view",
                   identify: 0,
                   Describtion:
                    "Бункеры таят в себе много тайн, кроме своей сырости и ужаса. Не любите щекотку, но нравится щекотать нервы? Вы по адресу. Вы узнаете много нового об этих местах, окунётесь в атмосферу постапокалипсиса. Но узнает ли что-то что-то о вас?..",
                   bodyOfQuest: questBody[0]),
                  (image: "Darknet",
                   NAME:  "Darknet",
                   Info: "Найдите посылку с ДАРКНЕТ!\nЖанр: заброшка",
                   imageMini: "Darknet mini",
                   reit: Double(9),
                   hard: 4,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "1 ч 20 мин",
                   pictures: ["darknet1","darknet2","darknet3"],
                   topBack: "Darknet back view",
                   identify: 1,
                   Describtion:
                    "Умение гуглить сделает вас неплохим программистом. Но вы уверены, что знаете об этой паутине всё? Мы ищем лучших. У вас есть весь DarkNet и лишь несколько часов. Найдите то, что мы спрятали, иначе вы потратите свои деньги за квест зря...",
                   bodyOfQuest: questBody[0])]

let Panorama = [(image: "MosCity",
                 NAME:  "MosCity",
                 Info: "Самые красочные виды\nЖанр: панорама",
                 imageMini: "MosCity mini",
                 reit: 8.5,
                 hard: 2,
                 level_l: "легко",
                 prize_l: "нет",
                 time_l: "1,5 часа",
                 pictures: ["MoscowCity1","MoscowCity2","MoscowCity3"],
                 topBack: "MosCity back view",
                 identify: 2,
                 Describtion:
                "Хотите провести незабываемое свидание или душевно провести вечер наслаждаясь красивым видом? Только вы, вечер и вид с высока. В Moscow City есть подходящее место, но сможете ли вы его найти?",
                 bodyOfQuest: questBody[0]),
                (image: "Гравити Фолз",
                 NAME:  "Гравити Фолз",
                 Info: "Кино - это тоже квест!\nЖанр: муви",
                 imageMini: "Гравити Фолз mini",
                 reit: 10,
                 hard: 2,
                 level_l: "легко",
                 prize_l: "да",
                 time_l: "30 мин",
                 pictures: ["GravityFalls1","GravityFalls2","GravityFalls3"],
                 topBack: "Гравити Фолз back view",
                 identify: 3,
                 Describtion:
                    "Недавно прошёл слух, что недалеко от одной из деревень обнаружили огромную чипсину, которая перегородила выход одной из хижин. Говорят, что пока они там заперты, её хозяин заставляет их скупать все товары. Снова и снова. Найдите эту аномалию, если не боитесь пропасть навсегда...",
                 bodyOfQuest: questBody[0])]

let Advanture = [(image: "ВДНХ",
                  NAME:  "ВДНХ",
                  Info: "Самые загадочные места\nЖанр: приключение",
                  imageMini: "ВДНХ mini",
                  reit: 7.5,
                  hard: 5,
                  level_l: "сложно",
                  prize_l: "да",
                  time_l: "2 часа",
                  pictures: ["","",""],
                  topBack: "ВДНХ back view",
                  identify: 4,
                  Describtion:
                "Сколько интересным мест таит в себе всеми, казалось бы, изведанный парк? Хотите обратить в нём внимание на то, на что обычно никто не обращает? На то, что расскажет вам немного больше, чем интернет? На красивую природу и на самих себя в этой огромной несущейся толпе людей?",
                  bodyOfQuest: questBody[0]),
                 (image: "Mars",
                  NAME:  "MARS",
                  Info: "Есть ли жизнь на марсе?!\nЖанр: приключение",
                  imageMini: "Mars mini",
                  reit: 8.2,
                  hard: 3,
                  level_l: "средне",
                  prize_l: "да",
                  time_l: "2 часа",
                  pictures: ["Mars1","Mars2","Mars3"],
                  topBack: "MARS back view",
                  identify: 5,
                  Describtion:
                    "Любите красный, но боитесь крови? Тогда Марс вам обязательно понравится! Сможете ли вы узнать о нём достаточно, чтобы связаться с настоящим марсоходом?",
                  bodyOfQuest: questBody[0]),
                 (image: "Джунгли",
                  NAME:  "Джунгли",
                  Info: "Будете прыгать, как на лиане!\nЖанр: приключение",
                  imageMini: "Джунгли mini",
                  reit: 9.5,
                  hard: 4,
                  level_l: "сложно",
                  prize_l: "да",
                  time_l: "1 час",
                  pictures: ["jungle1","jungle2","jungle3"],
                  topBack: "Джунгли back view",
                  identify: 6,
                  Describtion:
                    "Любите зелёный цвет? Нравится качаться на стуле? В восторге от пробежек? Отлично! Переносите свои навыки на занимательную прогулку по джунглям! Качайтесь на лианах и бегайте от зверей. Вам понравится!",
                  bodyOfQuest: questBody[0])]

let Night =      [(image: "МГТУ",
                   NAME:  "Тайна Баумана",
                   Info: "Все секреты университета\nЖанр: ночью",
                   imageMini: "МГТУ mini",
                   reit: Double(8),
                   hard: 3,
                   level_l: "средне",
                   prize_l: "да",
                   time_l: "2,5 часа",
                   pictures: ["BMSTU1","BMSTU2","BMSTU3"],
                   topBack: "МГТУ back view",
                   identify: 7,
                   Describtion:
                    "Знаете ли вы об этаже 4,5 в УЛК МГТУ? Или об алексее Гомане? Сколько непьющих на самом деле? Сможете ли вы сказать, что разгадали все тайны?",
                   bodyOfQuest: questBody[0])]

let setOfAllQuests = Zabroshka + Panorama + Advanture + Night
let popular = [Zabroshka[1],Panorama[0],Advanture[2],Night[0]]
var questsList = setOfAllQuests


var reiting = ["blue" : (Hard: "Blue Сложность",
               Reit: "Blue Рейтинг"),
               "orange" : (Hard: "Orange Сложность",
              Reit: "Orange Рейтинг")]

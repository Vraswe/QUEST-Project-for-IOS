//
//  TestsForTemplate.swift
//  QUEST
//
//  Created by Павел on 25/05/2019.
//  Copyright © 2019 Паша. All rights reserved.
//

import Foundation

var universalQuest: template?

var questBody: [template] = [
        template(
            thisRules: rules(
                backgroundImage: "ruleBackPink",
                description: "Цуката 3304Б приветствует вас! У вас есть цель: найти то, что мы для вас спрятали. Если, конечно, вы докажете, что достойны. Это приблизит вас к нам.\nВам необходимо пройти задания, которые помогут это сделать. Но играйте по нашим правилам:",
                type: .fourRule,
                rule1: "1. Время на прохождение задания и кол-во попыток не бесконечно",
                rule2: "2. Все задания и ответы находятся в пределах этого парка или связаны с ним. Вам не обязательно лететь на другой континент для разгадки",
                rule3: "3. Ответы не гордые, так что пишите их строго с маленькой буквы в им. падеже. С пробелами, если надо",
                rule4: "4. Если что-то пошло не так, можете написать нам",
                rule5: nil
                ),
            
            thisMenu: menu(
                backgroundImage: "menuBackWater",
                nameQuest: "IMAGINARIUM",
                type: .square,
                firstLabel: "Где логика?",
                secondLabel: "Загадочные истории",
                thirdLabel: "Шифровальщик"
                ),
            
            thisTasks: [
                tasks(
                    target: "Добавим музыки?",
                    description: "Мы знаем о вас многое ;)\nНа \"родине\" Артура существует музыкальный инструмент, состоящий из трёх частей. Его корпус обычно выполнен в форме плодов дерева, из которого он изготавливается. ",
                    itSelfTask: nil,
                    type: .oneImage,
                    mainImage: "flagArmeni",
                    images: nil,
                    answer: "уд",
                    podskazka: nil
                    ),
                tasks(
                    target: "Найди общее",
                    description: "Что есть общего у этих зданий?",
                    itSelfTask: nil,
                    type: .someImages,
                    mainImage: nil,
                    images: ["buld1","buld2","buld3"],
                    answer: "звезда",
                    podskazka: "Чтобы узнать нужно к ним подойти"
                ),
                tasks(
                    target: "Вот это код!",
                    description: "Мы отправили вам сообщение, а спецслужбы зацензурили его. Но вы же прочтёте?",
                    itSelfTask: "••• −•• −• • −− •−• −−− •••− −•• • −• •• •−•−",
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "с днем рождения",
                    podskazka: nil
                ),
                tasks(
                    target: "Найди общее",
                    description: "Чем конкретно связаны первые две фотографии с третьей?",
                    itSelfTask: nil,
                    type: .someImages,
                    mainImage: nil,
                    images: ["raketa","gagarin","safari"],
                    answer: "восток",
                    podskazka: "Первые две подскажут место"
                ),
                tasks(
                    target: "Найди общее",
                    description: "Это было всегда золотым. Но совсем недавно его отреставрировали и перекрасили. У него есть тёзка: одна из известных сказок П. Бажова.\nНайдите и скажите нам фамилию главного инженера заказчика, а то нам не говорят :(",
                    itSelfTask: "Шутка. Конечно мы знаем. Мы же можем загуглить :). Поэтому лучше скажите, сколько у цветка всего струй?",
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "152",
                    podskazka: nil
                ),
                tasks(
                    target: "Универ?!",
                    description: "Что общего между нашими лекциями в МГТУ и летним кинотеатром ВДНХ?",
                    itSelfTask: nil,
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "лекторий",
                    podskazka: nil
                ),
                tasks(
                    target: "Вот это коктель!",
                    description: "Мы слышали, что на ВДНХ, юго-восточнее павильона №62, есть прекрасное место для просмотра летом кино. А ещё, что там потрясающий коктейль из манго-маракуйи",
                    itSelfTask: "Мы вот тут посчитали, у нас есть пара миллионов. Нам на один хватит? Не посмотрите, сколько он стоит?",
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "200",
                    podskazka: nil
                ),
                tasks(
                    target: "Красивое место",
                    description: "Чего нет на ВДНХ?",
                    itSelfTask: "кролиководства\nоптики\nробостанции\n дворца бракосочетаний\nконного клуба\nхрама\n лабиринта\nсамолета як-24\n кафе \"свадьба соек\"\nпавильон №75\nфотостудии\nцентр балета",
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "самолета як-24",
                    podskazka: nil
                ),
                tasks(
                    target: "Трудная задача",
                    description: "У одного из вас есть \"ключ\".\nНикогда не говори трудностям \"нет\"!",
                    itSelfTask: "32/32 1 17\n27/32 2 7\n27/32 2 4\n13/32 1 7\n13/32 1 8\n32/32 1 1\n20/32 1 3\n\n\n23/32 2 4\n23/32 4 4\n12/32 3 2\n24/32 3 4\n28/32 2 7\n20/32 1 18\n32/32 1 6\n\n\n20/32 1 22\n26/32 4 7\n13/32 3 3\n18/32 2 2\n04/32 1 11\n28/32 1 2\n04/32 1 11\n\n\n28/32 1 13\n11/32 3 1\n20/32 1 4\n22/32 1 9\n30/32 1 17\n13/32 3 4\n\n\n22/32 1 4\n28/32 2 5\n12/32 1 4\n27/32 2 4\n23/32 1 5\n20/32 1 3\n18/32 1 3",
                    type: .onlyText,
                    mainImage: nil,
                    images: nil,
                    answer: "16",
                    podskazka: nil
                )
                ]
        )
]

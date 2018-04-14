//
//  Story.swift
//  Destini
//
//  Created by Zaid on 2018-04-13.
//  Copyright © EnigmaticZee. All rights reserved.
//

import Foundation
class Story {
    let storyText : String
    let firstAnswer : String
    let secondAnswer : String
    init(storyTxt : String, answerA : String, answerB : String) {
        storyText = storyTxt
        firstAnswer = answerA
        secondAnswer = answerB
    }
}

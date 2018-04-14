//
//  StoryData.swift
//  Destini
//
//  Created by Zaid Shakil on 01/09/2015.
//  Copyright (c) EnigmaticZee. All rights reserved.
//

import Foundation
class StoryData {
    var storyList = [Story]()
    
    init() {
        storyList.append(Story(storyTxt: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".",
                               answerA: "I\'ll hop in. Thanks for the help!",
                               answerB: "Better ask him if he\'s a murderer first."))
        storyList.append(Story(storyTxt: "He nods slowly, unphased by the question.",
                               answerA: "At least he\'s honest. I\'ll climb in.",
                               answerB: "Wait, I know how to change a tire."))
        storyList.append(Story(storyTxt: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
                               answerA: "I love Elton John! Hand him the cassette tape.",
                               answerB: "It\'s him or me! You take the knife and stab him."))
        storyList.append(Story(storyTxt: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
                               answerA: "",
                               answerB: ""))
        storyList.append(Story(storyTxt: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
                               answerA: "",
                               answerB: ""))
        storyList.append(Story(storyTxt: "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\"",
                               answerA: "",
                               answerB: ""))
    }
}

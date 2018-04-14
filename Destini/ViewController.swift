//
//  ViewController.swift
//  Destini
//
//  Created by Zaid Shakil on 01/09/2015.
//  Copyright (c) EnigmaticZee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    @IBOutlet weak var restartBtn: UIButton!
    // TODO Step 5: Initialise instance variables here
    var storyIndex : Int = 1
    var allStories = StoryData()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        restart()
    }
    
    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
        // TODO Step 4: Write an IF-Statement to update the views
        if (sender.tag == 1 && (storyIndex == 1 || storyIndex == 2)){
            storyTextView.text = allStories.storyList[2].storyText;
            topButton.setTitle(allStories.storyList[2].firstAnswer, for: .normal)
            bottomButton.setTitle(allStories.storyList[2].secondAnswer, for: .normal)
            storyIndex = 3
        }
        else if (sender.tag == 2 && storyIndex == 1){
            storyTextView.text = allStories.storyList[1].storyText;
            topButton.setTitle(allStories.storyList[1].firstAnswer, for: .normal)
            bottomButton.setTitle(allStories.storyList[1].secondAnswer, for: .normal)
            storyIndex = 2
        }
        else if (sender.tag == 1 && storyIndex == 3){
            storyTextView.text = allStories.storyList[5].storyText;
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 6
        }
        else if (sender.tag == 2 && storyIndex == 3){
            storyTextView.text = allStories.storyList[4].storyText;
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 5
        }
        else if (sender.tag == 2 && storyIndex == 2){
            storyTextView.text = allStories.storyList[3].storyText;
            topButton.isHidden = true
            bottomButton.isHidden = true
            storyIndex = 4
        }
        
        if (storyIndex == 4 || storyIndex == 5 || storyIndex == 6){
            restartBtn.isHidden = false
        }
    }
    
    
    @IBAction func RestartbtnPressed(_ sender: UIButton) {
        restart()
    }
    
    func restart(){
        restartBtn.isHidden = true
        storyIndex = 1
        storyTextView.text = allStories.storyList[0].storyText
        topButton.setTitle(allStories.storyList[0].firstAnswer, for: .normal)
        bottomButton.setTitle(allStories.storyList[0].secondAnswer, for: .normal)
        topButton.isHidden = false
        bottomButton.isHidden = false
    }
}


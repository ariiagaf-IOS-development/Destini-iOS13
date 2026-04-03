//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//
//  📚 STUDENT PROJECT NOTES:
//  This is a learning project following the App Brewery's iOS course.
//  Original design and course materials belong to The App Brewery (Angela Yu).
//  Code implementation and Auto Layout practice by Arina Agafonova.
//  Completed as part of iOS development learning journey - February-March 2026.


import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)

    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        
        storyBrain.nextStory(userChoice: userChoice)
        
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }
    
    
}


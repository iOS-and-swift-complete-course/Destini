//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    var story : Story?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.currentStory = story!.choices[sender.tag].nextStory
        updateUI()
    }
    
    func updateUI() {
        story = storyBrain.getCurrentStory()
        storyLabel.text = story!.title
        choice1Button.setTitle(story!.choices[0].choiceTitle, for: UIControl.State.normal)
        choice2Button.setTitle(story!.choices[1].choiceTitle, for: UIControl.State.normal)
    }
    
}


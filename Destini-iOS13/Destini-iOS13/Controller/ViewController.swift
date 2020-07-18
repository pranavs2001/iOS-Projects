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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(0)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let buttonString = sender.currentTitle!
        
        storyBrain.nextStory(buttonString)
        
        updateUI(storyBrain.storyNumber)
    }
    
    func updateUI(_ num: Int){
        storyLabel.text = storyBrain.stories[num].title
        choice1Button.setTitle(storyBrain.stories[num].choice1, for:.normal)
        choice2Button.setTitle(storyBrain.stories[num].choice2, for:.normal)
    }
}


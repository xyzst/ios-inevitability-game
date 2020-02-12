//
//  ViewController.swift
//  Inevitability
//
//  Created by Darren Rambaud on 02/09/2020.
//  Copyright © 2020 Darren Rambaud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyModel = StoryModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyModel.getCurrentStory().title
        choice1Button.setTitle(storyModel.getCurrentStory().choice0, for: .normal)
        choice2Button.setTitle(storyModel.getCurrentStory().choice1, for: .normal)
    }
    
    @IBAction func decision(_ sender: UIButton) {
        print(sender.currentTitle!)
        let s = storyModel.getNextStoryFrom(decision: sender.currentTitle!)
        storyLabel.text = s.title
        choice1Button.setTitle(s.choice0, for: .normal)
        choice2Button.setTitle(s.choice1, for: .normal)
    }
    
}


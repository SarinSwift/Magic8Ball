//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Sarin Swift on 7/2/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    let answers = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    let secondAnswer = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]
    
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var secondAnswerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shapeButtonTapped(_ sender: UIButton) {
        //1
        let maxIndex = UInt32(answers.count)
        //2
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        //3
        answerLabel.text = answers[randomIndex]
        secondAnswerLabel.text = secondAnswer[randomIndex]
        generateAnswer()
    }
    override func motionEnded(_ motion:UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
}


//
//  ViewController.swift
//  Quiz
//
//  Created by Nicholas Wenzel on 6/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Model Layer
    let questions: [String] = ["What is Garrus Vakarian's code name?", "What is Malcolm Reynolds ship called?", "Who owns Rearden Steel?"]
    
    let answers: [String] = ["Archangel", "Serenity", "Hank Rearden"]
    
    // Variable to track the current question
    var currentQuestion : Int = 0
    
    // Defining an outlet called questionLabel of the type UILabel
    // The IBOutlet keyword tells the IDE that you will connect these outlets to label objects
    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var answerLabel: UILabel!
    
    
    // Overloading the viewDidLoad function to start the app with the first question
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestion]
    }
    
    
    // These are actions that will be associated with and run when the user presses the res[ective buttons
    @IBAction func showNextQuestion (_ sender: UIButton) {
        currentQuestion += 1
        
        // If the counter is passed the end of the list loop back to zero
        if currentQuestion == questions.count {
            currentQuestion = 0
        }
        
        // Setting the labels text when the users presses the next question button
        let question = questions[currentQuestion]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer (_ sender: UIButton) {
        // Showing the answer to the current question
        let answer = answers[currentQuestion]
        answerLabel.text = answer
        
    }
    



}


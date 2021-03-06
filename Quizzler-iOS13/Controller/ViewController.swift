//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueLabel: UIButton!
    
    @IBOutlet weak var progressbar: UIProgressView!
    @IBOutlet weak var falseLabel: UIButton!
    
    @IBOutlet weak var Score: UILabel!
    var quizBrain = QuizBrain()
    //var correct = 0
    //var total = quizBrain.quiz.count
    override func viewDidLoad() {
               super.viewDidLoad()
              updateUI()
    }


    @IBAction func Answerbutton(_ sender: UIButton) {
        let useranswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(ans:useranswer)
        //let actualans = quiz[qnnum].ans
        if userGotRight
        {
            sender.backgroundColor = UIColor.green
            
        }
        else
        {
            sender.backgroundColor = UIColor.red
            
            
        }
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        //updateUI()
        
    }
    
    @objc func updateUI()
    {
    questionLabel.text = quizBrain.getQuestionText()
        
        Score.text = " Score : \(quizBrain.correct) out of \(quizBrain.quiz.count)"
         
    progressbar.progress = quizBrain.progressbar()
    trueLabel.backgroundColor = UIColor.clear
    falseLabel.backgroundColor = UIColor.clear
        
    }
}


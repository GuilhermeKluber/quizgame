//
//  QuestionViewController.swift
//  QuizProject
//
//  Created by PUCPR on 01/03/19.
//  Copyright © 2019 PUCPR. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var qcontroller = QuestionsController()
    var answer = ""
    var actualQuestion = Question("","","","","","","")
    var score = 0
    var rigth : [String:String] = ["a" : "letter-aG.png","b" : "letter-bG.png","c" : "letter-cG.png","d" : "letter-dG.png","e" : "letter-eG.png"]
    var wrong : [String:String] = ["a" : "letter-aR.png","b" : "letter-bR.png","c" : "letter-cR.png","d" : "letter-dR.png","e" : "letter-eR.png"]
    var initial : [Int:String] = [1 : "036-letter-a.png",2 : "035-letter-b.png",3 : "034-letter-c.png",4 : "033-letter-d.png",5 : "032-letter-e.png"]
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var optionA: UILabel!
    @IBOutlet weak var optionB: UILabel!
    @IBOutlet weak var optionC: UILabel!
    @IBOutlet weak var optionD: UILabel!
    @IBOutlet weak var optionE: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.actualQuestion = qcontroller.getQuestion()
        question.text = actualQuestion.question
        optionA.text = actualQuestion.optionA
        optionB.text = actualQuestion.optionB
        optionC.text = actualQuestion.optionC
        optionD.text = actualQuestion.optionD
        optionE.text = actualQuestion.optionE
    }
    
    func getNewQuestion(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
        self.actualQuestion = self.qcontroller.getQuestion()
        self.question.text = self.actualQuestion.question
        self.optionA.text = self.actualQuestion.optionA
        self.optionB.text = self.actualQuestion.optionB
        self.optionC.text = self.actualQuestion.optionC
        self.optionD.text = self.actualQuestion.optionD
        self.optionE.text = self.actualQuestion.optionE
        for i in 1...5{
            let button = self.view.viewWithTag(i ) as! UIButton
            button.setImage(UIImage(named: self.initial[i]!), for: UIControl.State.normal)
        }
    })
    }
    
    @IBAction func answerA(_ sender: UIButton) {
        let pos = Array(rigth.keys).sorted().firstIndex(of: actualQuestion.answer)
        let button = self.view.viewWithTag(pos! + 1 ) as! UIButton
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(0), execute: {
        
        switch sender.tag {
        case 1:
            if self.actualQuestion.answer == "a"{
                sender.setImage(UIImage(named: self.rigth["a"]!), for: UIControl.State.normal)
                self.score += 1
            }else{
                sender.setImage(UIImage(named: self.wrong["a"]!), for: UIControl.State.normal)
                button.setImage(UIImage(named: self.rigth[self.actualQuestion.answer]!), for: UIControl.State.normal)
            }
        case 2:
            if self.actualQuestion.answer == "b"{
                sender.setImage(UIImage(named: self.rigth["b"]!), for: UIControl.State.normal)
                self.score += 1
            }else{
                sender.setImage(UIImage(named: self.wrong["b"]!), for: UIControl.State.normal)
                button.setImage(UIImage(named: self.rigth[self.actualQuestion.answer]!), for: UIControl.State.normal)
            }
        case 3:
            if self.actualQuestion.answer == "c"{
                sender.setImage(UIImage(named: self.rigth["c"]!), for: UIControl.State.normal)
                self.score += 1
            }else{
                sender.setImage(UIImage(named: self.wrong["c"]!), for: UIControl.State.normal)
                button.setImage(UIImage(named: self.rigth[self.actualQuestion.answer]!), for: UIControl.State.normal)
            }
        case 4:
            if self.actualQuestion.answer == "d"{
                sender.setImage(UIImage(named: self.rigth["d"]!), for: UIControl.State.normal)
                self.score += 1
            }else{
                sender.setImage(UIImage(named: self.wrong["d"]!), for: UIControl.State.normal)
                button.setImage(UIImage(named: self.rigth[self.actualQuestion.answer]!), for: UIControl.State.normal)
            }
        case 5:
            if self.actualQuestion.answer == "e"{
                sender.setImage(UIImage(named: self.rigth["e"]!), for: UIControl.State.normal)
                self.score += 1
            }else{
                sender.setImage(UIImage(named: self.wrong["e"]!), for: UIControl.State.normal)
                button.setImage(UIImage(named: self.rigth[self.actualQuestion.answer]!), for: UIControl.State.normal)
            }
        default:
            self.answer = ""
        }
            })
    
        getNewQuestion()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  QuestionsController.swift
//  QuizProject
//
//  Created by PUCPR on 01/03/19.
//  Copyright © 2019 PUCPR. All rights reserved.
//

import Foundation

class QuestionsController{
    
    var arrQuestions : [Question]
    init () {
        self.arrQuestions = []
        self.arrQuestions = self.loadQuestions()
    }
    
    func loadQuestions() -> [Question]{
        let q : Question = Question("Questão","Opção A","Opção B",
                                    "Opção C","Opção D","Opção E",
                                    "a")
        return [q]
    }
    
    func getQuestion() -> Question{
        let rand = Int.random(in: 0...self.arrQuestions.count-1)
        return self.arrQuestions[rand]
    }
    
    func insertQuestion(_ question : String, _ optionA : String, _ optionB : String,
                        _ optionC : String, _ optionD : String, _ optionE : String,
                        _ answer : String) {
    
        let q : Question = Question(question,optionA,optionB,
                                    optionC,optionD,optionE,answer)
        self.arrQuestions.append(q)
    }
    
    
    
}

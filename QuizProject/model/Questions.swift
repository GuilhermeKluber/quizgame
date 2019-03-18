//
//  questions.swift
//  QuizProject
//
//  Created by PUCPR on 01/03/19.
//  Copyright © 2019 PUCPR. All rights reserved.
//

import Foundation


class Question {
    var question : String
    var optionA : String
    var optionB : String
    var optionC : String
    var optionD : String
    var optionE : String
    var answer : String
    
    init (  _ question : String, _ optionA : String, _ optionB : String,
            _ optionC : String, _ optionD : String, _ optionE : String,
            _ answer : String){
        
        self.question = question
        self.optionA = optionA
        self.optionB = optionB
        self.optionC = optionC
        self.optionD = optionD
        self.optionE = optionE
        self.answer = answer
    }
    

}
    


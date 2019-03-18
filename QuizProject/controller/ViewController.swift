//
//  ViewController.swift
//  QuizProject
//
//  Created by PUCPR on 27/02/19.
//  Copyright © 2019 PUCPR. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var qcontroller = QuestionsController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueQuiz"{
            let next = segue.destination as! QuizViewController
            next.qcontroller = qcontroller
        }
        else if segue.identifier == "segueEdit"{
            let next = segue.destination as! QuestionsTableViewController
            next.qcontroller = qcontroller
        }
        
    }
    
    @IBAction func start(_ sender: UIButton) {
        
    }
    
}


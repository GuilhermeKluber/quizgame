//
//  EditorTableViewController.swift
//  QuizProject
//
//  Created by PUCPR on 08/03/19.
//  Copyright © 2019 PUCPR. All rights reserved.
//

import UIKit

class EditorTableViewController: UITableViewController {
    
    let sections = ["Questão", "Opção A","Opção B","Opção C","Opção D","Opção E","Reposta"]
    var owner : QuestionsTableViewController?
    var arrEdit : [String]?
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Uncomment the following line to preserve selection between presentations
        // clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//         navigationItem.rightBarButtonItem = editButtonItem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        arrEdit = ["","","","","","","",]
        print(owner!.qcontroller.arrQuestions.count)
        if index < owner!.qcontroller.arrQuestions.count{
            arrEdit![0] = owner!.qcontroller.arrQuestions[index].question
            arrEdit![1] = owner!.qcontroller.arrQuestions[index].optionA
            arrEdit![2] = owner!.qcontroller.arrQuestions[index].optionB
            arrEdit![3] = owner!.qcontroller.arrQuestions[index].optionC
            arrEdit![4] = owner!.qcontroller.arrQuestions[index].optionD
            arrEdit![5] = owner!.qcontroller.arrQuestions[index].optionE
            arrEdit![6] = owner!.qcontroller.arrQuestions[index].answer
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return sections[section]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "editor", for: indexPath) as! CustomTableViewCell
//        view.place

        cell.textField.text = arrEdit![indexPath.section]

        return cell
    }
 
    @IBAction func save(_ sender: Any) {
        for i in 0...6{
            let indexPath = IndexPath(row: 0, section: i)
            let cell = tableView.cellForRow(at: indexPath) as! CustomTableViewCell
            arrEdit![i] = cell.textField.text!
        }
        if index >= owner!.qcontroller.arrQuestions.count{
            owner!.qcontroller.insertQuestion("", "", "", "", "", "", "")
        }
        owner!.qcontroller.arrQuestions[index].question = arrEdit![0]
        owner!.qcontroller.arrQuestions[index].optionA = arrEdit![1]
        owner!.qcontroller.arrQuestions[index].optionB = arrEdit![2]
        owner!.qcontroller.arrQuestions[index].optionC = arrEdit![3]
        owner!.qcontroller.arrQuestions[index].optionD = arrEdit![4]
        owner!.qcontroller.arrQuestions[index].optionE = arrEdit![5]
        owner!.qcontroller.arrQuestions[index].answer = arrEdit![6]
    }
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//         Return false if you do not want the specified item to be editable.
        return true
    }


    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

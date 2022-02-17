//
//  AddViewController.swift
//  chan8786_a3
//
//  Created by Jonatham Chang on 2022-02-17.
//

import UIKit

class AddViewController: UIViewController {
    // Dismissing keyboard when return pressed or tapped
    @IBOutlet weak var NameTextField: UITextField!
    @IBAction func returnPressed(_ sender: Any) {
        NameTextField.resignFirstResponder()
    }
    @IBAction func tapped(_ sender: Any) {
        NameTextField.resignFirstResponder()
    }
    // Dismissing keyboard ends
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

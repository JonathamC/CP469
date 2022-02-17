//
//  FavoritesViewController.swift
//  chan8786_a3
//
//  Created by Jonatham Chang on 2022-02-17.
//

import UIKit

class FavoritesViewController: UIViewController {
    @IBOutlet weak var bioTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bioTextView.text = "----"
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

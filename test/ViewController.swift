//
//  ViewController.swift
//  test
//
//  Created by usama zafar on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.red
        
    }
    @IBAction func changeName(_ sender: Any) {
        
        // name is changed
        nameLabel.text = "#Gen-e"

        // printing the change
         print("name was changed to Gen-e")
    }
}


//
//  ViewController3.swift
//  test
//
//  Created by usama zafar on 09/02/2023.
//


import UIKit

class ViewController3: UIViewController {
    
    var selectedNumber: String? = ""
    @IBOutlet weak var number: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        number.text = selectedNumber
        
    }
    
}

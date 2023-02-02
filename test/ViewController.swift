//
//  ViewController.swift
//  test
//
//  Created by usama zafar on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {

    
    var totalCount = 0
    @IBOutlet weak var count: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        count.font.pointSize
        // Do any additional setup after loading the view.
        //viewwww.semanticContentAttribute = .forceRightToLeft
        
        
    }
    
    @IBAction func increment(_ sender: Any) {
        if(totalCount >= 0){
            totalCount += 1
            count.text = String(totalCount)
        }
    }
    
    @IBAction func decrement(_ sender: Any) {
        if(totalCount > 0){
            totalCount -= 1
            count.text = String(totalCount)
        }
    }
}


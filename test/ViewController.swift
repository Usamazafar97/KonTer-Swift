//
//  ViewController.swift
//  test
//
//  Created by usama zafar on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textStart: UITextField!
    //@IBOutlet weak var labelStart: UILabel!
    var totalCount = 0
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        count.font.pointSize
        // Do any additional setup after loading the view.
        //viewwww.semanticContentAttribute = .forceRightToLeft
        
//        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.tapFunction))
//        labelStart.isUserInteractionEnabled = true
//        labelStart.addGestureRecognizer(tap)
        
        startButton.titleLabel?.textColor = .systemCyan
        startButton.layer.borderWidth = 1.0
        startButton.layer.borderColor = UIColor.systemCyan.cgColor
        startButton.layer.cornerRadius = 5.0
        
        
        textStart.layer.borderColor = UIColor.systemCyan.cgColor
        textStart.textInputView.layer.borderColor = UIColor.systemCyan.cgColor
        textStart.borderStyle = .roundedRect
        
        

        
        
    }
    
    @IBAction func nextScreen(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "nextView") as! ViewController2
        self.present(nextViewController, animated:true, completion:nil)
    }
    @IBAction func start(_ sender: Any) {
        guard let start = textStart.text else { return }
        
        if(start != "0" || !start.isEmpty){
            totalCount = Int(start) ?? 0
            
            
            // set the count here
            count.text = start.isEmpty ? "0" : start
            
            
            // resetting the value to 0, once the user press the start button
            //textStart.text = "0"
            
        }
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
    
    @IBAction func checkCount(_ sender: Any) {
        
    }
    
    @IBAction func resetCounter(_ sender: Any) {
        totalCount = 0
        count.text = String(totalCount)
    }
//    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
//
//        guard let start = textStart.text else { return }
//
//        if(start != "0" || !start.isEmpty){
//            totalCount = Int(start) ?? 0
//
//
//            // set the count here
//            count.text = start.isEmpty ? "0" : start
//
//
//            // resetting the value to 0, once the user press the start button
//            textStart.text = "0"
//
//        }
//    }
    
    
}


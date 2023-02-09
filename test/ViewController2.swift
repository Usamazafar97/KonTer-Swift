//
//  ViewController2.swift
//  test
//
//  Created by usama zafar on 08/02/2023.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet var tableView : UITableView!
    let names = ["osama", "usama"]
    
    var dataToSend = "empty"

    @IBOutlet weak var lbel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let viewController3 = segue.destination as? ViewController3 {
            viewController3.selectedNumber = dataToSend
            
        }
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

extension ViewController2: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(names[indexPath.row])
        
        self.dataToSend = names[indexPath.row]
        
        performSegue(withIdentifier: "viewController3Segue", sender: self)
        
    }
}

extension ViewController2: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}

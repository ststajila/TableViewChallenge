//
//  ViewController.swift
//  TableViewChallenge
//
//  Created by STANISLAV STAJILA on 10/30/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    
var names: [String] = ["Stanislav", "Brian", "Gabi"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        
        cell.textLabel?.text = "\(names[indexPath.row])"
        
        return cell
        
    }
    
    


}


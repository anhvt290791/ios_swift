//
//  ViewController.swift
//  TableView
//
//  Created by digi on 6/4/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberDataSource = NumberDataSource()
    var personDataSource = PersonDatasource()
    @IBOutlet weak var myTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = numberDataSource
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func myButton(_ sender: UISwitch) {
        myTableView.dataSource = sender.isOn ? numberDataSource : personDataSource
        myTableView.reloadData()
    }
    
}
class NumberDataSource: NSObject,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.myLabel.text = String(number[indexPath.row])
        return cell
    }
    
    var number = [Int](0...10)
    
}
class PersonDatasource: NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.myLabel.text = person[indexPath.row]
        return cell
    }
    var person = ["Vu Anh", "Lan", "Thanh"]
}


//
//  ViewController.swift
//  delegate2
//
//  Created by digi on 5/28/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, hienthi {
    
    func hienthithongtin(ten: String, tuoi: String, anh: UIImage) {
        if let index = tableView.indexPathForSelectedRow {
            person[index.row].age = tuoi
            person[index.row].anh = anh
            person[index.row].name = ten
        }
        tableView.reloadData()
    }

    
    var person = [People]()
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = [People(anh: UIImage(named: "DN.jpg")!, name: "Đà Nẵng", age: "2019"),
                  People(anh: UIImage(named: "HCM.jpeg")!, name: "Thành phố Hồ Chí Minh", age: "2018")
        ]
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? DetailViewController
        if let index = tableView.indexPathForSelectedRow {
            vc?.student = person[index.row]
        }
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.myImage.image = person[indexPath.row].anh
        cell.myName.text = person[indexPath.row].name
        cell.myAge.text = person[indexPath.row].age
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}


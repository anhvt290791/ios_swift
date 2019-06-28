//
//  ViewController.swift
//  Bai5
//
//  Created by digi on 5/17/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
struct staff{
    var Name: String
    var Phone: String?
}
class ViewController: UITableViewController{
    @IBOutlet weak var noContentView: UIView!
    var nhanvien = [
    staff(Name: "Vu anh", Phone: "88888888"),
    staff(Name: "Thanh", Phone: "99999999")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        noContentView.frame = view.bounds
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = nhanvien[indexPath.row].Name
        cell.detailTextLabel?.text = nhanvien[indexPath.row].Phone
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nhanvien.count
    }
    
        //screen transfering
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
        if let indexPath = tableView.indexPathForSelectedRow {
            vc.bientrunggian = nhanvien[indexPath.row]
    }
    }
    //deleting
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            nhanvien.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }else if editingStyle == .insert {
            
        }
    }
    
    @IBAction func button(_ sender: UIBarButtonItem) {
     isEditing = !isEditing
    }
    
    @IBAction func xoa(_ sender: UIBarButtonItem) {
        guard let indexPaths = tableView.indexPathsForSelectedRows else{return}
        
        for(index, value) in nhanvien.enumerated() {
            if indexPaths.contains(IndexPath(item: index, section: 0)){
                nhanvien.remove(at: index)
            }
        }
        tableView.deleteRows(at: indexPaths, with: .automatic)
        isEditing = false
    }
    }
    
//    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
//        let vc = unwindSegue.source as! ViewController2
//            if let indexPath = tableView.indexPathForSelectedRow{
//                nhanvien[indexPath.row] = vc.bientrunggian!
//        }else{
//                nhanvien.append(staff.init(Name: vc.textfieldName.text! , Phone: vc.textfieldPhone.text!))
//        }
//        tableView.reloadData()
//    }



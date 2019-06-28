//
//  TableViewController.swift
//  TableView2
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var bang = [Int](0...1)

    @IBOutlet var myLabel: UIView!
    
    @IBOutlet weak var mylabel2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bang.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(bang[indexPath.row])
        // Configure the cell...
        if bang[indexPath.row] % 2 == 0{
            cell.backgroundColor = UIColor.red
        }
//        else{
//            cell.backgroundColor = UIColor.black
//
//        }
        return cell
    }
//    func makeColor(){
//        if (){
//
//        }
//    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            bang.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
            if bang.count == 0{
            tableView.tableHeaderView = myLabel
            tableView.isScrollEnabled = false
            }else{
            tableView.tableFooterView = mylabel2
            }
        tableView.reloadData()
        }
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UITableView{
    func setEmptyView(title: String, message: String){
        let titleLabel = UILabel()
        let messageLabel = UILabel()
        titleLabel.textColor = UIColor.black
        messageLabel.font = UIFont(name: "Times New Roman", size: 17)
        messageLabel.textColor = UIColor.gray
        
    }
}

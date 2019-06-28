//
//  ViewController.swift
//  TableView3
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
struct Nhanvien{
    var sothutu: Int
    var ten: String
    var tuoi: Int
    var diachi: String
    var Note: String
    var Anh: UIImage
}
class ViewController: UITableViewController {
    
    var Nhanviencongty = [
        Nhanvien(sothutu: 1, ten: "Vu Anh", tuoi: 29, diachi: "Hai Duong", Note: "Lop truong", Anh: UIImage(named: "1")!),
        Nhanvien(sothutu: 2, ten: "Quy Thanh", tuoi: 26, diachi: "Hai Duong", Note: "Lop pho", Anh: UIImage(named: "1")!),
        Nhanvien(sothutu: 3, ten: "Lan", tuoi: 23, diachi: "Hai Duong", Note: "Thanh vien", Anh: UIImage(named: "1")!)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Nhanviencongty.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.Ten.text = Nhanviencongty[indexPath.row].ten
        cell.tuoi.text = String(Nhanviencongty[indexPath.row].tuoi)
        cell.DiaChi.text = Nhanviencongty[indexPath.row].diachi
        cell.STT.text = String(Nhanviencongty[indexPath.row].sothutu)
        cell.Note.text = String(Nhanviencongty[indexPath.row].Note)
        cell.Anh.image = self.Nhanviencongty[indexPath.row].Anh
        return cell
    }
}


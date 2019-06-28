//
//  ViewController2.swift
//  Delegate
//
//  Created by digi on 5/22/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
protocol hienthidulieu {
    func hienthi(text: String, text2: String)
    //func hienthi2(text: String)
    }

class ViewController2: UIViewController {
var delegate: hienthidulieu?
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var texField1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonSave(_ sender: Any) {
        
        delegate?.hienthi(text: texField1.text!, text2: textField2.text!)
        //delegate?.hienthi(text: texField1.text!, text2: textField2.text!)
        
        navigationController?.popViewController(animated: true)
        
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

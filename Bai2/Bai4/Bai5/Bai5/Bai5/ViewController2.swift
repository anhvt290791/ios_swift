//
//  ViewController2.swift
//  Bai5
//
//  Created by digi on 5/17/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit


class ViewController2: UIViewController {
    
    
    @IBOutlet weak var textfieldName: UITextField!
    @IBOutlet weak var textfieldPhone: UITextField!
    var bientrunggian: staff?
    override func viewDidLoad() {
        super.viewDidLoad()
        textfieldName.text = bientrunggian?.Name
      textfieldPhone.text = bientrunggian?.Phone
    
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        bientrunggian?.Name = textfieldName.text!
        bientrunggian?.Phone = textfieldPhone.text!
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

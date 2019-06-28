//
//  ViewController.swift
//  Bai4
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pheptinhY: UITextField!
    @IBOutlet weak var pheptinhX: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tinhX = Int(pheptinhX.text!) else{
            return
        }
        guard let tinhY = Int(pheptinhY.text!) else{
            return
        }
        let result = tinhX + tinhY
        let vc = segue.destination as! ViewController2
         vc.bienogiua = result
    }


}


//
//  ViewController.swift
//  Delegate
//
//  Created by digi on 5/22/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, hienthidulieu {

    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
        vc.delegate = self
        
    }

    func hienthi(text: String, text2: String){
        myLabel.text = text
        myLabel2.text = text2
    }
    
    
}


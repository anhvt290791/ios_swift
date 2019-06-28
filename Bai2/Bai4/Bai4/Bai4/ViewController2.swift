//
//  ViewController2.swift
//  Bai4
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var bienogiua: Int = 0
    @IBOutlet weak var result2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        result2.text = String(bienogiua)
        // Do any additional setup after loading the view.
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

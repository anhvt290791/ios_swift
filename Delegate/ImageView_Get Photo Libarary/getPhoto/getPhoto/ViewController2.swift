//
//  ViewController2.swift
//  getPhoto
//
//  Created by digi on 5/23/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let vc = unwindSegue.source as? ViewController
        image2.image = vc?.bientrunggian
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

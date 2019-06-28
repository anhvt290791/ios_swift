//
//  ViewController2.swift
//  ImageView
//
//  Created by digi on 5/23/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
protocol hienthianh {
    func hienthihinhanh(image: UIImage, image2: UIImage)
}

class ViewController2: UIViewController {
    var delegate: hienthianh?

    @IBOutlet weak var image1: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func buttonSave(_ sender: Any) {
        delegate?.hienthihinhanh(image: UIImage(named: "HN.jpeg")!, image2: UIImage(named: "HP.jpeg")!)
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

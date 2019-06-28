//
//  ViewController.swift
//  ImageView
//
//  Created by digi on 5/23/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, hienthianh{

    @IBOutlet weak var myImage1: UIImageView!
    @IBOutlet weak var myImage2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
        vc.delegate = self
    }
    func hienthihinhanh(image: UIImage, image2: UIImage) {
        myImage1.image = image
        myImage2.image = image2
    }
}


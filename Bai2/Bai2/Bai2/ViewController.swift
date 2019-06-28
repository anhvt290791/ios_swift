//
//  ViewController.swift
//  Bai2
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TexfieldResult: UILabel!
    
    @IBOutlet weak var Pheptinh1: UITextField!
    
    @IBOutlet weak var Pheptinh2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBAction func button(_ sender: Any) {
        
        var number1: Int? = Int(Pheptinh1.text!)
        var number2: Int? = Int(Pheptinh2.text!)
        var dataisOk = true
        if number1==nil{
            dataisOk = false
            Pheptinh1.shake()
            
        }
        if number2==nil{
            dataisOk = false
            Pheptinh2.shake()
    }
        
        if dataisOk{
           // dataisOk = true
            let result = number1! + number2!
            TexfieldResult.text = String(result)
            
        }
        
    
    
    
 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let number1 = Int(Pheptinh1.text!) else {
//            return
//        }
//        guard let number2 = Int(Pheptinh2.text!) else {
//            return
//        }
//        let result = number1 + number2
//        let vc = segue.destination as! manhinh2
//            vc.bientrunggian = String(result)
//
//
//    }

}
}

extension UIView{
    func shake(){
        let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.linear)
        animation.duration = 0.5
        animation.values = [20, -20, 10, -10, 0]
        layer.add(animation, forKey: "shake")
    }
}

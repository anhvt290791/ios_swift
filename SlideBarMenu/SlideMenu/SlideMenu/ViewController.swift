//
//  ViewController.swift
//  SlideMenu
//
//  Created by digi on 6/20/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiview: UIView!
    
    @IBOutlet weak var outletButton: UIButton!
    @IBOutlet weak var leadingContrain: NSLayoutConstraint!
    var showMenu = false {
        didSet {
            UIView.animate(withDuration: 0.5) {
                self.leadingContrain.constant = self.showMenu ? 0 : -self.uiview.frame.size.width - 15
                self.shadow(uiView: self.uiview, color: .black, shadow: 10, Opacity: 1)
                self.outletButton.alpha = self.showMenu ? 0.5 : 0
                self.view.layoutIfNeeded()
            }
        }
    }
    
    
        override func viewDidLoad() {
        super.viewDidLoad()
        showMenu = false
        // Do any additional setup after loading the view, typically from a nib.
       
        
        
    }
   
    @IBAction func offMenu(_ sender: Any) {
        showMenu = false
    }
    
    @IBAction func menu(_ sender: Any) {
       showMenu.toggle()
      
        
//        if(showMenu){
//            leadingContrain.constant =  -240
//
//        }
//        else{
//            leadingContrain.constant = 0
//        }
//        showMenu = !showMenu
    }
    func shadow(uiView: UIView, color: UIColor,shadow: CGFloat, Opacity : Float) {
        uiView.layer.shadowColor = color.cgColor
        uiView.layer.shadowOpacity = Opacity
        uiView.layer.shadowOffset = CGSize.zero
        uiView.layer.shadowRadius = shadow
    }

}


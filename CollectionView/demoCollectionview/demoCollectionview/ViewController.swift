//
//  ViewController.swift
//  demoCollectionview
//
//  Created by digi on 5/21/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
   
    @IBOutlet weak var myLabel2: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myCollection: UICollectionView!
    var TP:[String] = ["TP.Ho Chi Minh", "Ha Noi", "Da Nang", "Hai Phong", "Hai Duong"]
    var hinhanh:[String] = ["HCM.jpge", "HN.jpge", "DN.jpg", "HP.jpge", "HD.jpge"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myCollection.delegate = self
        myCollection.dataSource = self
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return TP.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.myLabel.text = TP[indexPath.row]
    
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        myImage.image = UIImage(named: hinhanh[indexPath.row])
        myLabel2.text = "Ảnh minh hoạ"
    }
}


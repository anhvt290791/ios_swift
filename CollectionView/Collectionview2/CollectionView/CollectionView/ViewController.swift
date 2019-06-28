//
//  ViewController.swift
//  CollectionView
//
//  Created by digi on 6/4/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var collectionFlowLayout: UICollectionViewFlowLayout!
    var items = [Int](0...200)

   
    override func viewDidLoad() {
        super.viewDidLoad()
        let itemWidth = UIScreen.main.bounds.width / 4.0 - 10;
        let itemHeight = UIScreen.main.bounds.height / 8.0;
collectionFlowLayout.itemSize = CGSize(width: itemWidth, height: itemHeight)
        
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.myLabel.text = String(items[indexPath.row])
        return cell
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

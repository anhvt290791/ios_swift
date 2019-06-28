//
//  TableViewCell.swift
//  TableView3
//
//  Created by digi on 5/14/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Note: UILabel!
    @IBOutlet weak var DiaChi: UILabel!
    @IBOutlet weak var Ten: UILabel!
    
    @IBOutlet weak var tuoi: UILabel!
    @IBOutlet weak var STT: UILabel!
    
    @IBOutlet weak var Anh: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

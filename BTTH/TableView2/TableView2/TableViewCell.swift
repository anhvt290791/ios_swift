//
//  TableViewCell.swift
//  TableView2
//
//  Created by digi on 6/4/19.
//  Copyright © 2019 vuanh. All rights reserved.
//

import UIKit
var count = 0
class TableViewCell: UITableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        detailTextLabel?.text = String(count)
        count += 1
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        backgroundColor = UIColor.white
    }

}

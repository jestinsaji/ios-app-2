//
//  TableViewCell.swift
//  SegmentView
//
//  Created by Apps Team Mac book Air on 06/09/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var myImageView: UIImageView!
    @IBOutlet var mylabel1: UILabel!
    @IBOutlet var mylabel2: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  YoutubersCell.swift
//  TableViewCellWithButtonActionUsingTag
//
//  Created by Sherif on 7/12/19.
//  Copyright © 2019 Sherif. All rights reserved.
//

import UIKit

class YoutubersCell: UITableViewCell {

    @IBOutlet weak var youtuberNameLabel: UILabel!
    @IBOutlet weak var followYoutuberButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

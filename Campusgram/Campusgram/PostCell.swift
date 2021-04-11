//
//  PostCell.swift
//  Campusgram
//
//  Created by Winnie Yang on 4/10/21.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var eventNameLabel: UILabel!
    
    @IBOutlet weak var hostNameLabel: UILabel!
    
    @IBOutlet weak var capacityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

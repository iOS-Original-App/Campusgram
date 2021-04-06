//
//  SavedCell.swift
//  Campusgram
//
//  Created by Shane Patra on 4/4/21.
//

import UIKit

class SavedCell: UITableViewCell {

 
    @IBOutlet weak var partyView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
    @IBOutlet weak var hostLabel: UILabel!
    @IBOutlet weak var joinedLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

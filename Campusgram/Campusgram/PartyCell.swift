//
//  PartyCell.swift
//  Campusgram
//
//  Created by Shane Patra on 3/28/21.
//

import UIKit

class PartyCell: UITableViewCell {


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

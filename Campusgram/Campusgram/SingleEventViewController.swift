//
//  SingleEventViewController.swift
//  Campusgram
//
//  Created by Shane Patra on 4/10/21.
//

import UIKit
import Parse

class SingleEventViewController: UIViewController {

    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var hostNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var capacityLabel: UILabel!
    
    var parties = [PFObject]()
    let party = PFObject(className: "parties")
    var favorited:Bool = false
    
    @IBAction func favButton(_ sender: Any) {
        let toBeFavortied = !favorited
        if (toBeFavortied) {
                party["saved"] = true
        } else {
            party["saved"] = false
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFQuery(className: "Posts")
        query.includeKeys(["host", "date", "party", "joined", "location", "saved"])
        
        // Add condition down here to show saved event after connecting the MainfeedViewController with parse
        query.findObjectsInBackground{ (parties, error) in
            if parties != nil {
                self.parties = parties!
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let user = party["host"] as! PFUser
            
        hostNameLabel.text = user.username
        eventNameLabel.text = party["party"] as? String
        dateLabel.text = party["date"] as? String
        capacityLabel.text = party["joined"] as? String
        locationLabel.text = party["location"] as? String
        let imageFile = party["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        photoView.af_setImage(withURL: url)
        
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

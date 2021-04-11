//
//  SavedViewController.swift
//  Campusgram
//
//  Created by Shane Patra on 4/4/21.
//

import UIKit
import Parse
import AlamofireImage

class SavedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var parties = [PFObject]()
    var selectedParty: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let query = PFQuery(className: "Posts")
        query.includeKeys(["host", "date", "party", "joined"])
        
        // Add condition down here to show saved event after connecting the MainfeedViewController with parse
        query.findObjectsInBackground{ (parties, error) in
            if parties != nil {
                self.parties = parties!
                self.tableView.reloadData()
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let party = parties[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell") as! PartyCell
        
        let user = party["host"] as! PFUser
            
        cell.hostNameLabel.text = user.username
        cell.eventNameLabel.text = party["party"] as? String
        cell.dateLabel.text = party["date"] as? String
        cell.capacityLabel.text = party["joined"] as? String
        
        let imageFile = party["image"] as! PFFileObject
        let urlString = imageFile.url!
        let url = URL(string: urlString)!
        
        cell.photoView.af_setImage(withURL: url)
        
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

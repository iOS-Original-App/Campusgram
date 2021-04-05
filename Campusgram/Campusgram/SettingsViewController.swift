//
//  SettingsViewController.swift
//  Campusgram
//
//  Created by Kennedi Cosma on 4/5/21.
//

import UIKit
import Parse


class SettingsViewController: UIViewController {
    
    @IBOutlet weak var collegeTextField: UITextField!
    
    @IBOutlet weak var schoolTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func deleteAccountButton(_ sender: Any) {
        //PFUser.delete("loginsegue")
    }
    
    @IBAction func logOutButton(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let LoginViewController = main.instantiateViewController(identifier: "LoginViewController")
        guard let windowscene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowscene as? AppDelegate else { return }
        
        //delegate.window?.rootViewController = LoginViewController
        
    

}
}

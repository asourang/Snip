//
//  LoginViewController.swift
//  Snip
//
//  Created by Aida Diallo on 1/27/21.
//

import UIKit

class LoginViewController: UIViewController {

  
    @IBOutlet var facebook: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // make the button corner round
        
        facebook.layer.cornerRadius=18
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

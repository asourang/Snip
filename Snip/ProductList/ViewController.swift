//
//  ViewController.swift
//  Snip
//
//  Created by Aida Diallo on 1/27/21.
//

import UIKit

class ViewController: UIViewController {
//signup and signin butttons
    @IBOutlet var signSignupBtn: UIButton!
    @IBOutlet var signLoginBtn: UIButton!
//facebook in login page

    override func viewDidLoad() {
        super.viewDidLoad()
    //making buttons from login/sign up page round corner
        signLoginBtn.layer.cornerRadius=18
        signSignupBtn.layer.cornerRadius=18
        
    //navigation
  
    }
       

}


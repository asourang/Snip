//
//  LevelViewController.swift
//  Snip
//
//  Created by Aida Diallo on 1/27/21.
//

import UIKit

class LevelViewController: UIViewController {

    @IBOutlet var skip: UIButton!
    @IBOutlet var beginner: UIButton!
    @IBOutlet var Expert: UIButton!
    @IBOutlet var intermediate: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        //making button corners round
        skip.layer.cornerRadius=18
        beginner.layer.cornerRadius=18
        Expert.layer.cornerRadius=18
        intermediate.layer.cornerRadius=18
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

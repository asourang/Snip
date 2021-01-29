//
//  HomeScreen.swift
//  Snip
//
//  Created by Aida Diallo on 1/28/21.
//

import UIKit

class HomeScreen: UITableViewCell {

    @IBOutlet var magni: UIImageView!
    @IBOutlet var snip: UIImageView!
    @IBOutlet var gp: UILabel!
    @IBOutlet var details: UILabel!
    @IBOutlet var tools: UILabel!
    @IBOutlet var kind: UILabel!
    @IBOutlet var Before: UILabel!
    @IBOutlet var locationIcon: UIImageView!
    @IBOutlet var userpic: UIImageView!
    @IBOutlet var mainpic: UIImageView!
    @IBOutlet var label: UILabel!
    @IBOutlet var comment: UIImageView!
    @IBOutlet var userPic: UIImageView!
    @IBOutlet var city: UILabel!
    
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
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

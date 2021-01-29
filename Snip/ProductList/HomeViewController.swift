//
//  HomeViewController.swift
//  Snip
//
//  Created by Aida Diallo on 1/28/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    //pic Array=======================================================//////////
    var picArray = ["scarf.png","sweater_1.png","skirt.png","socks.png"]
    var userArray = ["aida.jpg","girl1.png","man1.png","man2.png"]
    
    
    var productListArray: ResponseData?
    override func viewDidLoad() {
        super.viewDidLoad()

        loadJson(filename: "productList")
        
        
    }
    
    
    
    
// create models ans fetch data from JSON
    struct ResponseData: Decodable {
        var results: [Result]
    }
   
    struct Result : Decodable {
        var username: String
        var City: String
        var tags: String
        var productDescription: String
        var Tools: String
        var Gp: String
        var productImageUrl: String
   
    }

    func loadJson(filename fileName: String) {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                productListArray =  jsonData
            } catch {
                print("error:\(error)")
            }
        }
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let _ = productListArray{
            return productListArray?.results.count ?? 0
        }
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let custom_cell:HomeScreen? = tableView.dequeueReusableCell(withIdentifier: "HomeScreen") as? HomeScreen
        
        //making user pic round
        custom_cell?.userpic.layer.cornerRadius = 16.0
        custom_cell?.userpic.layer.masksToBounds = true
        
        
        //retrieving username
        custom_cell?.label.text = productListArray?.results[indexPath.row].username
        //retrieving kind of product
        custom_cell?.kind.text = productListArray?.results[indexPath.row].tags
        //retrieving kind of product tools
        custom_cell?.tools.text = productListArray?.results[indexPath.row].productDescription
        //retrieving kind of product tools details
        custom_cell?.details.text = productListArray?.results[indexPath.row].Tools
        //retrieving kind of product tools details
        custom_cell?.gp.text = productListArray?.results[indexPath.row].Gp
        
        //retrieving kind of product tools details
        custom_cell?.city.text = productListArray?.results[indexPath.row].City
        
        
        
       // main picture=======================================================////////////////////
        custom_cell?.mainpic.image=UIImage.init(named: picArray[indexPath.row])
        //user picture
        custom_cell?.userpic.image=UIImage.init(named: userArray[indexPath.row])
        
      
        
        
        return custom_cell ??  UITableViewCell()
    
        
    }
    
}
/*
 //
 //  ViewController.swift
 //  Snip
 //
 //  Created by Krunal Mistry on 1/27/21.
 //  Copyright © 2021 Apolis. All rights reserved.
 //

 import UIKit




 class ViewController: UIViewController, UITableViewDataSource {
     
     var productListArray: ResponseData?
     // Login and Sign up button for radius change
     override func viewDidLoad() {
         super.viewDidLoad()
         // Do any additional setup after loading the view.
         
         loadJson(filename: "productList")
         
         
     }
     
     
     
     
 // create models ans fetch data from JSON
     struct ResponseData: Decodable {
         var results: [Result]
     }
     
     struct Result : Decodable {
         var username: String
         var location: String
         var tags: String
     }

     func loadJson(filename fileName: String) {
         if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
             do {
                 let data = try Data(contentsOf: url)
                 let decoder = JSONDecoder()
                 let jsonData = try decoder.decode(ResponseData.self, from: data)
                 productListArray =  jsonData
             } catch {
                 print("error:\(error)")
             }
         }
     }
    
     
     /*-------------------------------------------------------------------------------*/
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         if let _ = productListArray{
             return productListArray?.results.count ?? 0
         }
         return 0
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
         let customCell:HomeDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "HomeDetailCell") as? HomeDetailTableViewCell
         customCell?.personNameLabel.text = productListArray?.results[indexPath.row].username
         
         return customCell ?? UITableViewCell()
     }

 }


 
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let user = cars[indexPath.row]
    let data = user.models
    let cell1 = HomeCell(title: data[0], location: data[1], time: data[2], tags: data[3], description: data[4], GP: data[5])
    let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell") as! HomeTableViewCell
    let url = URL(string: data[6])
    cell.image1.kf.setImage(with: url)
    cell.setCell(homeCell: cell1)
    return cell
}
}
*/

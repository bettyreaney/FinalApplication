//
//  RestaurantTableViewController.swift
//  FinalApplication
//
//  Created by Betty Reaney on 5/1/18.
//  Copyright © 2018 Betty Reaney. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    //MARK: Properties
    
    var restaurants = [Restaurant]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //Load the sample data
        
        loadSampleRestaurants()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "RestaurantTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? RestaurantTableViewCell else{
                fatalError("The dequeued cell is not an instance of Restaurant TableViewCell.")
        }
        
        

        // Fetches the appropriate meal for the data source layout.
        let restaurant = restaurants[indexPath.row]
        
        cell.nameLabel.text = restaurant.name
        cell.photoImageView.image = restaurant.photo
        cell.ratingControl.rating = restaurant.rating

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Actions
    
    @IBAction func unwindToRestaurantList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as?
            RestaurantViewController, let restaurant = sourceViewController.restaurant {
            
            //Add a new restaurant
            let newIndexPath = IndexPath(row: restaurants.count, section: 0)
            
            restaurants.append(restaurant)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        
        }
    }
    

    // MARK: Private Methods
    
    private func loadSampleRestaurants(){
        
        let photo1 = UIImage(named: "restaurant1")
        let photo2 = UIImage(named: "restaurant2")
        let photo3 = UIImage(named: "restaurant3")
        let photo4 = UIImage(named: "restaurant4")
        let photo5 = UIImage(named: "restaurant5")
        let photo6 = UIImage(named: "restaurant6")
        let photo7 = UIImage(named: "restaurant7")
        let photo8 = UIImage(named: "restaurant8")
        let photo9 = UIImage(named: "restaurant9")
        
        guard let restaurant1 = Restaurant(name: "BJ's", photo: photo1, rating: 4) else {
            fatalError("Unable to instantiate restaurant1")
            
        }
        guard let restaurant2 = Restaurant(name: "Cheesecake Factory", photo: photo2, rating: 5) else {
            fatalError("Unable to instantiate restaurant2")
            
        }
        guard let restaurant3 = Restaurant(name: "In N Out", photo: photo3, rating: 4) else {
            fatalError("Unable to instantiate restaurant3")
            
        }
        guard let restaurant4 = Restaurant(name: "Panda Express", photo: photo4, rating: 4) else {
            fatalError("Unable to instantiate restaurant4")
            
        }
        guard let restaurant5 = Restaurant(name: "Panera Bread", photo: photo5, rating: 2) else {
            fatalError("Unable to instantiate restaurant5")
            
        }
        guard let restaurant6 = Restaurant(name: "Kevin's Noodle House", photo: photo6, rating: 5) else {
            fatalError("Unable to instantiate restaurant6")
            
        }
        guard let restaurant7 = Restaurant(name: "Chipotle", photo: photo7, rating: 2) else {
            fatalError("Unable to instantiate restaurant7")
            
        }
        guard let restaurant8 = Restaurant(name: "McDonalds", photo: photo8, rating: 1) else {
            fatalError("Unable to instantiate restaurant8")
            
        }
        guard let restaurant9 = Restaurant(name: "Wing Stop", photo: photo9, rating: 3) else {
            fatalError("Unable to instantiate restaurant9")
            
        }
        
         restaurants += [restaurant1, restaurant2, restaurant3, restaurant4, restaurant5, restaurant6, restaurant7, restaurant8, restaurant9]
        
        
    
    }
    
    
        
}

//
//  TypesTableViewController.swift
//  POKEDEX-P4
//
//  Created by María Ortega on 08/11/2017.
//  Copyright © 2017 María Ortega. All rights reserved.
//

import UIKit

class TypesTableViewController: UITableViewController {
    
    var pokedexModel = PokedexModel()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        
        return pokedexModel.types.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Type Cell", for: indexPath) as! TypeTableViewCell
        let type = pokedexModel.types[indexPath.row]
        cell.name.text = type.name
        cell.races.text = "Hay \(type.races.count) razas"
        cell.typeImage.image = UIImage(named: "\(type.icon)")
    
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

       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Races"{
            if let rvc = segue.destination as? RacesTableViewController{
                rvc.pokedexModel = pokedexModel
                if let ip = tableView.indexPathForSelectedRow{
                  rvc.typeIndex = ip.row
                }
            }
        }
    }
    

}

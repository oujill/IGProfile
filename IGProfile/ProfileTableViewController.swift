//
//  ProfileTableViewController.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/27.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            print("cell1")
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ProfileCell1TableViewCell
            return cell1
        }else if indexPath.section == 1{
            print("cell2")
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! ProfileCell2TableViewCell
            return cell2
        }else if indexPath.section == 2{
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! ProfileCell3TableViewCell
            return cell3
        }else if indexPath.section == 3{
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! ProfileCell4TableViewCell
            return cell4
        }else{
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! ProfileCell5TableViewCell
            return cell5
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 257
        }else if indexPath.section == 1{
            return 44
        }else if indexPath.section == 2{
            return 94
        }else if indexPath.section == 3{
            return 68
        }else{
            return 308
        }
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

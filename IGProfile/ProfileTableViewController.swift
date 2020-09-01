//
//  ProfileTableViewController.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/27.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ProfileTableViewController: UITableViewController{
    var profiles: Profile?
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://www.instagram.com/weibirdmusic/?__a=1".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        if let url = URL(string: urlString){
            let decoder = JSONDecoder()
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let data = data, let profileresults = try? decoder.decode(Profile.self, from: data){
                    //print("has data")
                    self.profiles = profileresults
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }else{
                    print("no data")
                }
            }.resume()
        }
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
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! ProfileCell1TableViewCell
            if let profile = profiles{
                if let imagedata = try? Data(contentsOf: profile.graphql.user.profile_pic_url){
                    cell1.profile_pic_url.image = UIImage(data: imagedata)
                }
                cell1.edge_owner_to_timeline_media.text = convertcount(count: profile.graphql.user.edge_owner_to_timeline_media.count)
                cell1.edge_follow.text = convertcount(count: profile.graphql.user.edge_follow.count)
                cell1.edge_followed_by.text = convertcount(count: profile.graphql.user.edge_followed_by.count)
                cell1.full_name.text = profile.graphql.user.full_name
                cell1.biography.text = profile.graphql.user.biography
                cell1.external_url.text = "\(profile.graphql.user.external_url)"
            
            }
            return cell1
        }else if indexPath.section == 1{
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! ProfileCell2TableViewCell
            return cell2
        }else if indexPath.section == 2{
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! ProfileCell3TableViewCell
            if let profile = profiles{
                cell3.profiles = profile
                DispatchQueue.main.async {
                    cell3.collectionView.reloadData()
                }
            };
            return cell3
        }else if indexPath.section == 3{
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! ProfileCell4TableViewCell
            return cell4
        }else{
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! ProfileCell5TableViewCell
            if let profile = profiles{
                cell5.profiles = profile
                DispatchQueue.main.async {
                    cell5.collectionView.reloadData()
                }
            }
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
    
    
    func convertcount(count:Int)->String{
        var countString = ""
        if (count/100000000) != 0{
            let count1 = (count/100000000)
            let count2 = ((count%100000000)/10000000)
            countString = "\(count1).\(count2)億"
        }else if (count/10000) != 0{
            let count3 = (count/10000)
            let count4 = (count%10000)/1000
            countString = "\(count3).\(count4)萬"
            print(count4)
        }else{
            countString = "\(count)"
        }
        return countString
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

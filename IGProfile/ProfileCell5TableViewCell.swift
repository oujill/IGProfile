//
//  ProfileCell5TableViewCell.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/27.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ProfileCell5TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var profiles: Profile?
    @IBOutlet weak var collectionView: UICollectionView!
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let profiles = profiles{
            return 12
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath) as! ProfileCollectionViewCell
        if let profiles = profiles, let imagedata = try? Data(contentsOf: profiles.graphql.user.edge_owner_to_timeline_media.edges[indexPath.row].node.display_url){
            //print("profiles is ")
            //print(profiles.graphql.user.edge_owner_to_timeline_media.edges[indexPath.row].node.display_url)
            cell.collectionImageView.image = UIImage(data: imagedata)
        }else{
            print("no collectionview imagedata")
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (collectionView.bounds.width/3), height: (collectionView.bounds.width/3))
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


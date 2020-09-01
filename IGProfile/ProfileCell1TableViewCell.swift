//
//  ProfileCell1TableViewCell.swift
//  IGProfile
//
//  Created by JillOU on 2020/8/27.
//  Copyright © 2020 Jillou. All rights reserved.
//

import UIKit

class ProfileCell1TableViewCell: UITableViewCell {
    @IBOutlet weak var profile_pic_url: UIImageView!
    @IBOutlet weak var edge_owner_to_timeline_media: UILabel!
    @IBOutlet weak var edge_followed_by: UILabel!
    @IBOutlet weak var edge_follow: UILabel!
    @IBOutlet weak var full_name: UILabel!
    @IBOutlet weak var biography: UILabel!
    @IBOutlet weak var external_url: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profile_pic_url.layer.cornerRadius = profile_pic_url.bounds.width/2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

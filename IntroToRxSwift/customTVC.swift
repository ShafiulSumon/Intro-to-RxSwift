//
//  customTVC.swift
//  IntroToRxSwift
//
//  Created by ShafiulAlam-00058 on 4/6/23.
//

import UIKit

class customTVC: UITableViewCell {

    //@IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

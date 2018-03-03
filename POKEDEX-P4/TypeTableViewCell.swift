//
//  TypeTableViewCell.swift
//  POKEDEX-P4
//
//  Created by María Ortega on 08/11/2017.
//  Copyright © 2017 María Ortega. All rights reserved.
//

import UIKit

class TypeTableViewCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var races: UILabel!
    @IBOutlet weak var typeImage: UIImageView!
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

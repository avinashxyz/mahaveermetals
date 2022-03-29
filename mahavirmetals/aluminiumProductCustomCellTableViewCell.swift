//
//  aluminiumProductCustomCellTableViewCell.swift
//  mahavirmetals
//
//  Created by AVINASH on 30/03/22.
//

import UIKit

class aluminiumProductCustomCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var alumnProductImageView: UIImageView!
    
    @IBOutlet weak var aluminiumProductTitle: UILabel!
    
    @IBOutlet weak var aluminProductSpec1: UILabel!
    
    @IBOutlet weak var aluminProductSpec2: UILabel!
    
    @IBOutlet weak var Price: UILabel!
    
    @IBOutlet weak var aluminProductSpec3: UILabel!
    
    @IBOutlet weak var aluminProductSpec4: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  TableViewCell.swift
//  AddDeleteCell
//
//  Created by Brian Bachow on 1/26/22.
//

import UIKit

class EditTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

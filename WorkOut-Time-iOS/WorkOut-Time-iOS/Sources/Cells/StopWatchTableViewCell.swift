//
//  StopWatchTableViewCell.swift
//  WorkOut-Time-iOS
//
//  Created by 민 on 2023/07/05.
//

import UIKit

class StopWatchTableViewCell: UITableViewCell {

    @IBOutlet weak var lapLabel: UILabel!
    @IBOutlet weak var recordLabel: UILabel!
    @IBOutlet weak var diffLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() -> UINib {
        return UINib(nibName: Const.Xib.stopWatchTableViewCell, bundle: nil)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

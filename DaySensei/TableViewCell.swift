//
//  TableViewCell.swift
//  DaySensei
//
//  Created by Michał Riske on 01/04/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var iconEvent: UIImageView!
    @IBOutlet weak var nameEvent: UILabel!
    @IBOutlet weak var counterEvent: UILabel!
    
    
    func setCell(variable: UserData) { // funckja do delekacji protokołów
        iconEvent.image = variable.icon
        nameEvent.text = variable.name
        counterEvent.text = variable.date
    
    }
}

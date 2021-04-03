//
//  PrototypeData.swift
//  DaySensei
//
//  Created by Michał Riske on 01/04/2021.
//

import Foundation
import UIKit
//co musi podać użytkownik? Ikonę, datę, nazwę

class UserData {
    internal init(icon: UIImage, name: String, date: String) { //inicjalizacja stworzona automatycznie
        self.icon = icon
        self.name = name
        self.date = date
    }
    
    var icon: UIImage
    var name: String
    var date: String
    
}

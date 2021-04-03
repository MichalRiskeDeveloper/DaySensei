//
//  ViewController.swift
//  DaySensei
//
//  Created by Michał Riske on 01/04/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableTable: UITableView!
    
    var userData: [UserData] = [] //stworzenie pustej tablicy typu UserData, jest to nazwa klasy z pliku PrototypeData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userData = createArray()
        
        
        
    }
    
    func createArray() -> [UserData] {
        
        var tempUserData: [UserData] = []
        
        let data1 = UserData(icon: #imageLiteral(resourceName: "UberConference"), name: "Alko", date: "2000") //obiekt
        let data2 = UserData(icon: #imageLiteral(resourceName: "Übersicht"), name: "Fajki", date: "1240")
        let data3 = UserData(icon: #imageLiteral(resourceName: "uBar"), name: "Coś tam", date: "124124")
        
        tempUserData.append(data1)
        tempUserData.append(data2)
        tempUserData.append(data3)
        
        return tempUserData
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //ilość rzędów tablicy
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { //kurwa magia
        let variable = userData[indexPath.row]
        let anotherVariable = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! TableViewCell
       
        anotherVariable.setCell(variable: variable)
    
        return anotherVariable
        
    }
}

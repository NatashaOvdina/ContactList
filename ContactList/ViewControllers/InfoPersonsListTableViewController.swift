//
//  InfoPersonsListTableViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 15.12.2023.
//

import UIKit

final class InfoPersonsListTableViewController: UITableViewController {
    
    private var personsList = Person.getUniquePeopleList()
    var person: Person!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}

// MARK: - UITableViewDataSource
extension InfoPersonsListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        person.title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "telephoneDetailCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
           if indexPath.row == 0 {
               content.text = person.telephoneNumber
           } else {
               content.text = person.email
           }
           
           return cell
       }

}

//
//  ViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 14.12.2023.
//

import UIKit

final class PersonsListViewController: UITableViewController {

    
    private var personsList = Person.getRandomPeople()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

// MARK: - UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.title
        
        cell.contentConfiguration = content
        return cell
    }
}

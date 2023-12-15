//
//  InfoPersonsListTableViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 15.12.2023.
//

import UIKit

final class InfoPersonsListTableViewController: UITableViewController {
    
    private var personsList = Person.getUniquePeopleList()
    var person: [Person]!
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
        person[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        let person = personsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        if indexPath.row == 0 {
            content.text = person.telephoneNumber
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(
        _ tableView: UITableView,
        moveRowAt sourceIndexPath: IndexPath,
        to destinationIndexPath: IndexPath
    ) {
        let currentPerson = person.remove(at: sourceIndexPath.row)
        person.insert(currentPerson, at: destinationIndexPath.row)
    }
}

// MARK: - UITableViewDelegate
extension InfoPersonsListTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
}

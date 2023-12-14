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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = personsList[indexPath.row]
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
    
    override func tableView(
        _ tableView: UITableView,
        moveRowAt sourceIndexPath: IndexPath,
        to destinationIndexPath: IndexPath
    ) {
        let currentPerson = personsList.remove(at: sourceIndexPath.row)
        personsList.insert(currentPerson, at: destinationIndexPath.row)
    }
}

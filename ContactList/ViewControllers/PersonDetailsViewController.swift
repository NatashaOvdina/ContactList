//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by Natalia Ovdina on 14.12.2023.
//

import UIKit

final class PersonDetailsViewController: UIViewController {

    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.title
        numberLabel.text = "Phone number: \(person.telephoneNumber)"
        emailLabel.text = "Email: \(person.email)"

    }
    



}

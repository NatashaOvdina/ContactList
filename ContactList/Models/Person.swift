//
//  Person.swift
//  ContactList
//
//  Created by Natalia Ovdina on 14.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let telephoneNumber: String
    
    var title: String {
        "\(name) \(surname)"
    }
}

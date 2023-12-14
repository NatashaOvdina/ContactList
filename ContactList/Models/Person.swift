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
    
    static func getRandomPeople() -> [Person] {
        var randomPeople: [Person] = []
        
        let persons = DataStore()
        
        for _ in 1...persons.names.count {
            let randomName = persons.names.randomElement() ?? ""
            let randomSurname = persons.surnames.randomElement() ?? ""
            let randomEmail = persons.emails.randomElement() ?? ""
            let randomTelephone = persons.telephoneNumbers.randomElement() ?? ""
            
            let person = Person(name: randomName, surname: randomSurname, email: randomEmail, telephoneNumber: randomTelephone)
            
            randomPeople.append(person)
        }
        return randomPeople
    }
}

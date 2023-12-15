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
        
    static func getUniquePeopleList() -> [Person] {
        var uniquePeople: [Person] = []
        let dataStore = DataStore()
        
        
        let names = dataStore.names.shuffled()
        let surnames = dataStore.surnames.shuffled()
        let emails = dataStore.emails.shuffled()
        let telephoneNumbers = dataStore.telephoneNumbers.shuffled()
        
        let peopleCount = [
            names.count,
            surnames.count,
            emails.count,
            telephoneNumbers.count
        ].min()
        
        guard let peopleCount else { return [] }
        
        for index in 0..<peopleCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                telephoneNumber: telephoneNumbers[index]
            )
            
            uniquePeople.append(person)
            
        }
        return uniquePeople
    }
}


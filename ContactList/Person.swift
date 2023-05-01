//
//  Contacts.swift
//  ContactList
//
//  Created by Alexey Kanaev on 4/18/23.
//
import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let telephoneNumber: String
    
    var fullName: String {
        "\(name)  \(surname)"
    }
// привет 

    static func getContact() -> [Person] {
        var person: [Person] = []
        nameList.shuffle()
        surnameList.shuffle()
        emailList.shuffle()
        telephoneList.shuffle()

        for _ in 1...10 {
            let newContact = Person(
                name: nameList.popLast() ?? "",
                surname: surnameList.popLast() ?? "",
                email: emailList.popLast() ?? "",
                telephoneNumber: telephoneList.popLast() ?? ""
            )
            person.append(newContact)
        }
        return person
    }
}

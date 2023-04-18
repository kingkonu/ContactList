//
//  Contacts.swift
//  ContactList
//
//  Created by Alexey Kanaev on 4/18/23.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let telephoneNumber: String

    var fullName: String {
        "\(name)  \(surname)"
    }

    static func getContact() -> [Person] {
        [
            Person(name: "Ivan", surname: "Ivanov", email: "", telephoneNumber: ""),
            Person(name: "Ivan", surname: "Ivanov", email: "", telephoneNumber: ""),
            Person(name: "Ivan", surname: "Ivanov", email: "", telephoneNumber: "")
        ]
    }
}

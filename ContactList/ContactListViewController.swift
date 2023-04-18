//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Alexey Kanaev on 4/18/23.
//

import UIKit

final class ContactListViewController: UITableViewController {

    private var contactList = Person.getContact()

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contactList[indexPath.row]
        let detailVC = segue.destination as? ContactDetailsViewController
        detailVC?.person = person
    }
}
// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        content.text = contact.name
        content.secondaryText = contact.surname
        cell.contentConfiguration = content
        return cell
    }
}


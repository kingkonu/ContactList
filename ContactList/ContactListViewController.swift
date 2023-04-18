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

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
    // MARK: - UITableViewDataSource
    extension ContactListViewController {
//        override func numberOfSections(in tableView: UITableView) -> Int {
//            // #warning Incomplete implementation, return the number of sections
//            return 0
//        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
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

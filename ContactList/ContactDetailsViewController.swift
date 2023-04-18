//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Alexey Kanaev on 4/18/23.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    @IBOutlet weak var telephoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        telephoneLabel.text = "PHONE: \(person.telephoneNumber)"
        emailLabel.text = "E-Mail: \(person.email)"
    }
}

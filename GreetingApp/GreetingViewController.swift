//
//  ViewController.swift
//  GreetingApp
//
//  Created by Lera Savchenko on 7.11.23.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        greetingLabel.text = "Hello \(person.name) \(person.surname)!"
    }


}


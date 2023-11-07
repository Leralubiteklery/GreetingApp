//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Lera Savchenko on 7.11.23.
//

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    private unowned let view: GreetingViewProtocol
    private let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
}

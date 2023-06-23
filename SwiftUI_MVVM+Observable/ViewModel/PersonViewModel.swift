//
//  PersonViewModel.swift
//  SwiftUI_MVVM+Observable
//
//  Created by BS1095 on 21/6/23.
//

import Foundation


class PersonViewModel: ObservableObject {  //an obj whose changes can be observed by views.
    
    @Published var people: [Person] = []   //Published attribute means this property will be observed for changes
    
    init(){
        people = peopleData
    }
    
    func shuffleOrder(){
        people.shuffle()
    }
    
    func reverseOrder(){
        people.reverse()
    }
    
    func removeLastPerson(){
        people.removeLast()
    }
    
    func removeFirstPerson(){
        people.removeFirst()
    }
}

let peopleData = [
    Person(name: "John Snow", email: "jon@email.com", phoneNum: "018-3294"),
    Person(name: "Daenarys Targaryen", email: "dan@email.com", phoneNum: "018-3294"),
    Person(name: "Robert Baratheon", email: "robert@email.com", phoneNum: "018-3294"),
    Person(name: "Cersei Lannister", email: "cersei@email.com", phoneNum: "018-3294"),
    Person(name: "Samwell Tarlie", email: "samu@email.com", phoneNum: "018-3294"),
]

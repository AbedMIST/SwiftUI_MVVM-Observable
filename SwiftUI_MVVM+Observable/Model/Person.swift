//
//  Person.swift
//  SwiftUI_MVVM+Observable
//
//  Created by BS1095 on 21/6/23.
//

import SwiftUI

struct Person: Identifiable{     //Idetifiable protocol provides unique identifier for a data model
    var id = UUID()        //generating unique identifier to identify resource/entitu
    var name: String
    var email: String
    var phoneNum: String
}

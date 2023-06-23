//
//  ContentView.swift
//  SwiftUI_MVVM+Observable
//
//  Created by BS1095 on 21/6/23.
//

import SwiftUI

struct PeopleView: View {
    
    @ObservedObject var viewModel = PersonViewModel()  //observe object and update UI
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            
            NavigationView {
                
                ScrollView {
                    
                    ForEach(viewModel.people) { person in
                        HStack {
                            Text(person.name)
                                .font(.title)
                                .fontWeight(.bold)
                            Spacer()
                            
                            VStack(alignment: .trailing){
                                Text(person.phoneNum)
                                Text(person.email)
                            }
                        }
                        .frame(height: 80)
                        .padding(12)
                    }
                }

                
                .navigationTitle("Observed Object:")
                .navigationBarItems(trailing:
                                        
                    Menu("Menu".uppercased()){
                        Button("Reverse", action: {viewModel.reverseOrder()})
                        Button("Shuffle", action: {viewModel.shuffleOrder()})
                        Button("Remove first", action: {viewModel.removeFirstPerson()})
                        Button("Remove last", action: {viewModel.removeLastPerson()})
                    }
                    .menuStyle(DefaultMenuStyle())
                    .font(.headline)
                    .foregroundColor(.green)
                    .padding(5)
                )
            }
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}

//
//  ContentView.swift
//  Cmbin2
//
//  Created by cmStudent on 2022/07/11.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject private var viewModel: ContentViewModel
    
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        NavigationView {
            
            VStack{
                NavigationLink(
                    destination: StartView(viewModel: ContentViewModel())){
                    Text("Start")
                        
                            .font(.largeTitle)
                            .foregroundColor(Color.pink)
                            .padding(0.0)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        
                            
                    }
                    .navigationTitle("")
                
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
        
        
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: ContentViewModel())
    }
}

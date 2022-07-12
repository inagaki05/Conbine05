//
//  StartView.swift
//  Cmbin2
//
//  Created by cmStudent on 2022/07/12.
//

import SwiftUI

struct StartView: View {
    @ObservedObject private var viewModel: ContentViewModel
    init(viewModel: ContentViewModel) {
        self.viewModel = viewModel
    }
    var body: some View{
        
        HStack{
            Text("  \(viewModel.firostNumber) + \(viewModel.therdNumber)  = \(viewModel.reply)")
                .font(.system(size: 40, weight: .black, design: .default))
                .fontWeight(.heavy)
                .foregroundColor(Color.white)
        }
        Text(viewModel.message)
            .font(.title)
        
        
        VStack {
            Text("\(viewModel.count)")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            
                .disabled(viewModel.isTimerRunning)
            
            
            Button("Reset") {
                viewModel.resetCount()
            }
            
            Group{
                VStack(spacing: 10){
                    HStack(spacing: 30){
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=1
                        }) {
                            Text("1")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                            
                        }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=2
                           
                        }) {
                            Text("2")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                            .font(.system(size: 70, weight: .black, design: .default))                            }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=3
                       
                        }) {
                            Text("3")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                    }
                    HStack(spacing: 30){
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=4
                        
                        }) {
                            Text("4")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=5
                    
                        }) {
                            Text("5")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=6
                        }) {
                            Text("6")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        
                    }
                    HStack(spacing: 30){
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=7
                        }) {
                            Text("7")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=8
                        }) {
                            Text("8")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=9
                          
                        }) {
                            Text("9")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                    }
                    HStack(spacing: 30){
                        Button(action: {
                            viewModel.reply*=10
                            viewModel.reply+=0
                       
                        }) {
                            Text("0")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        Button(action: {
                            viewModel.marutoke()
                            viewModel.Question()
                            viewModel.countAnswer()
                            viewModel.reply = 0
                            
                            
                        }) {
                            Text("決")
                                .frame(width: 80, height: 50)
                                .foregroundColor(.green)
                                .font(.system(size: 70, weight: .black, design: .default))
                        }
                        
                        
                        
                    }
                    .onAppear(){
                        viewModel.startCounting()
                    }
                }
                
            }
        }
    }
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView(viewModel: ContentViewModel())
    }
}

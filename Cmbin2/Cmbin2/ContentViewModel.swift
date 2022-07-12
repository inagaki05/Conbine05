//
//  ContentViewModel.swift
//  Cmbin2
//
//  Created by cmStudent on 2022/07/11.
//

import Foundation
import Combine

final class ContentViewModel: ObservableObject {
    @Published var count = 0
    @Published var isTimerRunning = false
    @Published var firostNumber = Int.random(in: 1...9)
    @Published var therdNumber = Int.random(in: 10...100)
    @Published var Anser = 893
    @Published var message = "答えを打ち込んでね"
    @Published var owari = 0
    @Published var reply = 0
    @Published var counti = 0
    
    private var cancellable: AnyCancellable?
    
    func startCounting() {
        isTimerRunning = true
        cancellable = Timer.publish(every: 1.0, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.count += 1
            }
    }
    
    func stopCounting() {
        isTimerRunning = false
        cancellable?.cancel()
    }
    
    func resetCount() {
        count = 0
    }
    
    func Question(){
        
        
        firostNumber = Int.random(in: 10...100)
        therdNumber = Int.random(in: 1...9)
        Anser  = firostNumber + therdNumber
    }
    
    
    
    func countAnswer(){
        if counti<9 {
            
            counti+=1
        }else{
            
            stopCounting()
            
        }
    }
    
    
    
    
    
    
    func marutoke(){
        
        if owari<10 {
            owari+=1
            if Anser == reply{
                message = "正解"
            }else {
                message = "不正解"
            }
            reply=0
        }else{
            message = ("終了")
        }
        
    }
}

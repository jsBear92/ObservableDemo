//
//  ContentView.swift
//  ObservableDemo
//
//  Created by Jaeseong Jeong on 22/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var timerData: TimerData = TimerData()
    
    func resetCount() {
        timerData.resetCount()
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Timer count = \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: resetCount, label: {
                    Text("Reset Counter")
                })
                NavigationLink(destination: SecondView(), label: {
                    Text("Next Screen")
                })
                .padding()
            }
        }
        .environmentObject(timerData)
    }
}

#Preview {
    ContentView()
}

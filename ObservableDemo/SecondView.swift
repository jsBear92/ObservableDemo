//
//  SecondView.swift
//  ObservableDemo
//
//  Created by Jaeseong Jeong on 22/12/2023.
//

import SwiftUI

struct SecondView: View {
    
    @EnvironmentObject var timerData: TimerData
    
    var body: some View {
        VStack {
            Text("Second View")
                .font(.largeTitle)
            Text("Timer Count = \(timerData.timeCount)")
                .font(.headline)
                .padding()
        }
    }
}

#Preview {
    SecondView().environmentObject(TimerData())
}

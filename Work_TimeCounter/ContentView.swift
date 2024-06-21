//
//  ContentView.swift
//  Work_TimeCounter
//
//  Created by Luis Benvenuto on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    
    private var timer = PomTimer(workInSeconds: 100, breakInSeconds: 5)
    
    var body: some View{
        VStack{
            CircleTimer(fraction: timer.fractionPassed, primaryText: timer.secondsLeftString, secondaryText: timer.mode.rawValue)
            
            //buttons
            HStack {
                if timer.state == .idle && timer.mode == .pause {
                    CircleButton(icon: "forward.fill") {
                        timer.skip()
                    }
                }
                if timer.state == .idle{
                    CircleButton(icon: "play.fill"){
                        timer.start()
                    }
                }
                if timer.state == .paused {
                    CircleButton(icon: "play.fill") {
                        timer.resume()
                    }
                }
                if timer.state == .running{
                    CircleButton(icon: "pause.fill") {
                        timer.pause()
                    }
                }
                if timer.state == .running || timer.state == .paused {
                    CircleButton(icon: "stop.fill") {
                        timer.reset()
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color("Light"), Color("Dark")]),
                center: .center,
                startRadius: 5,
                endRadius: 500
            )
        )
    }
}

#Preview {
    ContentView()
}

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
        TabView{
            ViewA()
                .tabItem() {
                    Image(systemName: "phone.fill")
                    Text("Calls")
                }
            ViewB()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("counter")
                }
            }
        }
        
}

#Preview {
    ContentView()
}

//
//  ViewA.swift
//  Work_TimeCounter
//
//  Created by Luis Benvenuto on 21/06/24.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Text("Hello World")
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color("Light"), Color.green]),
                center: .center,
                startRadius: 5,
                endRadius: 500
            )
        )
    }
}

#Preview {
    ViewA()
}

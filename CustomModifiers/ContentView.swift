//
//  ContentView.swift
//  CustomModifiers
//
//  Created by ramil on 08.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            //.modifier(CustomTitle())
            .customTitle()
    }
}

extension View {
    func customTitle() -> some View {
        self.modifier(CustomTitle())
    }
}

struct CustomTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.largeTitle)
            .foregroundColor(.blue)
            .background(Color.yellow)
            .border(Color.blue, width: 0.5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

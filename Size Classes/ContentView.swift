//
//  ContentView.swift
//  Size Classes
//
//  Created by Yang Chi on 2022/7/22.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var isLandscape: Bool { verticalSizeClass == .compact }
    
    var body: some View {
        VStack {
            Text(isLandscape ? "I'm landscape" : "I'm portrait")
                .font(.largeTitle).bold()
                .foregroundColor(isLandscape ? .red : .blue)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

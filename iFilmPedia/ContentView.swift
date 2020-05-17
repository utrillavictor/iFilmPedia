//
//  ContentView.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/7/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        NavigationView {
            ZStack {
                NavigationLink(destination: Register(show: self.$show), isActive: self.$show) {
                    Text("")
                }
                .hidden()
                
                Login(show: self.$show)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

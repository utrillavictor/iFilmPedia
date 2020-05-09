//
//  ContentView.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/7/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isDark = true
    @State private var isShowingMenu = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            GeometryReader { _ in
                VStack {
                    ZStack {
                        HStack {
                            Button(action: {
                                withAnimation(.default) {
                                    self.isShowingMenu.toggle()
                                }
                            }) {
                                Image(systemName: "line.horizontal.3")
                                    .font(.system(size: 28))
                            }
                            
                            Spacer()
                        }
                        
                        Text("iFilmPedia")
                    }
                    .padding()
                    .foregroundColor(Color.primary)
                    .overlay(
                        Rectangle()
                            .stroke(Color.primary.opacity(0.1), lineWidth: 1)
                            .shadow(radius: 3)
                            .edgesIgnoringSafeArea(.top)
                    )
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        GridView(rows: 3, columns: 2) { (row, col) in
                            Card()
                        }
                    }
                    
                    Spacer()
                }
            }
            
            HStack {
                MenuView(isDark: $isDark, isShowingMenu: $isShowingMenu)
                    .preferredColorScheme(isDark ? .dark : .light)
                    .offset(x: self.isShowingMenu ? 0 : -UIScreen.main.bounds.width / 1.5)
                
                Spacer(minLength: 0)
            }
            .background(
                Color.primary.opacity(self.isShowingMenu ? (self.isDark ? 0.05 : 0.2) : 0)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

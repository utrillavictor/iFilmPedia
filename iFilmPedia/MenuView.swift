//
//  MenuView.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/7/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    @Binding var isDark: Bool
    @Binding var isShowingMenu: Bool
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    withAnimation(.default) {
                        self.isShowingMenu.toggle()
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 28, weight: .light))
                        .frame(width: 44, height: 44)
                }
                
                Spacer()
                
                Button(action: {
                    // TODO: Implement me
                    print("Edit profile")
                }) {
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                }
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("qtpie")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 71)
                .clipShape(Circle())
            
            VStack(spacing: 12) {
                Text("Michael Santana")
                
                Text("LoLer")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            HStack(spacing: 22) {
                Image(systemName: "moon.fill")
                    .font(.title)
                
                Text("Dark Mode")
                
                Spacer()
                
                Button(action: {
                    self.isDark.toggle()
                    
                    UIApplication.shared.windows.first?.rootViewController?.view.overrideUserInterfaceStyle = self.isDark ? .dark : .light
                }) {
                    Image("switch")
                        .resizable()
                        .frame(width: 44, height: 44)
                        .rotationEffect(.degrees(isDark ? 180 : 0))
                }
            }
            .padding(.top, 25)
            
            Spacer()
        }
        .foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background(
            (isDark ? Color.black : Color.white)
                .edgesIgnoringSafeArea(.all)
        )
        .overlay(
            Rectangle()
                .stroke(Color.primary.opacity(0.2), lineWidth: 2)
                .shadow(radius: 3).edgesIgnoringSafeArea(.all)
        )
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isDark: Binding.constant(false),
                 isShowingMenu: Binding.constant(false))
    }
}

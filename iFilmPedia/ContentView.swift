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
        //        ZStack(alignment: .leading) {
        //            GeometryReader { _ in
        //                VStack {
        //                    ZStack {
        //                        HStack {
        //                            Button(action: {
        //                                withAnimation(.default) {
        //                                    self.isShowingMenu.toggle()
        //                                }
        //                            }) {
        //                                Image(systemName: "line.horizontal.3")
        //                                    .font(.system(size: 28))
        //                            }
        //
        //                            Spacer()
        //                        }
        //
        //                        Text("iFilmPedia")
        //                    }
        //                    .padding()
        //                    .foregroundColor(Color.primary)
        //                    .overlay(
        //                        Rectangle()
        //                            .stroke(Color.primary.opacity(0.1), lineWidth: 1)
        //                            .shadow(radius: 3)
        //                            .edgesIgnoringSafeArea(.top)
        //                    )
        //
        //                    ScrollView(.vertical, showsIndicators: false) {
        //                        GridView(rows: 3, columns: 2) { (row, col) in
        //                            Card()
        //                        }
        //                    }
        //
        //                    Spacer()
        //                }
        //            }
        //
        //            HStack {
        //                MenuView(isDark: $isDark, isShowingMenu: $isShowingMenu)
        //                    .preferredColorScheme(isDark ? .dark : .light)
        //                    .offset(x: self.isShowingMenu ? 0 : -UIScreen.main.bounds.width / 1.5)
        //
        //                Spacer(minLength: 0)
        //            }
        //            .background(
        //                Color.primary.opacity(self.isShowingMenu ? (self.isDark ? 0.05 : 0.2) : 0)
        //                    .edgesIgnoringSafeArea(.all)
        //            )
        //        }
        Login()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Login: View {
    @State private var color = Color.black.opacity(0.7)
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            GeometryReader { _ in
                VStack {
                    Image("movie")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                    
                    Text("Log in to your account")
                        .foregroundColor(self.color)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 35)
                    
                    TextField("Email", text: self.$username)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(self.username != "" ? Color("Color") : self.color, lineWidth: 2)
                        )
                        .padding(.top, 25)
                    
                    HStack(spacing: 15) {
                        VStack {
                            if self.showPassword {
                                TextField("Passworkd", text: self.$password)
                            } else {
                                SecureField("Password", text: self.$password)
                            }
                        }
                        
                        Button(action: {
                            self.showPassword.toggle()
                        }) {
                            Image(systemName: self.showPassword ? "eye.slash.fill" : "eye.fill")
                                .foregroundColor(self.color)
                        }
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(self.password != "" ? Color("Color") : self.color, lineWidth: 2)
                    )
                    .padding(.top, 8)
                    
                    HStack {
                        Spacer()
                        
                        Text("Forgot Password?")
                            .foregroundColor(Color("Color"))
                            .fontWeight(.bold)
                    }
                    .padding(.top, 20)
                    
                    Button(action: {
                        
                    }) {
                        Text("Log in")
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width - 50)
                    }
                    .background(Color("Color"))
                    .cornerRadius(10)
                    .padding(.top, 25)
                }
                .padding(.horizontal, 25)
            }
            
            Button(action: {
                
            }) {
                Text("Register")
                    .foregroundColor(Color("Color"))
                    .fontWeight(.bold)
            }
            .padding()
        }
    }
}

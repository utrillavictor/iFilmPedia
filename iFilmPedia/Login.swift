//
//  Login.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/17/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

struct Login: View {
    @Binding var show: Bool
    @State private var color = Color.black.opacity(0.7)
    @State private var username = ""
    @State private var password = ""
    @State private var showPassword = false
    
    var body: some View {
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
                
                HStack(spacing: 15) {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    
                    TextField("Email", text: self.$username)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(self.username != "" ? Color("Color") : self.color, lineWidth: 2)
                )
                .padding(.top, 25)
                
                HStack(spacing: 15) {
                    Image(systemName: "lock")
                        .foregroundColor(.gray)
                    
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
                        .font(.footnote)
                        .fontWeight(.bold)
                }
                .padding(.top, 20)
                
                Button(action: {
                    
                }) {
                    Text("Log in")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width - 50)
                }
                .background(Color("Color"))
                .cornerRadius(10)
                .padding(.top, 25)
                
                HStack {
                    Color(.black)
                        .frame(width: 20, height: 1)
                    
                    Text("Or")
                    
                    Color(.black)
                        .frame(width: 20, height: 1)
                }
                .padding(.top, 25)
                
                Button(action: {
                    self.show.toggle()
                }) {
                    Text("Register")
                        .foregroundColor(Color("Color"))
                        .fontWeight(.bold)
                }
                .padding()
            }
            .padding(.horizontal, 25)
            
            Spacer()
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(show: Binding.constant(false))
    }
}

//
//  Card.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/8/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            Image("GOTG\(Int.random(in: 1...2))")
                .resizable()
                .scaledToFit()
                .frame(width: (UIScreen.main.bounds.width - 45) / 2, height: 260)
                .cornerRadius(18)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}

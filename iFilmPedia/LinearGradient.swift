//
//  LinearGradient.swift
//  iFilmPedia
//
//  Created by Victor Cordero Utrilla on 5/17/20.
//  Copyright © 2020 Victor Cordero Utrilla. All rights reserved.
//

import SwiftUI

extension LinearGradient {
    
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

//
//  Intro.swift
//  redbook
//
//  Created by 苏粤翔 on 2023/8/8.
//

import SwiftUI

struct Intro: Identifiable{
    var id : UUID = .init()
    var text: String
    var textColor: Color
    var circleColor: Color
    var bgColor:Color
    var circleOffset: CGFloat = 0
    var textOffset: CGFloat = 0
}

/// sample Itros
var smapleIntros: [Intro] = [
    
    .init(text: "Let's Create", textColor: Color("LoginColor 4"), circleColor: Color("LoginColor 4"), bgColor: Color("LoginColor 1")),
    
    .init(text: "Let's Brain Storm", textColor: Color("LoginColor 1"), circleColor: Color("LoginColor 1"), bgColor: Color("LoginColor 2")),
    
    .init(text: "Let's Explore", textColor: Color("LoginColor 2"), circleColor: Color("LoginColor 2"), bgColor: Color("LoginColor 3")),
    
    .init(text: "Let's Invent", textColor: Color("LoginColor 3"), circleColor: Color("LoginColor 3"), bgColor: Color("LoginColor 4")),
    
    .init(text: "Let's Create", textColor: Color("LoginColor 4"), circleColor: Color("LoginColor 4"), bgColor: Color("LoginColor 1"))
    
]

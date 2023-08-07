//
//  ContentView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectPage: SelectPageEnum
    
    var body: some View {
        VStack{
            
            LayoutView(selectPageView: $selectPage)
            
            Spacer()
            
            //导航栏
            Tabbar(select: $selectPage)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectPage: SelectPageEnum.home)
    }
}

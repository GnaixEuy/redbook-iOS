//
//  FindView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct FindView: View {
    var body: some View {
        ScrollView{
            VStack{
                HStack(alignment: .top){
                    VStack{
                        Card(text: "文案",image: "user_img",username: "username",locate: "29km")
                    }
                    VStack{
                        Card(text: "文案",image: "img1",username: "username",locate: "29km")
                        Card(text: "文案",image: "img1",username: "username",locate: "29km")
                    }
                }
            }
        }
        .background(.gray.opacity(0.05))
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}

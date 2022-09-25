//
//  FindView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct FindView: View {
    
    @State var select = 0
    @State var isShow = false
    
    var body: some View {
        VStack{
            if self.isShow{
                FindNavgationSelectionView(isShow: self.$isShow)
            }else{
                FindNavigationBarView(select: self.$select, isShow: self.$isShow)
            }

            TabView(selection: self.$select){
                ForEach(0..<10){item in
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
                    .tag(item)
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

struct FindView_Previews: PreviewProvider {
    static var previews: some View {
        FindView()
    }
}

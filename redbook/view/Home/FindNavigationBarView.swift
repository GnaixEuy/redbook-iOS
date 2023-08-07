//
//  FindNavigationBarView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct FindNavigationBarView: View {
    
    @Binding var select: Int
    @Binding var  isShow: Bool
    
    var body: some View {
        HStack{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20){
                    HStack(spacing: 20){
                        Button {
                            self.select = 0
                        } label: {
                            Text("推荐")
                                .foregroundColor(self.select == 0 ? .black : .gray)
                        }
                        Button {
                            self.select = 1
                        } label: {
                            Text("视频")
                                .foregroundColor(self.select == 1 ? .black : .gray)
                        }
                        Button {
                            self.select = 2
                        } label: {
                            Text("直播")
                                .foregroundColor(self.select == 2 ? .black : .gray)
                        }
                        Button {
                            self.select = 3
                        } label: {
                            Text("头像")
                                .foregroundColor(self.select == 3 ? .black : .gray)
                        }
                        Button {
                            self.select = 4
                        } label: {
                            Text("头像")
                                .foregroundColor(self.select == 4 ? .black : .gray)
                        }
                    }
                    HStack(spacing: 20){
                        Button {
                            self.select = 5
                        } label: {
                            Text("推荐")
                                .foregroundColor(self.select == 5 ? .black : .gray)
                        }
                        Button {
                            self.select = 6
                        } label: {
                            Text("视频")
                                .foregroundColor(self.select == 6 ? .black : .gray)
                        }
                        Button {
                            self.select = 7
                        } label: {
                            Text("直播")
                                .foregroundColor(self.select == 7 ? .black : .gray)
                        }
                        Button {
                            self.select = 8
                        } label: {
                            Text("头像")
                                .foregroundColor(self.select == 8 ? .black : .gray)
                        }
                        Button {
                            self.select = 9
                        } label: {
                            Text("头像")
                                .foregroundColor(self.select == 9 ? .black : .gray)
                        }
                        Button {
                            self.select = 10
                        } label: {
                            Text("头像")
                                .foregroundColor(self.select == 10 ? .black : .gray)
                        }
                    }
                }
            }
            .foregroundColor(.black)
            .padding(.leading)
            
            Button  {
                withAnimation {
                    self.isShow = true
                }
            } label: {
                Image(systemName: "chevron.down")
                    .padding(.trailing)
            }
            .foregroundColor(.black)
        }
        .padding(.bottom,8)
    }
}

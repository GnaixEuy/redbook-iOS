//
//  FindNavgationSelectionView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct FindNavgationSelectionView: View {
    
    @Binding var isShow : Bool
    
    var body: some View {
        VStack{
            VStack(spacing: 15){
                // 我的频道
                HStack{
                    Text("我的频道 ")
                        .bold()
                    Text("点击进入频道")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("进入编辑")
                            .font(.footnote)
                            .padding(4)
                            .background( .gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                    }
                    
                    Button {
                        withAnimation {
                            self.isShow = false
                        }
                    } label: {
                        Image(systemName: "chevron.up")                            
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
            }
            .padding(.bottom)
            .foregroundColor(.black)
            
            VStack{
                // 推荐频道
                HStack{
                    Text("推荐频道 ")
                        .bold()
                    Text("点击添加频道")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleGray()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
                HStack(spacing: 18){
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                    Button {
                        
                    } label: {
                        Text("推荐")
                            .ButtonStyleWhite()
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(.horizontal)
    }
}

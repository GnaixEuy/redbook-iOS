//
//  FocusOnDynamicCardView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct FocusOnDynamicCardView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack{
            HStack(alignment: .center){
                Image("user_img")
                    .CircleImage(width: 40)
                    .padding(.leading, 5)
                Text("username")
                Text("6天前")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Spacer()
                
                Button{
                    //action
                }label: {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                }
                
            }
            .padding(.trailing, 8)
            
            Image("img1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack(spacing: 14){
                // 社交功能 喜欢 转发
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 22))
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: "heart")
                            .font(.system(size: 22))
                        Text("点赞")
                    }
                }
                Button {
                    
                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: "star")
                            .font(.system(size: 22))
                        Text("收藏")
                    }
                }
                Button {
                    
                } label: {
                    HStack(spacing: 0) {
                        Image(systemName: "ellipsis.bubble")
                            .font(.system(size: 22))
                        Text("评论")
                    }
                }
            }
            .foregroundColor(.black)
            .padding(10)
            
            HStack{
                // 内容
                Text("9月15日，厦门警备区副司令员波拉提首长一行到我院走访慰问，院党委  ")
                    .padding(.horizontal,5)
            }
            
            HStack{
                // 评论
                Image("img2")
                    .CircleImage(width: 40)
                    .frame(alignment: .leading)
                
                TextField("喜欢就给一个评论", text: self.$text)
                
                Spacer()
            }
            .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 20))
            .padding(.horizontal,15)
        }
        .padding(.vertical)
    }
}

struct FocusOnDynamicCardView_Previews: PreviewProvider {
    static var previews: some View {
        FocusOnDynamicCardView()
    }
}

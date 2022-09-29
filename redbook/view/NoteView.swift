//
//  NoteView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/28.
//

import SwiftUI

struct NoteView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    // 顶部
                    Button {
                        
                    } label: {
                        Text("开启聊天")
                    }
                    .opacity(0)
                    Spacer()
                    Text("消息")
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("开启聊天")
                    }
                }
                .foregroundColor(.black)
                .padding()
                
                ScrollView{
                    //主体内容
                    HStack{
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .foregroundColor(.pink)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.pink.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("赞和收藏")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "person.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.blue.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("新增关注")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .foregroundColor(.green)
                                    .font(.system(size: 23))
                                    .padding(10)
                                    .background(.green.opacity(0.2),in: RoundedRectangle(cornerRadius: 10))
                                Text("评论和@")
                                    .font(.system(size: 15))
                            }
                            .foregroundColor(.black)
                        }
                        
                        Spacer()
                    }
                        .padding()
                    
                    ForEach(0..<5){item in
                        // 消息列表
                        VStack{
                            HStack(alignment: .top, spacing: 0){
                                HStack{
                                    Image("user_img")
                                        .CircleImage(width: 60)
                                        .padding(.leading, 10)
                                    VStack(alignment: .leading, spacing: 5) {
                                        Text("周杰伦")
                                        Text("你好！叫个朋友")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                }
                                
                                Spacer()
                                
                                Text("08-06")
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                Tabbar()
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}

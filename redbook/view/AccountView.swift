//
//  AccountView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/28.
//

import SwiftUI

struct AccountView: View {
    
    @State var select = 0
    
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    
                    ZStack{
                        Image("img1")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(height: 350)
                            .clipped()
                        
                        Color.black.opacity(0.4 )
                        
                        VStack{
                            HStack{
                                Image(systemName: "line.3.horizontal")
                                    .font(.system(size: 20))
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 20))
                            }
                            .padding(.horizontal)
                            .foregroundColor(.white)
                            
                            VStack{
                                HStack{
                                    Image("img2")
                                        .CircleImage(width: 60)
                                        .padding()
                                    VStack(alignment: .leading, spacing: 8){
                                        Text("库克")
                                            .font(.title)
                                            .foregroundColor(.white)
                                        Text("小红书好:123123")
                                            .font(.footnote)
                                            .foregroundColor(.gray)
                                    }
                                    Spacer()
                                }
                                
                                Button {
                                    
                                } label: {
                                    HStack{
                                        Text("向大家介绍自己")
                                        Image(systemName: "pencil")
                                        Spacer()
                                    }
                                    .font(.footnote)
                                    .foregroundColor(.gray)
                                    .padding(.horizontal)
                                }
                                .padding(.bottom)
                                
                                HStack{
                                    Button {
                                    } label: {
                                        Text("20岁")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }
                                    Button {
                                    } label: {
                                        Text("+添加地区，职业标签")
                                            .foregroundColor(.white)
                                            .font(.footnote)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.bottom)
                                
                                HStack(spacing: 15){
                                    VStack{
                                        Text("5")
                                        Text("关注")
                                            .font(.caption2)
                                    }
                                    VStack{
                                        Text("5")
                                        Text("粉丝")
                                            .font(.caption2)
                                    }
                                    VStack{
                                        Text("5")
                                        Text("点赞和收藏")
                                            .font(.caption2)
                                    }
                                    
                                    Spacer()
                                    
                                    Button {
                                    } label: {
                                        Text("编辑资料")
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,20)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }
                                    
                                    Button {
                                    } label: {
                                        Image(systemName: "gearshape")
                                            .foregroundColor(.white)
                                            .padding(.vertical,2)
                                            .padding(.horizontal,10)
                                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                                    }
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal)
                            }
                        }
                    }
                    
                    VStack{
                        HStack(spacing: 40){
                            Button {
                                withAnimation {
                                    self.select = 0
                                }
                            } label: {
                                Text("笔记")
                                    .foregroundColor(self.select == 0 ? .black : .gray)
                            }
                            Button {
                                withAnimation {
                                    self.select = 1
                                }
                                
                            } label: {
                                Text("收藏")
                                    .foregroundColor(self.select == 1 ? .black : .gray)
                            }
                            Button {
                                withAnimation {
                                    self.select = 2
                                }
                            } label: {
                                Text("赞过")
                                    .foregroundColor(self.select == 2 ? .black : .gray)
                            }
                        }
                        .padding(10)
                        
                        
                        TabView(selection: self.$select){
                            HStack(alignment: .top){
                                VStack{
                                    Card(text: "文案",image: "user_img",username: "username",locate: "29km")
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                                VStack{
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                            }
                            .tag(0)
                            
                            HStack(alignment: .top){
                                VStack{
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                                VStack{
                                    Card(text: "文案",image: "user_img",username: "username",locate: "29km")
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                            }
                            .tag(1)
                            
                            HStack(alignment: .top){
                                VStack{
                                    Card(text: "文案",image: "user_img",username: "username",locate: "29km")
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                                VStack{
                                    Card(text: "文案",image: "img1",username: "username",locate: "29km")
                                    Spacer()
                                }
                            }
                            .tag(2)
                            
                            
                        }
                        .padding(.top,20)
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(minHeight: 800)
                    }
                    .foregroundColor(.black)
                    .background(.white, in: RoundedRectangle(cornerRadius: 30))
                    .offset(y:-35)
                    
                }
                .ignoresSafeArea()
                Tabbar()
            }
            .navigationBarHidden(true)
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

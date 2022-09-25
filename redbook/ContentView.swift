//
//  ContentView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct ContentView: View {
    @State var select = 0
    var body: some View {
        NavigationView{
            VStack{
                //头部
                HStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "globe.europe.africa")
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    HStack(spacing: 28){
                        Button{
                            select = 0
                        }label: {
                            Text("关注")
                                .foregroundColor(select==0 ? .black:.gray)
                        }
                        Button{
                            select = 1
                        }label: {
                            Text("发现")
                                .foregroundColor(select==1 ? .black:.gray)
                        }
                        Button{
                            select = 2
                        }label: {
                            Text("附近")
                                .foregroundColor(select==2 ? .black:.gray)
                        }
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.black)
                }
                .padding(.horizontal)
                
                //主题
                TabView(selection: self.$select){
                    
                    ConcernView()
                        .tag(0)
                    
                    FindView()
                        .tag(1)
                    
                    NearView()
                        .tag(2)
                    
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                
                Spacer()
                
                //导航栏
                Tabbar()
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

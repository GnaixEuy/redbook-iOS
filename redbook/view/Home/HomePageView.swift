//
//  HomePageView.swift
//  redbook
//
//  Created by 苏粤翔 on 2023/8/7.
//

import SwiftUI

struct HomePageView: View {
    
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
                            withAnimation {
                                self.select = 0
                            }
                        }label: {
                            Text("关注")
                                .foregroundColor(select==0 ? .black:.gray)
                        }
                        Button{
                            withAnimation {
                                self.select = 1
                            }
                        }label: {
                            Text("发现")
                                .foregroundColor(select==1 ? .black:.gray)
                        }
                        Button{
                            withAnimation {
                                self.select = 2
                            }
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
                
                Divider()
                
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
            }
        }
        .navigationBarHidden(true)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

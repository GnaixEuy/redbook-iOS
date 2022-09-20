//
//  MessagePageView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct MessagePageView: View {
    var body: some View {
        VStack{
            HStack{
                Spacer(minLength: UIScreen.main.bounds.width/2.4)
                Text("消息")
                    .font(.title)
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                Spacer()
                Button {
                    //TODO
                } label: {
                    Text("开启聊天")
                        .foregroundColor(.black)
                        .font(.body)
                        .fontWeight(.medium)
                        
                }
                .padding(.trailing)
                .frame(alignment: .trailing)
                
            }
            
            
            NavigationView{
                MessageListView()
            }
            .navigationBarTitle("消息")
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.bottom)
        }
        
    }
}

struct MessagePageView_Previews: PreviewProvider {
    static var previews: some View {
        MessagePageView()
    }
}

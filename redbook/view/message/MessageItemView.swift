//
//  MessageItemView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct MessageItemView: View {
    
    var messageSenderHeadPortraitUrl:String = "user_img"
    var messageSenderName: String = "GnaixEu🐱"
    var messageBriefInformation = "这是暂时的死数据总不会有人真把这当真数据吧233333333333333"
    var messageSentDate = Date()

    
    var body: some View {
        
        HStack{
            Image(self.messageSenderHeadPortraitUrl)
                .resizable()
                .frame(width: 60, height: 60, alignment: Alignment.center)
                .cornerRadius(30)
                .padding(.leading)
            Spacer()
            VStack{
                Spacer()
                HStack{
                    Text(self.messageSenderName)
                        .font(.body)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                    Spacer()
                    Text(TimeUtil.date2MM_dd(Date: self.messageSentDate))
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal)
                    .multilineTextAlignment(.leading)
                }
                Spacer()
                Text(self.messageBriefInformation)
                    .fontWeight(.light)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.leading)
                    .lineLimit(1)
                    .frame(alignment:Alignment.leading)
                Spacer()
            }
        }
    }
    
}

struct MessageItemView_Previews: PreviewProvider {
    static var previews: some View {
        MessageItemView()
    }
}

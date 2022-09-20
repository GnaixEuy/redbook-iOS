//
//  MessageTitleFutureView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct MessageTitleFutureView: View {
    let iconNameArray = [
        "赞和收藏",
        "新增关注",
        "评论和@"
    ]
    
    let iconUrlArray:Array<String> = [
        "heart",
        "person",
        "chat"
    ]
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                ForEach(Array(zip(self.iconUrlArray, self.iconNameArray)), id: \.0) { item in
                    Button {
                        // action
                    } label: {
                        VStack{
                            Image("\(item.0)")
                                .resizable()
                                .frame(width: 60,height: 60)
                                .scaledToFill()
                            Text("\(item.1)")
                                .fontWeight(.regular)
                                .foregroundColor(Color.black)
                                .multilineTextAlignment(.center)
                                .padding(.vertical)
                                .font(.title3)
                        }
                    }
                    Spacer()
                }
            }
        }
    }
    
}

struct MessageTitleFutureView_Previews: PreviewProvider {
    static var previews: some View {
        MessageTitleFutureView()
    }
}

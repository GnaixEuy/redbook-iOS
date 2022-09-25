//
//  ConcernView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

struct ConcernView: View {
    
    
    
    var body: some View {
        ScrollView{
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(0 ..< 5){item in
                        VStack(spacing: 0){
                            // 关注的人头像
                            Image("user_img")
                                .CircleImage(width: 75)
                            Text("username")
                        }
                    }
                    Spacer()
                }
            }
            //关注的人主体内容
            ForEach(0..<6){item in
                FocusOnDynamicCardView()
            }
        }
        
    }
}



struct ConcernView_Previews: PreviewProvider {
    static var previews: some View {
        ConcernView()
    }
}

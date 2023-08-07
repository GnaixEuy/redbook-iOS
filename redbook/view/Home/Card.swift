//
//  Card.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/24.
//

import SwiftUI

struct Card: View {
    
    var text = "文案"
    var image = "user_img"
    var username = ""
    var locate = ""
    
    var body: some View {
        VStack(alignment: .leading,spacing: 8){
            
            Image(self.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(self.text)
            
            HStack(spacing: 0){
                //头像信息
                Image(self.image)
                    .CircleImage(width: 35)
                
                Text(self.username)
                
                Spacer()
                
                Image(systemName: "location")
                
                Text(self.locate)
            }
            .font(.footnote)
        }
        .frame(width: UIScreen.main.bounds.width / 2 - 25)
        .padding(5)
        .background(.white,in: RoundedRectangle(cornerRadius: 8))
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}

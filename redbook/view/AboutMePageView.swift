//
//  AboutMePageView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct AboutMePageView: View {
    var body: some View {
        ZStack{
            VStack{
                AboutMeHeaderView()
                    .zIndex(99)
                ScrollView{
                    UserInfoView()
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .fill(.white)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    
                }
                Spacer()
            }
            .zIndex(99)
            VStack{
                Image("background")
                    .ignoresSafeArea(.all)
                    .scaledToFill()
                    .brightness(0.01)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2, alignment: Alignment.top)
                    .blur(radius: 10)
                Spacer()
            }
            
        }
        
        
    }
}

struct AboutMePageView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMePageView()
    }
}

//
//  AboutMeHeaderView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct AboutMeHeaderView: View {
    var body: some View {
        
            HStack{
                Button {
                } label: {
                    Image(systemName: "line.3.horizontal")
                }
                Spacer()
                Button {
                } label: {
                    Image(systemName: "square.and.arrow.up.on.square")
                }
            }
            .foregroundColor(Color.white)
            .padding(.horizontal)
    }
}

struct AboutMeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeHeaderView()
    }
}

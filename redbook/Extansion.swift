//
//  Extansion.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

extension Image{
    func CircleImage(width: CGFloat) -> some View{
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .mask(Circle())
            .frame(width: width,height: width)
            .padding(.leading,5)
    }
}

extension View{
    func ButtonStyleGray() -> some View{
        self
            .padding(.vertical,8)
            .padding(.horizontal,20)
            .background(.gray.opacity(0.1), in: RoundedRectangle(cornerRadius: 10))
    }
}

extension View{
    func ButtonStyleWhite() -> some View{
        self
            .padding(.vertical,8)
            .padding(.horizontal,20)
            .background(.white)
            .padding(1)
            .background(.gray.opacity(0.1),in: RoundedRectangle(cornerRadius: 10))
    }
}


extension String : Identifiable{
    public var id : Int{
        return self.hashValue
    }
}

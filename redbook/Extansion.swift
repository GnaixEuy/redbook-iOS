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


extension String : Identifiable{
    public var id : Int{
        return self.hashValue
    }
}

//
//  Tabbar.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/25.
//

import SwiftUI

enum SelectPageEnum{
    case home
    case shopping
    case not
    case account
}

struct Tabbar: View {
    
    
    @Binding var select : SelectPageEnum
    
    var body: some View {
        
        
        HStack{
            HStack{
                Spacer()
                Button{
                    self.select = .home
                }label: {
                    Text("首页")
                        .foregroundColor(self.select == .home  ? .black : .gray)
                }
                
                Spacer()
                
                Button{
                    self.select = .shopping
                }label: {
                    Text("购物")
                        .foregroundColor(self.select == .shopping ? .black: .gray)
                }
                
                Spacer()
            }
            
            Button {
                
            } label: {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .padding(.vertical,6)
                    .padding(.horizontal,12)
                    .background(.red,in: RoundedRectangle(cornerRadius: 8))
            }
            
            
            HStack{
                Spacer()
                
                Button{
                    self.select = .not
                }label: {
                    Text("消息")
                        .foregroundColor(self.select == .not ? .black: .gray)
                }
                
                Spacer()
                
                Button{
                    self.select = .account
                }label: {
                    Text("我")
                        .foregroundColor(self.select == .account ? .black: .gray)
                }
                Spacer()
            }
        }
        .padding(.top)
        .background(.white)
        
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar(select: Binding.constant(SelectPageEnum.home))
    }
}

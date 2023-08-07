//
//  LayoutView.swift
//  redbook
//
//  Created by 苏粤翔 on 2023/8/7.
//

import SwiftUI

struct LayoutView: View {
    
    @Binding var selectPageView : SelectPageEnum
    
    var body: some View {
        
        switch selectPageView {
        case SelectPageEnum.home :
            HomePageView()
        case SelectPageEnum.not :
            NoteView()
        case SelectPageEnum.account:
            AccountView()
        default :
            HomePageView()
        }
        
    }
}

struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView(selectPageView: Binding.constant(SelectPageEnum.home))
    }
}

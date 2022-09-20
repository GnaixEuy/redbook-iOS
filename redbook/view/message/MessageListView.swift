//
//  MessageListView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct MessageListView: View {
    var body: some View {
        ScrollView{
            MessageTitleFutureView()
            ForEach(0 ..< 4){_ in
                Spacer()
                
                    NavigationLink(destination: MessageDetailView()) {
                        MessageItemView()
                    }
                    
                Spacer()
            }
        }
    }
}

struct MessageListView_Previews: PreviewProvider {
    static var previews: some View {
        MessageListView()
    }
}

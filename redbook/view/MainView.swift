//
//  MainView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection: Tab = .main
    
    @AppStorage("language")
    private var language =  LocalizationService.shared.language
    
    enum Tab {
        case main
        case shopping
        case addNew
        case message
        case aboutMe
    }
    
    var body: some View {
        TabView(selection: $selection) {
            MainPageView()
                .tabItem {
                    Label("MainPage".localized(language), systemImage: "star")
//                        .foregroundColor(.red)
                }
                .tag(Tab.main)
            
            ShoppingPageView()
                .tabItem {
                    Label("Shopping".localized(language), systemImage: "bag")
                }
                .tag(Tab.shopping)
            
            addNewPageView()
                .tabItem {
                    Label("AddNew".localized(language), systemImage: "plus")
                }
                .tag(Tab.addNew)
            
            MessagePageView()
                .tabItem {
                    Label("Message".localized(language), systemImage: "message")
                }
                .tag(Tab.message)
            
            AboutMePageView()
                .tabItem {
                    Label("AboutMe".localized(language), systemImage: "person.crop.circle")
                }
                .tag(Tab.aboutMe)
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

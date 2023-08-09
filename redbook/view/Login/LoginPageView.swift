//
//  LoginPageView.swift
//  redbook
//
//  Created by 苏粤翔 on 2023/8/8.
//

import SwiftUI

struct LoginPageView: View {
    
    @State private var intros: [Intro] = smapleIntros
    @State private var activeIntro : Intro?
    
    var body: some View {
        GeometryReader{
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            VStack(spacing: 0){
                if let activeIntro {
                    Rectangle()
                        .fill(activeIntro.bgColor)
                        .padding(.bottom, -30)
                        .overlay{
                            Circle()
                                .fill(activeIntro.circleColor)
                                .frame(width: 38,height: 38)
                                .background(alignment: .leading, content: {
                                    Capsule()
                                        .fill(activeIntro.bgColor)
                                        .frame(width: size.width)
                                })
                                .background(alignment: .leading) {
                                    Text(activeIntro.text)
                                        .font(.largeTitle)
                                        .foregroundStyle(activeIntro.textColor)
                                        .frame(width: textSize(activeIntro.text))
                                        .offset(x: 10)
                                        .offset(x: activeIntro.textOffset)
                                }
                                .offset(x: -activeIntro.circleOffset)
                        }
                }
                // Login Button
                LoginButtons()
                    .padding(.top, 10)
                    .padding(.bottom,safeArea.bottom)
                    .background(.black, in: .rect(topLeadingRadius: 25,topTrailingRadius: 25))
                    .shadow(color: .black.opacity(0.1), radius: 5,x:0, y:8)
                
            }
            .ignoresSafeArea()
        }
        .task {
            if activeIntro == nil {
                activeIntro = smapleIntros.first
                //take animation
                let nanoSeconds = UInt64(1_000_000_000 * 0.5)
                try? await Task.sleep(nanoseconds: nanoSeconds)
                animate(0,true)
            }
        }
    }
    
    /// LoginButton
    @ViewBuilder
    func LoginButtons() -> some View {
        VStack(spacing: 12) {
            Button{
                
            } label: {
                Label("Continue With Apple",systemImage: "applelogo")
                    .foregroundColor(.black)
                    .fillButton(.white)
            }
            
            Button{
                
            } label: {
                Label("Continue With Phone",systemImage: "photo.fill")
                    .foregroundColor(.white)
                    .fillButton(Color("LoginButton"))
            }
            
            Button{
                
            } label: {
                Label("Continue With Email",systemImage: "envelope.fill")
                    .foregroundColor(.white)
                    .fillButton(Color("LoginButton"))
            }
            
            Button{
                
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .fillButton(.black)
                    .shadow(color: .white, radius: 1)
            }
        }
        .padding(15)
    }
    
    /// animating intros
    func animate(_ index: Int, _ loop: Bool = true)  {
        if intros.indices.contains(index + 1){
            activeIntro?.text = intros[index].text
            activeIntro?.textColor = intros[index].textColor
            
            if #available(iOS 17.0, *) {
                withAnimation(.snappy(duration:1), completionCriteria: .removed) {
                    activeIntro?.textOffset = -(textSize(intros[index].text) + 20)
                    activeIntro?.circleOffset = -(textSize(intros[index].text) + 20) / 2
                } completion: {
                    withAnimation(.snappy(duration: 0.8), completionCriteria: .logicallyComplete){
                        activeIntro?.textOffset = 0
                        activeIntro?.circleOffset = 0
                        activeIntro?.circleColor = intros[index+1].circleColor
                        activeIntro?.bgColor = intros[index+1].bgColor
                    } completion: {
                        animate(index + 1, loop)
                    }
                }
            } else {
                // Fallback on earlier versions
                if loop {
                    animate(0,loop)
                }
            }
        }else{
            
        }
    }
    
    /// fetching text size based on fonts
    func textSize(_ text: String) -> CGFloat{
        return NSString(string: text).size(withAttributes: [.font: UIFont.preferredFont(forTextStyle: .largeTitle)]).width
    }
    
}

extension View{
    @ViewBuilder
    func fillButton(_ color: Color) -> some View{
        self.fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .padding(.vertical,15)
            .background(color,in: .rect(cornerRadius: 15))
    }
}


struct LoginPageView_Previews: PreviewProvider {
    static var previews: some View {
        LoginPageView()
    }
}

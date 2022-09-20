//
//  UserInfoView.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        
        VStack{
            HStack{
                Image("user_img")
                    .resizable()
                    .frame(width: 80, height: 80, alignment: Alignment.center)
                    .cornerRadius(40)
                    .padding(.leading)
                VStack{
                    HStack{
                        Text("GnaixEuy")
                            .font(.title2)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .offset(y:5)
                    HStack{
                        Text("小红书号: test123")
                            .font(.subheadline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Button {
                            
                        } label: {
                            Image("qrcode")
                                .resizable()
                                .brightness(1)
                                .frame(width: 15,height: 15)
                                .scaledToFill()
                                .fixedSize()
                        }
                        Spacer()
                    }
                    HStack{
                        Text("IP归属地: 福建")
                            .font(.callout)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                }
            }
            HStack{
                Text("点击这里,填写简介")
                    .padding(.horizontal)
                    .padding(.vertical, 5.0)
                Spacer()
            }
            HStack{
                ZStack{
                    Text("白羊座")
                    Capsule()
                        .frame(width: 65,height: 25,alignment: .center)
                        .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.884, opacity: 0.447))
                }
                .padding(.horizontal)
                .padding(.vertical, 5.0)
                
                Spacer()
            }
            HStack{
                VStack{
                    Text("24")
                    Text("关注")
                }
                VStack{
                    Text("24")
                    Text("粉丝")
                }
                VStack{
                    Text("3")
                    Text("获赞与收藏")
                }
                Spacer()
                Button {
                } label: {
                    ZStack{
                        Text("编辑资料")
                            .font(.system(size: 20))
                        Capsule()
                            .frame(width: 95,height: 30,alignment: .center)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.716, opacity: 0.424))
                    }
                }
                Button {
                } label: {
                    ZStack{
                        Image(systemName: "gearshape")
                        Capsule()
                            .frame(width: 45,height: 30,alignment: .center)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.716, opacity: 0.424))
                    }
                }
            }
            .padding(.horizontal)
        }
        .foregroundColor(.white)
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
            .preferredColorScheme(.dark)
        
    }
}

//
//  HorizontalCardView.swift
//  TencilUI
//
//  Created by  on 10/06/21.
//

import SwiftUI
import URLImage
struct HorizontalCardView: View {
    @State var title : String
    @State var width : CGFloat
    @State var showImage : Bool
    @State var bgColor : Color
    @State var imgURL : String
    
    var body: some View {
        VStack(alignment : .center){
            HStack {
                Text(title)
                    .font(.system(size: 25,weight: .regular))
                    .foregroundColor(.white)
                    .padding(.bottom,5)
                
                Spacer()
            }
            if showImage{
                if let url = URL(string: imgURL){
                    URLImage(url) { image in
                        ZStack{
                            Color.clear
                                .frame(width: 120, height: 120, alignment: .center)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.black, lineWidth: 2))
                            image
                                .resizable()
                                .frame(width: 100, height: 100, alignment: .center)
                                .clipShape(Circle())
                        }
                        

                    }
                }
            }
           
                
            Spacer()
        }.frame(width: width, height: 180, alignment: .center)
        .cornerRadius(20)
        .padding()
        .background(bgColor)
        
        
    }
}

struct HorizontalCardView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCardView(title: .profile, width: 320, showImage: true, bgColor: Color.buttonBGC, imgURL: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
    }
}

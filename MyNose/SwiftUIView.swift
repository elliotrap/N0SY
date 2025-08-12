//
//  SwiftUIView.swift
//  MyNose
//
//  Created by Elliot Rapp on 7/30/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
        
        Rectangle()
            .foregroundColor(Color("softPink"))
            .opacity(0.6)
            .frame(width: 10000)
            
           ZStack {
                HStack {
                    Spacer()
                        .frame(width: 60)
                    VStack {
                        Spacer()
                            .frame(height: 60)
                        
                        ZStack {
                            Rectangle()
                                .foregroundColor(.black)
                                .frame(width: 255, height: 255)
                                .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                            
                            
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(width: 250, height: 250)
                                .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                            
                        }
                    }
                }
                ZStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .frame(width: 255, height: 255)
                        .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                    
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 250, height: 250)
                        .clipShape(TopLeftEdgeRectangle(radius: 50, corners: [.topLeft, .bottomRight]))
                    
                    VStack(spacing: 10) {
                        HStack(spacing: 50) {
                            Text("N")
                                .font(.custom("BeVietnamPro-Heavy", size: 100))
                            
                            Text("O")
                                .font(.custom("BeVietnamPro-Heavy", size: 100))
                        }
                        HStack(spacing: 50) {
                            Text("S")
                                .font(.custom("BeVietnamPro-Heavy", size: 100))
                            
                            Text("Y")
                                .font(.custom("BeVietnamPro-Heavy", size: 100))
                        }
                    }
                }
             
            }
        
    }
        .edgesIgnoringSafeArea(.all)
        .environment(\.sizeCategory, .small)
    }
}

#Preview {
    SwiftUIView()
}

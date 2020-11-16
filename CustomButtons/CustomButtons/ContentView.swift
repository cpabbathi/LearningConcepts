//
//  ContentView.swift
//  CustomButtons
//
//  Created by Chaithra Pabbathi on 11/15/20.
//

import SwiftUI

struct ContentView: View {
    var rainbowGradient = Gradient(colors: [Color(#colorLiteral(red: 0.4370595217, green: 0.008052990772, blue: 0.6481532454, alpha: 1)),
                                            Color(#colorLiteral(red: 0.07581614703, green: 0.09282841533, blue: 0.3104639947, alpha: 1)),
                                            Color.blue,
                                            Color.green,
                                            Color.yellow,
                                            Color.orange,
                                            Color.red, Color(#colorLiteral(red: 0.4370595217, green: 0.008052990772, blue: 0.6481532454, alpha: 1))])
    var body: some View {
        VStack(spacing: 40) {
            Button {
                
            } label: {
                Text("")
                    .fontWeight(.heavy)
                    .font(.system(.title2, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 150)
            }
            .background(RoundedRectangle(cornerRadius: 30.0, style: .continuous)
                            .fill(LinearGradient(gradient: rainbowGradient, startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)))
            .shadow(color: .gray, radius: 10, x: 0, y: 0)
            .overlay(RoundedRectangle(cornerRadius: 30, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .stroke(lineWidth: 6)
                        .foregroundColor(.white))
            
            Button {
                
            } label: {
                Text("")
                    .fontWeight(.heavy)
                    .font(.system(.title2, design: .rounded))
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .padding(.vertical, 15)
                    .padding(.horizontal, 50)
            }
            .background(Circle()
                            .fill(AngularGradient(gradient: rainbowGradient, center: .center, startAngle: .zero, endAngle: .init(degrees: 390)))
                            .blur(radius: 1.5))
            .shadow(color: Color.black.opacity(0.8), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0, y: 0)
            .overlay(Circle()
                        .stroke(lineWidth: 10)
                        .foregroundColor(.white))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  PanelContentView.swift
//  ZMLSwiftUIFramework
//
//  Created by Karan Karthic Neelamegan on 08/12/20.
//  Copyright © 2020 Karan Karthic Neelamegan. All rights reserved.
//

import SwiftUI

public struct PanelContentView: View {
    public var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

public struct Card : View {
    
    let prompt: String
    let id: UUID?
    public var body: some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 5, style: .circular)
                .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .shadow(radius: 0.5)
            
            VStack {
                Text("843")
                    .font(.largeTitle)
                    .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
                Text(prompt)
                    .font(.caption)
                    .foregroundColor(.black)
            }
            .padding(20)
            .multilineTextAlignment(.center)
        }
        .padding()
        .frame(width: UIScreen.screenWidth, height: 90)

    }
    
}
public struct CardView: View {
    let cards: [Card]
    
    public var body: some View {
        VStack(spacing:10) {
            
            ForEach(0 ..< cards.count) {
                self.cards[$0]
                Spacer()
            }
            
        }
        .padding()
        .background(Color(#colorLiteral(red: 0.9703430533, green: 0.9705052972, blue: 0.9703217149, alpha: 1)))
        
    }
}


struct PanelContentView_Previews: PreviewProvider {
    static var previews: some View {
        PanelContentView()
    }
}


extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}


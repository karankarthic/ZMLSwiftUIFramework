//
//  PanelContentView.swift
//  ZMLSwiftUIFramework
//
//  Created by Karan Karthic Neelamegan on 08/12/20.
//  Copyright © 2020 Karan Karthic Neelamegan. All rights reserved.
//

import SwiftUI
import ZMLKit


public struct PanelContentView: View {
    
    var pagePanel : PagePanelProperties
    
    public var body: some View {
        NavigationView{
            VStack{
                ForEach(0 ..< pagePanel.panelRows.count) {
                    PanelRowView(panelRow: pagePanel.panelRows[$0])
                }
            }
        }
        .navigationBarTitle(pagePanel.identifier)
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

public struct PanelRowView:View{
    
    var panelRow: PanelRowProperties
    
    public var body: some View{
        HStack(spacing:0.0){
            ForEach(0 ..< panelRow.panelColumns.count) {
                PanelColunmView(panelColumn: panelRow.panelColumns[$0])
                
            }
        }
    }
}

public struct PanelColunmView:View {
    
    var panelColumn: PanelColumnProperties
    
    public var body: some View{
        
        VStack(spacing: 0.0){
            if let panelRows = panelColumn.panelRows {
                ForEach(0 ..< panelRows.count) {
                    PanelRowView(panelRow: panelRows[$0])
                }
            }
            else if let component = panelColumn.component {
                
                switch component.type {
                case .text:
                   TextView(textable: component as? TextableProperties)
                default:
                    Text("entered default")
                }
            }
        }
    }
}




extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}


//
//  ListPageView.swift
//  ScreenComposition
//
//  Created by Chaithra Pabbathi on 11/12/20.
//

import SwiftUI

struct ListPageView <Content: View>: View {
    let compositionView: Content
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    init(@ViewBuilder content: () -> Content) {
        compositionView = content()
    }
    
    var body: some View {
        if sizeClass == .compact {
            VStack {
                compositionView
            }
        } else {
            HStack {
                compositionView
            }
        }
    }
}

struct ListPageView_Previews: PreviewProvider {
    static var previews: some View {
        ListPageView {
            List {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }
            
            Divider()
            
            Text("Hello world!")
        }
    }
}

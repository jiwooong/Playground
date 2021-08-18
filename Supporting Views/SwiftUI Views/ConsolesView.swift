//
//  ConsolesView.swift
//  Playground
//
//  Created by jiwoong on 2021/08/12.
//

import SwiftUI

struct ConsolesView: View {
    var modelData: NintendoViewModel
    
    var body: some View {
        NavigationView {
            List {
                modelData.consoleImages[0]
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                    .padding()
            }
            .navigationTitle("Mario")
        }
    }
}

//struct ConsolesView_Previews: PreviewProvider {
//    static var previews: some View {
//        ConsolesView(modelData: NintendoViewModel(nintendo: NintendoModel()))
//    }
//}

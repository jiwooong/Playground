//
//  ConsolesView.swift
//  Playground
//
//  Created by jiwoong on 2021/08/12.
//

import SwiftUI

struct ConsolesView: View {
    var body: some View {
        NavigationView {
            List {
                ConsoleRow()
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

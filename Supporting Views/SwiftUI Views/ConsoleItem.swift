//
//  ConsoleItem.swift
//  Playground
//
//  Created by jiwoong on 2021/08/19.
//

import SwiftUI

struct ConsoleItem: View {
    var viewModel: NintendoViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            viewModel.consoleImages[0]
                .resizable()
                .scaledToFit()
                .cornerRadius(5)
            Text(viewModel.consoleTitles[1])
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

//struct ConsoleItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ConsoleItem()
//    }
//}

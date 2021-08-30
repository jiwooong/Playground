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
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
//            Text(viewModel.consoleTitles[1])
//                .foregroundColor(.primary)
//                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

//struct ConsoleItem_Previews: PreviewProvider {
//    static var previews: some View {
//        ConsoleItem()
//    }
//}

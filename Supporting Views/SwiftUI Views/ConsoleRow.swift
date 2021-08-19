//
//  ConsoleRow.swift
//  Playground
//
//  Created by jiwoong on 2021/08/18.
//

import SwiftUI

struct ConsoleRow: View {
    let rowName: String = "Nintendo"
    let viewModel: NintendoViewModel = NintendoViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(rowName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(viewModel.consoleTitles.indices) { index in
                        ConsoleItem(viewModel: viewModel)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

//struct ConsoleRow_Previews: PreviewProvider {
//    static var previews: some View {
//        ConsoleRow()
//    }
//}

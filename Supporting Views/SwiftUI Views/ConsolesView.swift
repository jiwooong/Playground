//
//  ConsolesView.swift
//  Playground
//
//  Created by jiwoong on 2021/08/12.
//

import SwiftUI

struct ConsolesView: View {
    let viewModel = NintendoViewModel()
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    Image(uiImage: UIImage(named: "mario-detail.jpg")!)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 248)
                        .clipped()
                }
                
                VStack(alignment: .leading) {
                    Text(viewModel.consoleTitles[0])
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
            .navigationTitle("Mario")
        }
    }
}

struct ConsolesView_Previews: PreviewProvider {
    static var previews: some View {
        ConsolesView()
    }
}

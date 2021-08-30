//
//  ConsolesView.swift
//  Playground
//
//  Created by jiwoong on 2021/08/12.
//

import SwiftUI

struct ConsolesView: View {
    let viewModel = NintendoViewModel()
    var gridItems = [
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail2.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail2.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail2.jpg"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail3.png"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail3.png"),
        GridItem(height: CGFloat.random(in: 100 ... 400), imgString: "mario-detail3.png")
    ]
    
    var body: some View {
        NavigationView {
            List {
                GeometryReader { geometry in
                    ImageCarouselView(numberOfImages: 3) {
                        Image(uiImage: UIImage(named: "mario-detail.jpg")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image(uiImage: UIImage(named: "mario-detail2.jpg")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                        Image(uiImage: UIImage(named: "mario-detail3.png")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                    }
                }
                .frame(height: 300, alignment: .center)
                .listRowInsets(EdgeInsets())
                
//                ScrollView {
//                    PinterestGrid(gridItems: gridItems, numOfColumns: 2, spacing: 20, horizontalPadding: 20)
//                }
                
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
                .listRowInsets(EdgeInsets())
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


extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
}

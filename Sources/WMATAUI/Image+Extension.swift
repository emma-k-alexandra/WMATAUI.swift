//
//  Image+Extension.swift
//  
//
//  Created by Randall Wood on 2022-01-09.
//

import SwiftUI

public extension Image {
    init(metroName: String) {
        self.init(metroName, bundle: .module)
    }
    
    init(metroName: String, label: Text) {
        self.init(metroName, bundle: .module, label: label)
    }
}

@available(iOS 14.0, *)
@available(macCatalyst 14.0, *)
@available(macOS 11.0, *)
struct Icons_Preview: PreviewProvider {
    static let imageName = "clock"
    
    static var previews: some View {
        Group {
            Icons(imageName: imageName)
                .preferredColorScheme(.light)
                .previewDisplayName("Light Mode")
            
            Icons(imageName: imageName)
                .preferredColorScheme(.dark)
                .previewDisplayName("Dark Mode")
            
            Icons(imageName: imageName)
                .foregroundColor(.white)
                .background(Color.metroStationBrown)
                .previewDisplayName("Metrorail Sign Colors")
        }
    }
    
    struct Icons: View {
        var imageName: String
        
        var body: some View {
            VStack(spacing: 6) {
                // TODO: Figure out dynamic type previews I cannot get this to work for the life of me
//                HStack {
//                    Image(metroName: imageName)
//                    Text("Large Title xxxLarge")
//                }
//                .font(.largeTitle)
//                .environment(\.sizeCategory, .extraExtraExtraLarge)
// or maybe this in 12.0
//                .environment(\.dynamicTypeSize, .xxxLarge)
// or ???
//                .dynamicTypeSize(.xxxLarge)
                
                
                HStack {
                    Image(metroName: imageName)
                    Text("Large Title")
                }
                .font(.largeTitle)
                
                HStack {
                    Image(metroName: imageName)
                    Text("Title")
                }
                .font(.title)
                
                HStack {
                    Image(metroName: imageName)
                    Text("Body")
                }
                
                HStack {
                    Image(metroName: imageName)
                    Text("Caption")
                }
                .font(.caption)
                
                HStack {
                    Image(metroName: imageName)
                        .renderingMode(.original)
                    Text(".original")
                }
                .font(.title)
            }
            .frame(width: 600, alignment: .center)
        }
    }
}

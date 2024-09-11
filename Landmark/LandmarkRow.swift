//
//  LandmarkRow.swift
//  Landmark
//
//  Created by Shriram Kadam on 11/09/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            let imageLength: Double = 50
            Image(landmark.imageName)
                .resizable()
                .frame(width: imageLength, height: imageLength)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    
    static var previews: some View {
        let landmarks: [Landmark] = ResourceLoader().loadLandmarks()
        Group {
            
            LandmarkRow(landmark: landmarks[0])
                .previewLayout(.fixed(width: 300, height: 70))
            
            LandmarkRow(landmark: landmarks[1])
                .previewLayout(.fixed(width: 300, height: 70))
        }
    }
}

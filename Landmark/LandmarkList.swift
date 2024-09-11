//
//  LandmarkList.swift
//  Landmark
//
//  Created by Shriram Kadam on 11/09/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject private var viewModel = LandmarkListViewModel()
    @State var showFavoritesOnly = true
    
    var body: some View {
        
        List {
            
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites Only")
            }
            
            let landmarks = calculateLandmarksToDisplay()
            ForEach(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
    
    private func calculateLandmarksToDisplay() -> [Landmark] {
        viewModel.landmarks.filter { landmark in
            return (!showFavoritesOnly || landmark.isFavorite)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}


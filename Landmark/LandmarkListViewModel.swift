//
//  LandmarkListViewModel.swift
//  Landmark
//
//  Created by Shriram Kadam on 11/09/24.
//

import Foundation
class LandmarkListViewModel: ObservableObject {
    
    @Published var landmarks: [Landmark] = ResourceLoader().loadLandmarks()
}

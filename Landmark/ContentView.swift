//
//  ContentView.swift
//
//  ResourceLoader.swift
//  Landmark
//
//  Created by Shriram Kadam on 11/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            LandmarkList()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

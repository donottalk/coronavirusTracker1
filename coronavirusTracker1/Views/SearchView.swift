//
//  SearchView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 16/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            TextField("Country...", text: $searchText)
                .padding()
        }
        .frame(height: 50)
        .background(Color("CardBackgroundGray"))
    }
}

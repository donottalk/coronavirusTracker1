//
//  MapContainerView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 19/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetch.allCountries)
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}

//
//  RecentView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 12/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    @State var isSearcjVisible = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                if isSearcjVisible {
                    SearchView(searchText: $searchText)
                }
                
                TotalDataView(totalData: covidFetch.totalData)
                ListHeaderView()
                
                List {
                    
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) {
                        CountryData in
                        
                        NavigationLink(destination:
                        CountryDetailView(countryData: CountryData)) {
                            CountryDataRowView(countryData: CountryData)
                        }
                    }
                }
                .navigationBarTitle("Recent Data", displayMode: .inline)
                .navigationBarItems(trailing:
                    Button(action: {
                        
                        self.isSearcjVisible.toggle()
                        if !self.isSearcjVisible {
                            self.searchText = ""
                        }
                    }, label: {
                        
                        Image(systemName: "magnifyingglass")
                        
                    })
                )
            }
        }
    }
    
    struct RecentView_Previews: PreviewProvider {
        static var previews: some View {
            RecentView()
        }
    }
}

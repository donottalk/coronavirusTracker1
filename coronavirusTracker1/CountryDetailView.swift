//
//  CountryDetailView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 18/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    var countryData: CountryData
    
    var body: some View {
        
        VStack {
            VStack {
                CountryDetailRow(number: countryData.confirmed.formatNumber(), name: "Confirmed")
                    .padding(.top)
                CountryDetailRow(number: countryData.critical.formatNumber(), name: "Critical", color: .yellow)
                CountryDetailRow(number: countryData.deaths.formatNumber(), name: "Deaths", color: .red)
                CountryDetailRow(number: String(format:"%.2f", countryData.fatalityRate), name: "Deaths%", color: .red)
                CountryDetailRow(number: countryData.recovered.formatNumber(), name: "Recovered", color: .green)
                CountryDetailRow(number: String(format:"%.2f", countryData.recoveryRate), name: "Recovered%", color: .green)
            }
                
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarTitle(countryData.country)
    }
}

struct CountryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDetailView(countryData: testCountryData)
    }
}

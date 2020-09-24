//
//  TotalDataView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 15/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        
        VStack {
            
            HStack {
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .yellow)
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
            }
            
            HStack {
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRate), name: "Death %", color: .red)
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered", color: .green)
                TotalDataCard(number: String(format: "%.2f", totalData.recoveryRate), name: "Recovery %", color: .green)
            }
        }
            
        .frame(height: 170)
        .padding(10)
        
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}

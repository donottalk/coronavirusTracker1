//
//  ListHeaderView.swift
//  coronavirusTracker1
//
//  Created by Антон Добровинский on 12/7/20.
//  Copyright © 2020 Антон Добровинский. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    var body: some View {
        
        HStack {
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 50, alignment: .leading)
                .padding(.leading, 10)
            
            Spacer()
            
            Text("Conf.")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40, alignment: .leading)
                .padding(.leading, 5)
            
            Spacer()
            
            Text("Death")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40, alignment: .leading)
                .padding(.leading, 5)
            
            Spacer()
            
            Text("Recover")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(height: 40, alignment: .leading)
                .padding(.trailing, 10)
        }
        .background(Color("cardBackgroundGrey"))
        
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView()
    }
}

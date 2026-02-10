//
//  DisplayCard.swift
//  ClinicQueue
//
//  Created by dilshan fernando on 2026-02-10.
//

import SwiftUI

struct DisplayCard: View{
    
    let props: DoctorCardData
    
    
    var body: some View{
        
        HStack(alignment: .center, spacing: 20) {

            VStack {
                Image("SearchIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
            }
            .padding(12)

            VStack(alignment: .leading, spacing: 10) {

                Text(props.title)
                    .font(.app(.subheading))

                Text(props.subTitle)
                    .font(.app(.caption))

                Text(props.description1)
                    .font(.app(.caption))

                HStack(spacing: 4) {
                    Text(props.label1)
                    Text(props.label1Text)
                }
                .font(.app(.caption))

                HStack(spacing: 4) {
                    Text(props.label2)
                    Text(props.label2Text)
                }
                .font(.app(.caption))

                PrimaryButton(title: props.buttonText, maxWidth: 120) {
                    print("clicked")
                }
            }
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
        )
        .shadow(color: .gray.opacity(0.4), radius: 8, x: 0, y: 7)

        
    }
    
    
    
    
    
    
    
}

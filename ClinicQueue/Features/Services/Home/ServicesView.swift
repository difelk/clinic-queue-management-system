//
//  ServicesView.swift
//  ClinicQueue
//
//  Created by Keshana Liyanaarachchi on 2026-02-11.
//

import SwiftUI

struct ServicesView: View {
    @State private var navigateToDoctorList = false
    
    let specialties = [
        "Doctor",
        "Image",
        "Lab",
        "Pharmacy",
       
    ]
    let doctorCards: [DoctorCardData] = [
        DoctorCardData(
            icon: "SearchIcon",
            iconSize: 32,
            title: "Dr. Marcus Horizon",
            subTitle: "Cardiologist",
            description1: "12 patients in queue",
            description2: "",
            label1: " ",
            label1Text: "",
            label2: "Location: ",
            label2Text: "Room 02 – Consultation Wing",
            buttonText: "Fee $25"
        ),
       
//        DoctorCardData(
//            icon: "SearchIcon",
//            iconSize: 32,
//            title: "Dr. James Wilson",
//            subTitle: "Neurologist",
//            description1: "9 patients in queue",
//            description2: "",
//            label1: "Estimated wait: ",
//            label1Text: "~40 min",
//            label2: "Location: ",
//            label2Text: "Room 08 – Neuro Wing",
//            buttonText: "  Fee $30"
//        )
    ]
    @State private var selectedDoctor: DoctorCardData?
    @State private var navigate = false
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 12) {
                Text("Find your desire health solution")
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Image(systemName: "bell")
                    .font(.system(size: 35))
                
                Image(systemName: "person.crop.circle")
                    .font(.system(size: 50))
            }
            .padding(0)
            
            ScrollView {
                VStack(alignment: .center, spacing: 20) {
                    Spacer()
                    IconInputField(
                        placeholder: "Find a Doctor",
                        defaultValue: "",
                        iconName: "SearchIcon",
                        action: { print("Input changed") }
                    )
                    Spacer()
                }
                
                HStack(alignment: .center, spacing: 20) {
                    Text("Upcoming Schedule")
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("See all")
                        .font(.footnote)
                        .bold()
                    
                    
                }
                ZStack {
                    ForEach(doctorCards) { card in
                        DisplayCard(props: card) {
                            selectedDoctor = card
                            navigate = true
                                
                        }
                        
                    }
                    
                }
                Spacer()
                
                HStack(alignment: .center,) {
              
                    Text("Servies")
                    
                        .font(.headline)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                   
                  
                }
                
                LazyVGrid(columns: columns, spacing: 18) {
                    ForEach(specialties, id: \.self) { specialty in
                        CategoryButton(title: specialty, icon: "SearchIcon", iconWidth: 38) {
                            print("category clicked: \(specialty)")
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                }
                
                
                
            }
        }
        .padding(10)
    }
}

#Preview {
    ServicesView()
}

import SwiftUI

struct DoctorListView: View {
    let specialties = [
        "General Physician",
        "Cardiologist",
        "Dermatologist",
        "Pediatrician",
        "Gynecologist",
        "Orthopedic Surgeon",
        "Neurologist",
        "Psychiatrist",
//        "ENT Specialist",
//        "Ophthalmologist",
//        "Urologist",
//        "Gastroenterologist",
//        "Endocrinologist",
//        "Pulmonologist",
//        "Oncologist"
    ]
    
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    
    var body: some View {
      
        ZStack(alignment: .top) {
            ScrollView {
                VStack(alignment: .center, spacing: 20){
                    
                    IconInputField(
                        placeholder: "Find a Doctor",
                        defaultValue: "",
                        iconName: "SearchIcon",
                        action: { print("Input changed") }
                    )
                }
              
                LazyVGrid(columns: columns, spacing: 8) {
                    ForEach(specialties, id: \.self) { specialty in
                        CategoryButton(title: specialty, icon: "SearchIcon", iconWidth: 38) {
                            print("category clicked: \(specialty)")
                        }
                        .frame(maxHeight: .infinity, alignment: .top)
                    }
                }.padding(.top, 8)
          }
            
        }
        .safeAreaInset(edge: .top) {
            HeaderSection(title: "Doctors")
        }
    }
}

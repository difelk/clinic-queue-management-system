import SwiftUI

struct HomeView: View {
    @State private var navigateToDoctor = false

    var body: some View {
        NavigationStack {
            VStack {
                VStack(spacing: 16) {
                  LandingView()
                }
                .padding()
            }
          
            .navigationDestination(isPresented: $navigateToDoctor) {
                DoctorListView()
                .padding(.horizontal, 16)
                .navigationBarHidden(true)
            }
        }
    }
}

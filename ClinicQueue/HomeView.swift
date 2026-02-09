import SwiftUI

struct HomeView: View {
    @State private var navigateToDoctor = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {

                    PrimaryButton(title: "Continue") {
                        navigateToDoctor = true
                    }
                    .padding()

                }
                .padding()
            }
            .safeAreaInset(edge: .top) {
                HeaderSection(title: "Landing Page")
            }
            .navigationDestination(isPresented: $navigateToDoctor) {
                DoctorListView()
                .padding(.horizontal, 16)
                .navigationBarHidden(true)
            }
        }
    }
}

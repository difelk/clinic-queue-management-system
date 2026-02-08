import SwiftUI

struct HeaderSection: View {
    var title: String
    var backAction: () -> Void = {}
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack {
            Text(title)
                .font(.app(.heading))
                .frame(maxWidth: .infinity)
                .multilineTextAlignment(.center)
            
            HStack {
                IconButton(
                    buttonType: "back"
                )  {
                    dismiss() 
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(height: 40)
        .padding(.top, 12)
    }


    private var safeAreaTop: CGFloat {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return 0 }
        return windowScene.windows.first?.safeAreaInsets.top ?? 0
    }
}

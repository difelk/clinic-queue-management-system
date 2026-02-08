import SwiftUI


struct PrimaryButton: View {
    
    var title: String
    var backgroundColor: Color = .white
    var textColor: Color = .white
    var cornerRadius: CGFloat = 100
    var action: () -> Void
    
    
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(textColor)
                .font(.app(.button))
                .padding(16)
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
        
    }
    
    
    
    
}

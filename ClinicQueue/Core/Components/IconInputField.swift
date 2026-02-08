import SwiftUI

struct IconInputField: View {
    
    var iconName: String?
    var placeholder: String
    var defaultValue: String
    var placeholderColor: Color = AppColors.placeholder
    var backgroundColor: Color = .clear
    var textColor: Color = AppColors.text
    var borderRadius: CGFloat = 100
    var borderWidth: CGFloat = 1
    var borderColor: Color = AppColors.border
    var padding: CGFloat = 12
    var action: () -> Void = {}
    
    @State private var value: String
    
    init(placeholder: String,
         defaultValue: String = "",
         iconName: String? = nil,
         action: @escaping () -> Void = {}) {
        self.placeholder = placeholder
        self.defaultValue = defaultValue
        self.iconName = iconName
        self._value = State(initialValue: defaultValue)
        self.action = action
    }
    
    var body: some View {
        HStack(spacing: 8) {
            if let iconName {
                Image(iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(AppColors.text)
            }
            
            TextField(placeholder, text: $value, onEditingChanged: { _ in
                action()
            })
            .foregroundColor(textColor)
        }
        .padding(padding)
        .background(backgroundColor)
        .overlay(
            RoundedRectangle(cornerRadius: borderRadius)
                .stroke(borderColor, lineWidth: borderWidth)
        )
    }
}

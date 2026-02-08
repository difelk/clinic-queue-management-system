import SwiftUI

struct DropdownOption: Identifiable, Hashable {
    let id = UUID()
    let value: String
    let text: String
}

struct Dropdown: View {
    
    let placeholder: String
    let options: [DropdownOption]
    
    @Binding var selectedValue: String
    
    var placeholderColor: Color = .gray
    var textColor: Color = .black
    var borderRadius: CGFloat = 100
    var borderWidth: CGFloat = 1
    var borderColor: Color = AppColors.border
    var padding: CGFloat = 12
    var minWidth: CGFloat = 200
    
    var body: some View {
        Menu {

            ForEach(options) { option in
                Button(option.text) {
                    selectedValue = option.value
                }
            }
        } label: {
            HStack {
                Text(selectedValue.isEmpty ? placeholder : displayText)
                    .foregroundColor(selectedValue.isEmpty ? placeholderColor : textColor)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Image(systemName: "chevron.down")
                    .foregroundColor(.gray)
            }
            .padding(padding)
            .frame(minWidth: minWidth)
            .background(Color.white)
            .overlay(
                RoundedRectangle(cornerRadius: borderRadius)
                    .stroke(borderColor, lineWidth: borderWidth)
            )
        }
    }
    
    private var displayText: String {
        options.first(where: { $0.value == selectedValue })?.text ?? ""
    }
}

//
//  ContentView.swift
//  ClinicQueue
//
//  Created by dilshan fernando on 2026-02-07.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedFruit = ""

    let fruits = [
        DropdownOption(value: "apple", text: "Apple"),
        DropdownOption(value: "banana", text: "Banana"),
        DropdownOption(value: "orange", text: "Orange")
    ]

    var body: some View {
        VStack(spacing: 16) {

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)

            Text("Hello, world!")
                .font(.app(.button))

            PrimaryButton(
                title: "Submit",
                backgroundColor: .red,
                textColor: .white
            ) {
                print("Submitted")
            }

            OutlineButton(title: "Cancel") {
                print("Cancelled")
            }

            InputField(placeholder: "Enter FirstName")

            Dropdown(
                placeholder: "Select fruit",
                options: fruits,
                selectedValue: $selectedFruit,
            )
            
            
            
            IconInputField(
                placeholder: "Enter email",
                defaultValue: "",
                iconName: "SearchIcon",
                action: {
                    print("Input changed")
                }
            )
            .padding(.horizontal)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

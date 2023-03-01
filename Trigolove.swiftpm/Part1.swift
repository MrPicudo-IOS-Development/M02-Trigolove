/* Part1.swift --> Trigolove. Created by Miguel Torres on 01/03/23. */

import SwiftUI

@available(iOS 16.0, *)
struct Part1: View {
    @State private var message = ""

        var body: some View {
            Canvas { context, size in
                let formattedText = Text(message).font(.largeTitle).foregroundColor(.red)
                context.draw(formattedText, in: CGRect(origin: .zero, size: size))
            }
            .dropDestination(for: String.self) { items, location in
                message = items.first ?? ""
                return true
            }
        }
}

@available(iOS 16.0, *)
struct Part1_Previews: PreviewProvider {
    static var previews: some View {
        Part1()
    }
}

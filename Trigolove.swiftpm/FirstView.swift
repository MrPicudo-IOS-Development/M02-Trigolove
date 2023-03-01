import SwiftUI

@available(iOS 16.0, *)
struct FirstView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1.00, green: 0.93, blue: 0.90)
                    .ignoresSafeArea(.all)
                VStack {
                    Image("Corazon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    HStack {
                        Text("Key problem")
                            .font(.system(size: 25.0))
                            .bold()
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                    
                    Text("Muchos estudiantes tienen problemas para recordar las fórmulas de identidades, derivadas e integrales trigonométricas. Nosotros tomaremos dos reglas fáciles de recordar para identificar cuál es la fórmula correcta y memorizarla de manera sencilla.")
                        .font(.title3)
                        .multilineTextAlignment(.leading)
                        .frame(width: 300)
                        .padding(EdgeInsets(top: 10, leading: 16, bottom: 0, trailing: 15))
                    Spacer()
                    Button {
                        // Acción del botón...
                    } label: {
                        NavigationLink(destination: History()) {
                            Text("History")
                                .font(.title)
                                .bold()
                        }
                    }
                }
            }
        }
    }
}



@available(iOS 16.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}


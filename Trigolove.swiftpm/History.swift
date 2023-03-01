import SwiftUI

@available(iOS 16.0, *)
struct History: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 1.00, green: 0.93, blue: 0.90)
                    .ignoresSafeArea(.all)
                VStack(spacing: 15) {
                
                    Text("En el mundo de las matemáticas, hay 6 funciones trigonométricas que han formado lazos muy fuertes entre ellas. Fue amor a primera vista y desde que se conocieron son inseparables e increíblemente fieles. Siempre que veas a una de ellas, muy probablemente verás a su función pareja, y si no, puedes estar seguro de que va en camino a verla.")
                        .font(.body)
                        .fontWeight(.medium)
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                    
                    HStack {
                        Text("Las parejas son las siguientes:")
                            .font(.body)
                            .fontWeight(.medium)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    
                    HStack {
                        Image("Pareja1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                        Image("Pareja2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                    }
                    
                    HStack {
                        Spacer()
                        Image("Pareja3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180)
                        Spacer()
                    }
                    
                    Button {
                        // Acción del botón...
                    } label: {
                        NavigationLink(destination: Part1()) {
                            Text("Nivel 1")
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
struct Prueba_Previews: PreviewProvider {
    static var previews: some View {
        History()
    }
}

import SwiftUI

struct TripWelcome: View {
    var onStartAdventure: () -> Void

    var body: some View {
        ZStack {
            // 1. IMAGEN DE FONDO (Simulada)
            // Cuando tengas la foto real en Assets, cambias esto por: Image("welcome_bg")
            Image(systemName: "eiffel.tower.fill") // Placeholder temporal divertido
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .foregroundStyle(.gray.opacity(0.3)) // Color suave
                .background(Color(hex: "FDF7EB")) // Un fondo crema si falla la foto
                .ignoresSafeArea()
            
            // Filtro sepia/oscuro encima para que se lea el texto
            Color.black.opacity(0.1)
                .ignoresSafeArea()

            // 2. CONTENIDO
            VStack(alignment: .leading, spacing: 10) {
                
                Spacer().frame(height: 100) // Espacio arriba
                
                // TÍTULOS
                Text("Welcome")
                    .font(.system(size: 48, weight: .bold, design: .serif))
                    .foregroundStyle(Color.brandTextDark)
                    .italic()
                
                Text("TrippAholic")
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundStyle(Color.brandPrimary) // ¡Usando tu color dorado!
                
                Spacer() // Empuja todo lo de abajo al fondo
                
                // BOTÓN "Start Adventure"
                Button(action: {
                    onStartAdventure()
                }) {
                    HStack {
                        Text("Start adventure")
                            .font(.title3)
                            .bold()
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 32)
                    .background(Color.brandPrimary) // Tu dorado
                    .clipShape(Capsule()) // Bordes completamente redondos
                }
                .padding(.bottom, 50) // Margen abajo
            }
            .padding(.horizontal, 30)
            .frame(maxWidth: .infinity, alignment: .leading) // Alinea todo a la izquierda
        }
    }
}
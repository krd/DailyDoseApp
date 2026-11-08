import SwiftUI

struct NeumorphismView: View {
    var body: some View {
        ZStack {
            color.BaseColor
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 150, height: 150)
                .modifier(NeumorphismModifier())
        }
    }
}

struct NeumorphismModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(color.ForegroundColor)
            .shadow(color: color.LightShadowColor, radius: 4.395496901187151, x: 2.4365398044692737, y: 2.4365398044692737)
            .shadow(color: color.DarkShadowColor, radius: 4.395496901187151, x: -2.4365398044692737, y: -2.4365398044692737)
    }
}

class color {
    static let BaseColor: Color = Color(red: 0.39215660095214844, green: 0.39215660095214844, blue: 0.39215660095214844)
    static let LightShadowColor: Color = Color(red: 0.31372520327568054, green: 0.31372520327568054, blue: 0.31372520327568054)
    static let DarkShadowColor: Color = Color(red: 0.47058796882629395, green: 0.47058796882629395, blue: 0.47058796882629395)
    static let ForegroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 0.43137228722665827, green: 0.43137228722665827, blue: 0.43137228722665827), Color(red: 0.3529409146776386, green: 0.3529409146776386, blue: 0.3529409146776386)]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

struct NeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 13")
    }
}

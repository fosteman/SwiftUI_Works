////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import SwiftUI

struct WelcomeMessageView: View {
    var body: some View {
       HStack {
          LogoImage()
          
          VStack(alignment: .leading) {
            Text("Welcome to")
              .font(.headline)
              .bold()
            Text("Kuchi")
              .font(.largeTitle)
              .bold()
          }
          .foregroundColor(.red)
          .lineLimit(2)
          .multilineTextAlignment(.leading)
          .padding(.horizontal)
        }
    }
}

struct WelcomeMessageView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeMessageView()
    }
}

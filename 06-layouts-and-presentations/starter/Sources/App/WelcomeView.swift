////Code composed by Timofei (Fosteman) Shchepkin 2019-11-18.
//


import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcome-background")
        HStack {
        Image(systemName: "table")
        .resizable()
            .frame(width: 60, height: 60, alignment: .topLeading)
        .cornerRadius(160) //setting the corner radio
            .border(Color.gray, width: 10)
            .background(Color(white: 0.9))
    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .foregroundColor(.red)
        
          VStack {
            Text("Welcome to")
              .font(.system(size: 60))
              .bold()
            Text("Kuchi")
              .font(.system(size: 60))
              .bold()
          }
          .foregroundColor(.red)
          .lineLimit(2)
          .multilineTextAlignment(.leading)
        }
    }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

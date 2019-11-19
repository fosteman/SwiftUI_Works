////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image(systemName: "table")
        .resizable()
        .frame(width: 60, height: 60, alignment: .center)
        .border(Color.gray, width: 1)
        .background(Color(white: 0.9))
        .clipShape(Circle())
        .foregroundColor(.red)
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}

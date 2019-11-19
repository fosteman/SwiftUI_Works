////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    
    
    var body: some View {
            VStack(content: {
                WelcomeMessageView()
                TextField("How would I call you ?", text: $name)
                    .bordered()
            
            })
        .padding()
        .background(WelcomeBackgroundImage())
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

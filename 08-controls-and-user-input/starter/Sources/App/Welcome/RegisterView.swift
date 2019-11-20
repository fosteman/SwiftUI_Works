////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import SwiftUI

struct RegisterView: View {
    @State var name: String = ""
    @ObservedObject var keyboardHandler: KeyboardFollower
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler
    }
    
    var body: some View {
            VStack(content: {
                WelcomeMessageView()
                TextField("How would I call you ?", text: $name)
                    .bordered()
            })
        .background(WelcomeBackgroundImage())
                .padding(.bottom, keyboardHandler.keyboardHeight)
                .onAppear {self.keyboardHandler}
        .onDisappear {self.keyboardHandler.$isVisible.unsubscribe()}
    }
    
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower())
    }
}

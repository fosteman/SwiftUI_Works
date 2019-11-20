////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @ObservedObject var keyboardHandler: KeyboardFollower
    init(keyboardHandler: KeyboardFollower) {
        self.keyboardHandler = keyboardHandler
    }
    
    var body: some View {
            VStack(content: {
                WelcomeMessageView()
                TextField("How would I call you ?", text: $user.profile.name)
                    .bordered()
                Button(action: self.registerUser) {
                    HStack {
                        Image(systemName: "checkmark")
                        .resizable()
                            .frame(width: 16, height: 16, alignment: .center)
                        Text("Sign up !")
                            .font(.body)
                        .bold()
                    }
                }
            .bordered()
                }
            )
        .background(WelcomeBackgroundImage())
                .padding(.bottom, keyboardHandler.keyboardHeight)
    
    }
    
}

struct RegisterView_Previews: PreviewProvider {
static let user = UserManager(name: "Tim")
    static var previews: some View {
        RegisterView(keyboardHandler: KeyboardFollower()).environmentObject(user)
    }
}

extension RegisterView {
    func registerUser() -> Void {
        user.persistProfile()
    }
}

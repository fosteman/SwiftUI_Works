////Code composed by Timofei (Fosteman) Shchepkin 2019-11-19.
//


import Foundation
import Combine

final internal class User {
    @Published var isRegistered: Bool = false
    var profile: Profile = Profile() {
        willSet {
            willChange.send(self)
        }
    }
    init(name: String) {
        self.profile.name = name
    }
    init() {}
    // instance variable
    let willChange = PassthroughSubject<User, Never>()
    
}

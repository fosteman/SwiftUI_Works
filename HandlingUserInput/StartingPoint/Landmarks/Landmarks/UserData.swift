////Code composed by Timofei (Fosteman) Shchepkin 2019-11-20.
//


import Combine
typealias Reactive = ObservableObject

final class UserData: Reactive {
    @Published var showFavOnly = false
    @Published var landmarks = landmarkData
    
}

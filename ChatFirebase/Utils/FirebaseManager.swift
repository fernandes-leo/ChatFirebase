//
//  FirebaseManager.swift
//  ChatFirebase
//
//  Created by Leonardo Fernandes on 12/04/22.
//

import Foundation
import Firebase

class FirebaseManager: NSObject {

    let auth: Auth
    let storage: Storage
    let firestore: Firestore

    var currentUser: ChatUser?

    static let shared = FirebaseManager()

    override init() {
        FirebaseApp.configure()

        self.auth = Auth.auth()
        self.storage = Storage.storage()
        self.firestore = Firestore.firestore()

        super.init()
    }

}

//
//  ContentView.swift
//  BiometricAuth
//
//  Created by Fernando Gomes on 19/10/19.
//  Copyright © 2019 Fernando Gomes. All rights reserved.
//

import SwiftUI
import LocalAuthentication

struct ContentView: View {
    @State var loginStatus: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                useTouchId()
            }) {
                Text("Login")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func useTouchId() {
    let context = LAContext()
    let policy = LAPolicy.deviceOwnerAuthenticationWithBiometrics
    var authError: NSError? = nil
    
    guard context.canEvaluatePolicy(policy, error: &authError) else {
        print("Unsuported device")
        return
    }
    
    context.evaluatePolicy(policy, localizedReason: "Faça login") { (success, error) in
        DispatchQueue.main.async {
            guard success else {
                print("erro")
                return
                
            }
        }
    }
}

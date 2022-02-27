//
//  TCACounterApp.swift
//  TCACounter
//
//  Created by osushi on 2022/02/27.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCACounterApp: App {
    var body: some Scene {
        WindowGroup {
            Counter(store: Store(
                initialState: AppState(),
                reducer: appReducer,
                environment: AppEnvironment()))
        }
    }
}

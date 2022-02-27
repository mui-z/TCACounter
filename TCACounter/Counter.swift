//
//  Counter.swift
//  TCACounter
//
//  Created by osushi on 2022/02/27.
//

import SwiftUI
import ComposableArchitecture

enum AppAction: Equatable {
    case increment
    case decriment
}

struct AppState: Equatable {
    var count = 0
}

struct AppEnvironment {}

let appReducer = Reducer<AppState, AppAction, AppEnvironment> { state, action, _ in
    switch action {
    case .increment:
        state.count += 1
        return .none
        
    case .decriment:
        state.count -= 1
        return .none
    }
}

struct Counter: View {
    let store: Store<AppState, AppAction>
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                Text(viewStore.state.count.description)
                HStack {
                    Button("+", action: { viewStore.send(.increment) })
                    Button("-", action: { viewStore.send(.decriment) })
                }
            }
        }
    }
}

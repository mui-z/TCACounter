//
//  ReducerTest.swift
//  TCACounterTests
//
//  Created by osushi on 2022/02/27.
//

import XCTest
import ComposableArchitecture

@testable import TCACounter

class ReducerTest: XCTestCase {
    
    func testIncrement() {
        let store = TestStore(
            initialState: AppState(),
            reducer: appReducer,
            environment: AppEnvironment())
        
        store.send(.increment) {
            $0.count = 1
        }
    }
    
    func testDescriment() {
        let store = TestStore(
            initialState: AppState(),
            reducer: appReducer,
            environment: AppEnvironment())
        
        store.send(.decriment) {
            $0.count = -1
        }
    }
}

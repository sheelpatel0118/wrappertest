// The Swift Programming Language
// https://docs.swift.org/swift-book
import React
import ReactBridge
//import DoorstepAIiOSSDK

@ReactModule(jsName: "Calendar")
class CalendarModule: NSObject, RCTBridgeModule {
    
    @ReactMethod
    @objc func test() {
        print("testing the method")
    }
    
}

//import DoorstepAIiOSSDKFramework

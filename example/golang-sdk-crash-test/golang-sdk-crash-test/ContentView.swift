//
//  ContentView.swift
//  golang-sdk-crash-test
//
//  Created by Billion Young on 2022/1/13.
//

import SwiftUI
import Golang_crash_test2
import Golang_crash_test1

extension View {
    func printUI(_ args: Any..., separator: String = " ", terminator: String = "\n") -> EmptyView {
        let output = args.map(String.init(describing:)).joined(separator: separator)
        print(output, terminator: terminator)
        CrashTest1()
        CrashTest2()
        return EmptyView()
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            
        printUI("test")
        Text("Hello, world!")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

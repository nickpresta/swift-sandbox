//
//  main.swift
//  HelloWorld
//
//  Created by Nick Presta on 2014-06-02.
//  Copyright (c) 2014 Nick Presta. All rights reserved.
//

class Universe {
    var center: String
    
    init(center _center: String) {
            center = _center
    }
    
    func greet(greeting: String) -> String {
        let out: String = "\(greeting), \(center)!"
        return out
    }
}

let world = Universe(center: "Nick")
println(world.greet("How's it going"))


func makeGreeting(greeting: String) -> (String) -> String {
    func greeter(subject: String) -> String {
        return "\(greeting), \(subject)"
    }
    
    return greeter
}

let helloGreeter = makeGreeting("Hello")
println(helloGreeter("World"))





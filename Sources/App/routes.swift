import Vapor
import Fluent
/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }
    // 1
    let acronymsController = AcronymsController()
    // 2
    try router.register(collection: acronymsController)
}

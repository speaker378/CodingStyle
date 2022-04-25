import XCTest
@testable import CodingStyle

final class CodingStyleTests: XCTestCase {
    func testCamelCase() throws {
        @CodingStyle(.camelCase) var myProperty = "Hello World"
        @CodingStyle(.camelCase) var myProperty2 = "Hello-World"
        @CodingStyle(.camelCase) var myProperty3 = "Hello_World"
        XCTAssertEqual(myProperty, "HelloWorld")
        XCTAssertEqual(myProperty2, "HelloWorld")
        XCTAssertEqual(myProperty3, "HelloWorld")
    }
    
    func testSnakeCase() throws {
        @CodingStyle(.snakeCase) var myProperty = "Hello World"
        @CodingStyle(.snakeCase) var myProperty2 = "Hello-World"
        @CodingStyle(.snakeCase) var myProperty3 = "Hello_World"
        XCTAssertEqual(myProperty, "Hello_World")
        XCTAssertEqual(myProperty2, "Hello_World")
        XCTAssertEqual(myProperty3, "Hello_World")
    }
    
    func testKebabCase() throws {
        @CodingStyle(.kebabCase) var myProperty = "Hello World"
        @CodingStyle(.kebabCase) var myProperty2 = "Hello-World"
        @CodingStyle(.kebabCase) var myProperty3 = "Hello_World"
        XCTAssertEqual(myProperty, "Hello-World")
        XCTAssertEqual(myProperty2, "Hello-World")
        XCTAssertEqual(myProperty3, "Hello-World")
    }
}


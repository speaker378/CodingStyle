import Foundation

public enum CodingCase {
    case camelCase
    case snakeCase
    case kebabCase
}

@propertyWrapper
public struct CodingStyle {
    public private(set) var text: String
    private var currentCodingCase: CodingCase

    init(wrappedValue: String, _ codingCase: CodingCase) {
        text = wrappedValue
        currentCodingCase = codingCase
    }

    public var wrappedValue: String {
        get {
            get()
        }
        set {
            set(newValue)
        }
    }

    private func get() -> String {
        switch currentCodingCase {
        case .camelCase:
            return toCamelCase()
        case .snakeCase:
            return toSnakeCase()
        case .kebabCase:
            return toKebabCase()
        }
    }

    private mutating func set(_ newValue: String) {
        text = newValue
    }

    private func toCamelCase() -> String {
        return text
            .components(separatedBy: CharacterSet.alphanumerics.inverted)
            .filter { !$0.isEmpty }
            .map { $0.capitalized }
            .joined()
    }

    private func toSnakeCase() -> String {
        return text
            .replacingOccurrences(of: " ", with: "_")
            .replacingOccurrences(of: "-", with: "_")
    }

    private func toKebabCase() -> String {
        return text
            .replacingOccurrences(of: " ", with: "-")
            .replacingOccurrences(of: "_", with: "-")
    }
}

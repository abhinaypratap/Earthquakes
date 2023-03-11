import Foundation

/// An enumeration of Quake fetch and consumption errors.
enum QuakeError: Error {
    case missingData
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return "Found and will discard a quake missing a valid code, magnitude, place, or time."
        }
    }
}

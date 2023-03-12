import Foundation

/// An enumeration of Quake fetch and consumption errors.
enum QuakeError: Error {
    case missingData
    case networkError
    case unexpectedError(error: Error)
}

extension QuakeError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .missingData:
            return "Found and will discard a quake missing a valid code, magnitude, place, or time."
        case .networkError:
            return "Error fetching quake data over the network."
        case .unexpectedError(let error):
            return "Received unexpected error. \(error.localizedDescription)"
        }
    }
}

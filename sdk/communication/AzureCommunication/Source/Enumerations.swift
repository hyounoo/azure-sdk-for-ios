// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation

/// The kind of a communication identifier.
public enum CommunicationIdentifierKind: RequestStringConvertible, Codable, Equatable {
    /// Custom value for unrecognized enum values
    case custom(String)

    case unknown

    case communicationUser

    case phoneNumber

    case callingApplication

    case microsoftTeamsUser

    public var requestString: String {
        switch self {
        case let .custom(val):
            return val
        case .unknown:
            return "unknown"
        case .communicationUser:
            return "communicationUser"
        case .phoneNumber:
            return "phoneNumber"
        case .callingApplication:
            return "callingApplication"
        case .microsoftTeamsUser:
            return "microsoftTeamsUser"
        }
    }

    public init(_ val: String) {
        switch val.lowercased() {
        case "unknown":
            self = .unknown
        case "communicationuser":
            self = .communicationUser
        case "phonenumber":
            self = .phoneNumber
        case "callingapplication":
            self = .callingApplication
        case "microsoftteamsuser":
            self = .microsoftTeamsUser
        default:
            self = .custom(val)
        }
    }

    // MARK: Codable

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let value = try container.decode(String.self)
        self.init(value)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(requestString)
    }
}

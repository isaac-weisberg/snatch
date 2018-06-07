import Foundation

public class JSONBodyEncoding {
    let encoder = JSONEncoder()

    public func encode<Parameters: Encodable>(_ parameters: Parameters) throws -> Data {
        do {
            return try encoder.encode(parameters)
        } catch {
            throw SnatchError.encoding(error)
        }
    }

    public func apply<Parameters: Encodable>(_ parameters: Parameters, to request: inout URLRequest) throws {
        let data = try encode(parameters)

        request.httpBody = data
    }
}
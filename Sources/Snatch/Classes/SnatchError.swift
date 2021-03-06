/**
   Represents errors that occur not on transport layer, but inside the API.

   - spooks: things that don't make no sense. Usually is to be treated as internal error.
*/
public enum SnatchError: Error {
    case spooks
    case encoding(Error)
    case connection(Error)
}

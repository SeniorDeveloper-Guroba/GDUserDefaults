
import Foundation

public final class UserDefaultsStandard {
    
    static public let shared = UserDefaultsStandard()
    
    private let standard = UserDefaults.standard
    
    public func save<T>(key: StoreProjectKey.Key, value: T) {
        standard.set(value, forKey: key.rawValue)
    }
    
    public func get(key: StoreProjectKey.Key) -> Any? {
        let value = standard.object(forKey: key.rawValue)
        return value
    }
    
    public func save<T>(key: String, value: T) {
        standard.set(value, forKey: key)
    }
    
    public func get(key: String) -> Any? {
        let value = standard.object(forKey: key)
        return value
    }
}

public class StoreProjectKey {
    
    public enum Keys {
        case nul
    }
    
    public enum Key: String {
        case nul
        case token
        case isRegistration
        case userID
        case isMute
        case score
        case isMusic
    }
}

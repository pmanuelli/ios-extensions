public class UserInterfaceIdiom {
    public static var isRunningOnIPhone: Bool { UIDevice.current.userInterfaceIdiom == .phone }
    
    public static func valueFor<T>(iPhone iPhoneValue: T, iPad iPadValue: T) -> T {
        return isRunningOnIPhone ? iPhoneValue : iPadValue
    }
}

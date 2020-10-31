public extension UIImage {
    convenience init?(named name: String,
                      inBundleForClass aClass: AnyClass,
                      compatibleWith traitCollection: UITraitCollection? = nil) {
        self.init(named: name, in: Bundle(for: aClass), compatibleWith: traitCollection)
    }
}

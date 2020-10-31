public extension CGAffineTransform {
    static func scale(_ factor: CGFloat) -> CGAffineTransform {
        CGAffineTransform(scale: factor)
    }
    
    init(scale: CGFloat) {
        self.init(scaleX: scale, y: scale)
    }
}

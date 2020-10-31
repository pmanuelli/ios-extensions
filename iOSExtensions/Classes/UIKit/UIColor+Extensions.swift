public extension UIColor {
    convenience init(r red: Int, g green: Int, b blue: Int, a alpha: Int = 255) {
        self.init(red: unitaryIntervalForRGBValue(red),
                  green: unitaryIntervalForRGBValue(green),
                  blue: unitaryIntervalForRGBValue(blue),
                  alpha: unitaryIntervalForRGBValue(alpha))
    }
}

private func unitaryIntervalForRGBValue(_ value: Int) -> CGFloat {
    let boundedValue = max(min(value, 255), 0)
    return CGFloat(boundedValue) / CGFloat(255)
}

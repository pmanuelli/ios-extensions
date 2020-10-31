public extension UIView {
    @IBInspectable
    var layerBorderColor: UIColor? {
        get { getLayerBorderColor() }
        set { layer.borderColor = newValue?.cgColor }
    }
    
    @IBInspectable
    var layerBorderWidth: CGFloat {
        get { layer.borderWidth }
        set { layer.borderWidth = newValue }
    }
    
    private func getLayerBorderColor() -> UIColor? {
        if let cgColor = layer.borderColor {
            return UIColor(cgColor: cgColor)
        } else {
            return nil
        }
    }
    
    func setLayerBorder(color: UIColor, width: Float? = nil) {
        layerBorderColor = color
        
        if let width = width {
            layerBorderWidth = CGFloat(width)
        }
    }
}

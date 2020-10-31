public extension UIView {
    func addNibAsSubview() {
        addNibAsSubview(nibName: String(describing: Self.self))
    }
    
    func addNibAsSubview(nibName: String) {
        let nib = UINib(nibName: nibName, bundle: Bundle(for: Self.self))
        let nibView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        addSubviewToBounds(nibView)
    }
}

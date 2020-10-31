public protocol LoadableFromNib: AnyObject {}

public extension LoadableFromNib where Self: UIView {
    static func loadNib(owner: Any? = nil, options: [UINib.OptionsKey: Any]? = nil) -> Self {
        let bundle = Bundle(for: self)
        let nibName = String(describing: self)
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: owner, options: options).first as! Self
    }
}

extension UIView: LoadableFromNib {}

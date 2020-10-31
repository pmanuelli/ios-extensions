public extension UIView {
    func addSubviewToBounds(_ view: UIView) {
        addSubview(view)
        addConstraintsToBounds(view)
    }
    
    func insertSubviewToBounds(_ view: UIView, at index: Int) {
        insertSubview(view, at: index)
        addConstraintsToBounds(view)
    }
    
    private func addConstraintsToBounds(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
}

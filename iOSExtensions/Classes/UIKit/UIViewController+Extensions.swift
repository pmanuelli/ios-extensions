public extension UIViewController {
    @objc func hideNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

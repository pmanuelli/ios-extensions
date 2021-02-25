public extension Optional {
    func `let`(_ block: (Wrapped) -> Void) {
        if let wrapped = self { block(wrapped) }
    }
        
    func `let`<T>(_ block: (Wrapped) -> T, else elseBlock: () -> T) -> T {
        if let wrapped = self { return block(wrapped) }
        else { return elseBlock() }
    }
}

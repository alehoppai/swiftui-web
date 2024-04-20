protocol Modifier {
  mutating func update(with newModifier: Modifier) -> Void
}

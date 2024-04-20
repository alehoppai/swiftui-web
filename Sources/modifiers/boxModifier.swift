
struct BoxModifier {
    var padding: (String, String, String, String)?

  mutating func update(with newModifier: BoxModifier) {
    if let padding = newModifier.padding {
      self.padding = padding
    }
  }
}
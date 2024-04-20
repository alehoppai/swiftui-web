
struct TextModifier {
  var fontWeight: FontWeight?
  var fontSize: FontSize?
  var textDecoration: TextDecoration?
  var fontStyle: FontStyle?
  var lineHeight: LineHeight?
  var color: Color?

  mutating func update(with newModifier: TextModifier) {
      if let fontWeight = newModifier.fontWeight {
          self.fontWeight = fontWeight
      }
      if let fontSize = newModifier.fontSize {
          self.fontSize = fontSize
      }
      if let textDecoration = newModifier.textDecoration {
          self.textDecoration = textDecoration
      }
      if let fontStyle = newModifier.fontStyle {
          self.fontStyle = fontStyle
      }
      if let lineHeight = newModifier.lineHeight {
          self.lineHeight = lineHeight
      }
      if let color = newModifier.color {
          self.color = color
      }
  }
}
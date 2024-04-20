struct Modifiers {
  var fontWeight: FontWeight?
  var fontSize: FontSize?
  var textDecoration: TextDecoration?
  var fontStyle: FontStyle?
  var lineHeight: LineHeight?
  var color: Color?

  mutating func update(with newModifiers: Modifiers) {
      if let fontWeight = newModifiers.fontWeight {
          self.fontWeight = fontWeight
      }
      if let fontSize = newModifiers.fontSize {
          self.fontSize = fontSize
      }
      if let textDecoration = newModifiers.textDecoration {
          self.textDecoration = textDecoration
      }
      if let fontStyle = newModifiers.fontStyle {
          self.fontStyle = fontStyle
      }
      if let lineHeight = newModifiers.lineHeight {
          self.lineHeight = lineHeight
      }
      if let color = newModifiers.color {
          self.color = color
      }
  }
}

protocol HtmlView {
  var tag: Tag { get }
  var template: String { get }
}

struct Text: HtmlView {
  let value: String
  let inline: Bool
  let tag: Tag

  var modifiers = Modifiers()

  init(_ value: String = "", inline: Bool = true, modifiers: Modifiers? = nil) {
    self.value = value
    self.inline = inline
    self.tag = inline ? .span : .p

    if let modifiers = modifiers {
      self.modifiers.update(with: modifiers)
    }
  }

  var template: String {
    "<\(tag)>\(value)</\(tag)>"
  }

  func fontWeight(_ weight: FontWeight) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(fontWeight: weight))
  }
  func fontSize(_ size: FontSize) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(fontSize: size))
  }
  func textDecoration(_ decoration: TextDecoration) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(textDecoration: decoration))
  }
  func fontStyle(_ style: FontStyle) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(fontStyle: style))
  }
  func lineHeight(_ height: LineHeight) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(lineHeight: height))
  }
  func color(_ color: Color) -> Text {
    Text(self.value, inline: self.inline, modifiers: Modifiers(color: color))
  }
}

var a = Text("abc", inline: true).fontWeight(.bold)
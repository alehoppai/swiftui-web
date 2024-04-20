struct Text: HtmlView {
  let value: String
  let inline: Bool
  let tag: Tag

  var modifier: TextModifier

  init(_ value: String = "", inline: Bool = true, modifier: TextModifier? = nil) {
    self.value = value
    self.inline = inline
    self.tag = inline ? .span : .p
    self.modifier = modifier ?? TextModifier()

    if let modifier = modifier {
      self.modifier.update(with: modifier)
    }
  }

  var template: String {
    "<\(tag)>\(value)</\(tag)>"
  }

  func fontWeight(_ weight: FontWeight) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(fontWeight: weight))
  }
  func fontSize(_ size: FontSize) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(fontSize: size))
  }
  func textDecoration(_ decoration: TextDecoration) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(textDecoration: decoration))
  }
  func fontStyle(_ style: FontStyle) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(fontStyle: style))
  }
  func lineHeight(_ height: LineHeight) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(lineHeight: height))
  }
  func color(_ color: Color) -> Text {
    Text(self.value, inline: self.inline, modifier: TextModifier(color: color))
  }
}
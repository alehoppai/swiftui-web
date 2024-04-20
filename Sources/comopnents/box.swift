struct Box: HtmlView {
    let tag: Tag = .div
    var modifier: BoxModifier

    init(modifier: BoxModifier? = nil) {
        self.modifier = modifier ?? BoxModifier()

        if let modifier = modifier {
            self.modifier.update(with: modifier)
        }
    }

    var template: String {
        return "<\(tag)></\(tag)>"
    }

    func padding(_ padding: Padding, _ measure: Measures) -> Box {
      var p = self.modifier.padding ?? ("", "", "", "")

      switch padding {
        case .top:
          p.0 = padding.get(measure)
        case .right:
          p.1 = padding.get(measure)
        case .bottom:
          p.2 = padding.get(measure)
        case .left:
          p.3 = padding.get(measure)
        case .all:
          p = (padding.get(measure), padding.get(measure), padding.get(measure), padding.get(measure))
        case .inline:
          p.1 = padding.get(measure)
          p.3 = padding.get(measure)
        case .block:
          p.0 = padding.get(measure)
          p.2 = padding.get(measure)
      }

      return Box(modifier: BoxModifier(padding: p))
    }
}
enum Padding {
  case top(Int)
  case right(Int)
  case bottom(Int)
  case left(Int)
  case all(Int)
  case inline(Int)
  case block(Int)

  func get (_ measure: Measures) -> String {
    switch measure {
    case .px:
      return px
    case .rem:
      return rem
    }
  }

  var px: String {
    switch self {
    case .top(let value):
      return "\(value)px"
    case .right(let value):
      return "\(value)px"
    case .bottom(let value):
      return "\(value)px"
    case .left(let value):
      return "\(value)px"
    case .all(let value):
      return "\(value)px"
    case .inline(let value):
      return "\(value)px"
    case .block(let value):
      return "\(value)px"
    }
  }

  var rem: String {
    switch self {
    case .top(let value):
      return "\(value / 16)px"
    case .right(let value):
      return "\(value / 16)px"
    case .bottom(let value):
      return "\(value / 16)px"
    case .left(let value):
      return "\(value / 16)px"
    case .all(let value):
      return "\(value / 16)px"
    case .inline(let value):
      return "\(value / 16)px"
    case .block(let value):
      return "\(value / 16)px"
    }
  }
}
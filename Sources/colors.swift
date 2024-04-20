enum Color {
  case primary
  case secondary
  case tertiary
  case black
  case white

  var value: String {
    switch self {
    case .primary: return "#007bff"
    case .secondary: return "#6c757d"
    case .tertiary: return "#6c757d"
    case .black: return "#000000"
    case .white: return "#ffffff"
    }
  }
}
enum FontWeight {
  case normal
  case bold
  case bolder
  case lighter
  case initial
  case inherit
  case number(Int)

  var stringValue: String {
      switch self {
      case .normal:
          return "normal"
      case .bold:
          return "bold"
      case .bolder:
          return "bolder"
      case .lighter:
          return "lighter"
      case .initial:
          return "initial"
      case .inherit:
          return "inherit"
      case .number(let value):
          return "\(value)"
      }
  }
}

enum FontSize {
  case xs
  case sm
  case md
  case lg
  case xl
  
  var stringValue: String {
    switch self {
    case .xs:
        return "0.75rem" // 12px in rem (12 / 16)
    case .sm:
        return "0.875rem" // 14px in rem (14 / 16)
    case .md:
        return "1rem" // 16px in rem (16 / 16)
    case .lg:
        return "1.125rem" // 18px in rem (18 / 16)
    case .xl:
        return "1.25rem" // 20px in rem (20 / 16)
    }
  }
}

enum TextDecoration {
  case none
  case underline
  case overline
  case lineThrough
  case initial
  case inherit

  var stringValue: String {
    switch self {
    case .none:
        return "none"
    case .underline:
        return "underline"
    case .overline:
        return "overline"
    case .lineThrough:
        return "line-through"
    case .initial:
        return "initial"
    case .inherit:
        return "inherit"
    }
  }
}

enum FontStyle {
  case normal
  case italic
  case oblique
  case initial
  case inherit

  var stringValue: String {
    switch self {
    case .normal:
        return "normal"
    case .italic:
        return "italic"
    case .oblique:
        return "oblique"
    case .initial:
        return "initial"
    case .inherit:
        return "inherit"
    }
  }
}

enum LineHeight {
  case normal
  case none
  case inherit
  case initial
  case unset
  case number(Int)

  var stringValue: String {
    switch self {
    case .normal:
        return "normal"
    case .none:
        return "none"
    case .inherit:
        return "inherit"
    case .initial:
        return "initial"
    case .unset:
        return "unset"
    case .number(let value):
        return "\(value)"
    }
  }
}
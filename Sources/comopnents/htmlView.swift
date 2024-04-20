protocol HtmlView {
  associatedtype Modifier

  var tag: Tag { get }
  var template: String { get }
  var modifier: Modifier { get set }
}
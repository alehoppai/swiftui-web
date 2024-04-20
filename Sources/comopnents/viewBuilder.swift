// struct HtmlView {
//     // Define your HtmlView struct
// }

// // Custom ViewBuilder
// @resultBuilder
// struct MyViewBuilder {
//     static func buildBlock(_ components: HtmlView...) -> [HtmlView] {
//         components
//     }
// }

// struct Box {
//     var children: [HtmlView]

//     init(@MyViewBuilder content: () -> [HtmlView]) {
//         self.children = content()
//     }
// }

// // Example usage
// let box = Box {
//     HtmlView()
//     HtmlView()
// }

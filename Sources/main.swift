// The Swift Programming Language
// https://docs.swift.org/swift-book

print("Hello, world!")

var box = Box { _ in
  Text("First text", inline: true).fontWeight(.bold)
  Text("SecondText", inline: true).fontWeight(.bold)

  return []
}.padding(.top(10), .px)
print(box)
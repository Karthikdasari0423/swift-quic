// swift-tools-version: 5.6

import PackageDescription

let package = Package(
  name: "swift-quic",
  platforms: [.macOS(.v10_15)],
  products: [
    .library(
      name: "Quic",
      targets: ["Quic"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/PureSwift/Socket.git", from: "0.0.0"),
    .package(url: "https://github.com/kennethlaskoski/swift-quiche.git", branch: "main"),
  ],
  targets: [
    .target(
      name: "Quic",
      dependencies: [
        .product(name: "Socket", package: "Socket"),
        .product(name: "SwiftQuiche", package: "swift-quiche"),
      ]
    ),
    .testTarget(
      name: "QuicTests",
      dependencies: ["Quic"]
    ),
  ]
)

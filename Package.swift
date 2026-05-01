// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "VLC",
    platforms: [
    .iOS(.v14),
    .tvOS(.v14),
    .macOS(.v12),
  ],
  products: [
    .library(
      name: "MobileVLCKit",
      targets: ["MobileVLCKit"]
    ),
    .library(
      name: "TVVLCKit",
      targets: ["TVVLCKit"]
    ),
    .library(
      name: "VLCKit",
      targets: ["VLCKit"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "MobileVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.11/MobileVLCKit.xcframework.zip",
      checksum: "685c8e494c2c0c8a99296a809f9f20264343e3b771ae50c7a9d1a0766fcaa504"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.11/TVVLCKit.xcframework.zip",
      checksum: "9ba8b5b3e913a13c0bc3ce55318dc5a9f7a295df07acd0e1e0a3e5f82ebb0b03"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.11/VLCKit.xcframework.zip",
      checksum: "2001ddf2c9c27458ab7befe45623c91699a4391e4f24566e46c2bb30d154e484"
    ),
  ]
)


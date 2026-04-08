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
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.7/MobileVLCKit.xcframework.zip",
      checksum: "8876d37dced76a840ede02c54eb8cb36da39822c342d2b15c90179a56e76e245"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.7/TVVLCKit.xcframework.zip",
      checksum: "6c3cf7e0b0eeb7490f0335d88be473535d7b56c0a2831cca7fe5292e510d360a"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.7/VLCKit.xcframework.zip",
      checksum: "cd6506515bbf62db1d0cf11e1eec02a60bd528eb25e9cca06ef89d6195fe5544"
    ),
  ]
)


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
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.6/MobileVLCKit.xcframework.zip",
      checksum: "eb1c7d9e335b2b7da8e9559d8ffafc18ebf7747f67029e6d6c85202b760ad853"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.6/TVVLCKit.xcframework.zip",
      checksum: "dccde0a0a932538d4585e2eb754ab7467daada5dae2b43ad0942ae34f4a4fdff"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.6/VLCKit.xcframework.zip",
      checksum: "62bb9078964acd2d435b849d7bbda8fe663515d592389f1d39ef13676469eae9"
    ),
  ]
)


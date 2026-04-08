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
      checksum: "b1b79f0f91d71de4617a8f8d53f190c5c8e2a2796a7e353d2f2812ed105a8832"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.7/TVVLCKit.xcframework.zip",
      checksum: "c159432f0f0858a7b5512fa56aa5e006c8564c8e1c806340962c8a98de464370"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.7/VLCKit.xcframework.zip",
      checksum: "62bb9078964acd2d435b849d7bbda8fe663515d592389f1d39ef13676469eae9"
    ),
  ]
)


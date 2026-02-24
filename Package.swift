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
      name: "VLC",
      targets: [
        "VLC",
      ]
    ),
  ],
  targets: [
    .target(
      name: "VLC",
      dependencies: [
        .target(name: "MobileVLCKit", condition: .when(platforms: [.iOS])),
        .target(name: "TVVLCKit", condition: .when(platforms: [.tvOS])),
        .target(name: "VLCKit", condition: .when(platforms: [.macOS])),
      ],
      path: "Sources",
      linkerSettings: [
        .linkedFramework("MobileVLCKit", .when(platforms: [.iOS])),
        .linkedFramework("TVVLCKit", .when(platforms: [.tvOS])),
        .linkedFramework("VLCKit", .when(platforms: [.macOS])),
      ]
    ),
    .binaryTarget(
      name: "MobileVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/3.7.9/MobileVLCKit.xcframework.zip",
      checksum: "78ce0cb52278a918f31f9997434cff3c93084f16b741c13769eedde3eeba4948"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/3.7.9/TVVLCKit.xcframework.zip",
      checksum: "013187589c0529793fe2f86ed267ddd237b30e6a5442f382bfbda05682f29305"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/3.7.9/VLCKit.xcframework.zip",
      checksum: "f4aa1f88913952735f6aca013ade7cd61c4414a42b4d2c25056f82124452b4bb"
    ),
  ]
)


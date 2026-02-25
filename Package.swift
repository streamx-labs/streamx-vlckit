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
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.1/MobileVLCKit.xcframework.zip",
      checksum: "5b21d834499fb3331f55cb60402e5814690665ac71b7bb24d033922283a5a364"
    ),
    .binaryTarget(
      name: "TVVLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.1/TVVLCKit.xcframework.zip",
      checksum: "013187589c0529793fe2f86ed267ddd237b30e6a5442f382bfbda05682f29305"
    ),
    .binaryTarget(
      name: "VLCKit",
      url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/4.0.1/VLCKit.xcframework.zip",
      checksum: "f4aa1f88913952735f6aca013ade7cd61c4414a42b4d2c25056f82124452b4bb"
    ),
  ]
)


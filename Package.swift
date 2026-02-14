// swift-tools-version:5.5

import PackageDescription

struct PackageMetadata {
    static let version: String = "3.7.2"
    static let MobileChecksum: String = "c9c3a794e8585198b59c6bb7da5418a3194ffa1ffa6f9a1cbdf4dc0ea26dc6cf"
}

let package = Package(
    name: "vlckit",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "MobileVLCKit",
            targets: ["MobileVLCKit"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MobileVLCKit",
            url: "https://github.com/streamx-labs/streamx-vlckit/downloads/\(PackageMetadata.version)/MobileVLCKit.xcframework.zip",
            checksum: PackageMetadata.MobileChecksum
        )
    ]
)


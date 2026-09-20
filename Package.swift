// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VLCKit",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS("7.4"),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "VLCKit", targets: ["VLCKit"])
    ],
    targets: [
        .binaryTarget(
            name: "VLCKit",
            url: "https://github.com/streamx-labs/streamx-vlckit/releases/download/untagged-9d407dc7e1148b76ee0d/VLCKit_4_0_20260831_1526_zip",
            checksum: "c61a42052ec4c1315325fba81f8893f4ccf639d92bf61dd1b3c37c3a2f26b8e3"
        )
    ]
)

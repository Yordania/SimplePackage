
// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "SimplePackage",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "SimplePackage",
            targets: ["SimplePackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.5.0")),
    ],
    targets: [
        .target(
            name: "SimplePackage",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "SimplePackageTests",
            dependencies: ["SimplePackage"]),
    ]
)

// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let packageName = "OpenTok"

let package = Package(
    name: packageName,
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: packageName,
            targets: ["TechnologiesOpenTok"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TechnologiesOpenTok",
            dependencies: [
                .target(name: packageName)
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("GLKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("VideoToolbox")
            ]
        ),
        .binaryTarget(
            name: packageName,
            url: "https://github.com/graff-ctrl/OpenTokSPM/raw/main/OpenTok.zip",
            checksum: "c4fc092731cc678d9ac5c7e83b61613e4c47001ddd6fcc9f2d6e68e090a70b5c"
            
        )
    ]
)

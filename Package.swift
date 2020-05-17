// swift-tools-version:5.2

// swift-tools-version:5.2
import PackageDescription

let package = Package(
  name: "Environment",
  platforms: [
     .macOS(.v10_15)
  ],
  products: [
    .library(name: "Environment", targets: ["Environment"]),
    ],

  targets: [
    //C helpers
    .target(name: "CEnvironment"),
    
    //Package
    .target(name: "Environment", dependencies: [
        .target(name: "CEnvironment"),
    ]),
    .testTarget(name: "EnvironmentTests", dependencies: [
            .target(name: "Environment"),
        ]),
    ]
)

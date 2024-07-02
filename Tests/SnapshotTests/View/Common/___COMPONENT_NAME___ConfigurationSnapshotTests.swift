//
//  ___COMPONENT_NAME___ConfigurationSnapshotTests.swift
//  Spark___COMPONENT_NAME___Tests
//
//  Created by ___USERNAME___ on ___CURRENT_DATE___.
//  Copyright © ___CURRENT_YEAR___ Adevinta. All rights reserved.
//

import UIKit
@testable import Spark___COMPONENT_NAME___
@_spi(SI_SPI) @testable import SparkCommon
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting

struct ___COMPONENT_NAME___ConfigurationSnapshotTests {

    // MARK: - Properties

    let scenario: ___COMPONENT_NAME___ScenarioSnapshotTests

    let intent: ___COMPONENT_NAME___Intent
    let modes: [ComponentSnapshotTestMode]
    let sizes: [UIContentSizeCategory]

    // MARK: - Getter

    func testName() -> String {
        return [
            "\(self.scenario.rawValue)",
            "\(self.intent)"
        ].joined(separator: "-")
    }
}

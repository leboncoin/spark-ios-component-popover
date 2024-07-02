//
//  ___COMPONENT_NAME___UIViewSnapshotTests.swift
//  Spark___COMPONENT_NAME___Tests
//
//  Created by ___USERNAME___ on ___CURRENT_DATE___.
//  Copyright © ___CURRENT_YEAR___ Adevinta. All rights reserved.
//

import XCTest
@testable import SparkTheme
@testable import SparkTheming
@_spi(SI_SPI) @testable import SparkCommon
@_spi(SI_SPI) @testable import SparkCommonTesting
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting

@testable import Spark___COMPONENT_NAME___

final class ___COMPONENT_NAME___UIViewSnapshotTests: UIKitComponentSnapshotTestCase {

    // MARK: - Properties

    private let theme: Theme = SparkTheme.shared

    // MARK: - Tests

    func test() {
        let scenarios = ___COMPONENT_NAME___ScenarioSnapshotTests.allCases

        for scenario in scenarios {
            let configurations = scenario.configuration(isSwiftUIComponent: false)
            for configuration in configurations {

                let view = ___COMPONENT_NAME___UIView(
                    theme: self.theme,
                    intent: configuration.intent
                )
                view.translatesAutoresizingMaskIntoConstraints = false

                self.assertSnapshot(
                    matching: view,
                    modes: configuration.modes,
                    sizes: configuration.sizes,
                    testName: configuration.testName()
                )
            }
        }
    }
}

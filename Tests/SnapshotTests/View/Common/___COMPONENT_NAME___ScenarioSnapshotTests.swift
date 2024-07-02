//
//  ___COMPONENT_NAME___ScenarioSnapshotTestsTests.swift
//  Spark___COMPONENT_NAME___SnapshotTests
//
//  Created by ___USERNAME___ on ___CURRENT_DATE___.
//  Copyright © ___CURRENT_YEAR___ Adevinta. All rights reserved.
//

@testable import Spark___COMPONENT_NAME___
@_spi(SI_SPI) @testable import SparkCommonTesting
@_spi(SI_SPI) @testable import SparkCommonSnapshotTesting
import UIKit
import SwiftUI

enum ___COMPONENT_NAME___ScenarioSnapshotTests: String, CaseIterable {
    case test1

    // MARK: - Type Alias

    typealias Constants = ComponentSnapshotTestConstants

    // MARK: - Configurations

    func configuration(isSwiftUIComponent: Bool) -> [___COMPONENT_NAME___ConfigurationSnapshotTests] {
        switch self {
        case .test1:
            return self.test1(isSwiftUIComponent: isSwiftUIComponent)
        }
    }

    // MARK: - Scenarios

    /// Test 1
    ///
    /// Description: TODO:
    ///
    /// Content:
    ///  - TODO:
    private func test1(isSwiftUIComponent: Bool) -> [___COMPONENT_NAME___ConfigurationSnapshotTests] {
        let intents = ___COMPONENT_NAME___Intent.allCases

        return intents.map {
            .init(
                scenario: self,
                intent: $0,
                modes: Constants.Modes.all,
                sizes: Constants.Sizes.default
            )
        }
    }
}

//
//  PopoverGetSpacesUseCaseTests.swift
//  SparkPopoverUnitTests
//
//  Created by louis.borlee on 25/06/2024.
//  Copyright © 2024 Leboncoin. All rights reserved.
//

import XCTest
@testable import SparkPopover
@_spi(SI_SPI) import SparkThemingTesting

final class PopoverGetSpacesUseCaseTests: XCTestCase {

    private let theme = ThemeGeneratedMock.mocked()
    private let useCase = PopoverGetSpacesUseCase()

    func test() {
        // WHEN
        let spaces = self.useCase.execute(layoutSpacing: self.theme.layout.spacing)

        // THEN
        XCTAssertEqual(spaces.horizontal, self.theme.layout.spacing.large, "Wrong horizontal spacing")
        XCTAssertEqual(spaces.vertical, self.theme.layout.spacing.large, "Wrong vertical spacing")
    }

}

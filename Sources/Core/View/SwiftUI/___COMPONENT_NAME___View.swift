//
//  ___COMPONENT_NAME___View.swift
//  Spark___COMPONENT_NAME___
//
//  Created by ___USERNAME___ on ___CURRENT_DATE___.
//  Copyright © ___CURRENT_YEAR___ Adevinta. All rights reserved.
//

import SwiftUI
import SparkTheming
@_spi(SI_SPI) import SparkCommon

/// The SwiftUI version for the ___component_name___
public struct ___COMPONENT_NAME___View: View {

    // MARK: - Private Properties

    @ObservedObject private var viewModel: ___COMPONENT_NAME___ViewModel

    // MARK: - Initialization

    /// Initialize a new ___component_name___.
    /// - Parameters:
    ///   - theme: The spark theme.
    ///   - intent: The intent of the ___component_name___.
    public init(
        theme: Theme,
        intent: ___COMPONENT_NAME___Intent
    ) {
        self.viewModel = ___COMPONENT_NAME___ViewModel(
            theme: theme,
            intent: intent
        )
    }

    // MARK: - View

    public var body: some View {
        Text("Hello ___COMPONENT_NAME___")
            .accessibilityIdentifier(___COMPONENT_NAME___AccessibilityIdentifier.view)
    }

    // MARK: - Modifier

    // TODO:
}

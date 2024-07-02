//
//  ___COMPONENT_NAME___ViewModel.swift
//  Spark___COMPONENT_NAME___
//
//  Created by ___USERNAME___ on ___CURRENT_DATE___.
//  Copyright © ___CURRENT_YEAR___ Adevinta. All rights reserved.
//

import SwiftUI
import SparkTheming

final class ___COMPONENT_NAME___ViewModel: ObservableObject {

    // MARK: - Public properties

    // TODO: If Needed

    // MARK: - Private properties

    private let theme: Theme
    private var intent: ___COMPONENT_NAME___Intent

    // MARK: - Initialization

    init(
        theme: Theme,
        intent: ___COMPONENT_NAME___Intent = .primary
    ) {
        self.theme = theme
        self.intent = intent
    }

    // MARK: - Setter

    // TODO: If Needed

    // MARK: - Getter

    // TODO: If Needed
}

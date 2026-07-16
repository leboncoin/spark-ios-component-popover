//
//  PopoverGetColorsUseCase.swift
//  Spark
//
//  Created by louis.borlee on 25/06/2024.
//  Copyright © 2024 Leboncoin. All rights reserved.
//

import Foundation
@_spi(SI_SPI) import SparkTheming

// sourcery: AutoMockable
protocol PopoverGetColorsUseCasable {
    func execute(
        colors: any Colors,
        intent: PopoverIntent,
        isLiquidGlass: Bool
    ) -> PopoverColors
}

final class PopoverGetColorsUseCase: PopoverGetColorsUseCasable {
    func execute(
        colors: any Colors,
        intent: PopoverIntent,
        isLiquidGlass: Bool
    ) -> PopoverColors {
        return if isLiquidGlass {
            self.executeNew(colors: colors, intent: intent)
        } else {
            self.executeOldIosVersion(colors: colors, intent: intent)
        }
    }

    func executeNew(colors: any Colors, intent: PopoverIntent) -> PopoverColors {
        switch intent {
        case .accent:
            return .init(
                background: ColorTokenClear(),
                foreground: colors.accent.accent
            )
        case .info:
            return .init(
                background: ColorTokenClear(),
                foreground: colors.feedback.info
            )
        case .main:
            return .init(
                background: ColorTokenClear(),
                foreground: colors.main.mainVariant
            )
        case .neutral:
            return .init(
                background: ColorTokenClear(),
                foreground: colors.feedback.neutral
            )
        default:
            return .init(
                background: ColorTokenClear(),
                foreground: colors.base.onSurface
            )
        }
    }

    func executeOldIosVersion(colors: any Colors, intent: PopoverIntent) -> PopoverColors {
        switch intent {
        case .accent:
            return .init(
                background: colors.accent.accentContainer,
                foreground: colors.accent.onAccentContainer
            )
        case .info:
            return .init(
                background: colors.feedback.infoContainer,
                foreground: colors.feedback.onInfoContainer
            )
        case .main:
            return .init(
                background: colors.main.mainContainer,
                foreground: colors.main.onMainContainer
            )
        case .neutral:
            return .init(
                background: colors.feedback.neutralContainer,
                foreground: colors.feedback.onNeutralContainer
            )
        default:
            return .init(
                background: colors.base.surface,
                foreground: colors.base.onSurface
            )
        }
    }
}

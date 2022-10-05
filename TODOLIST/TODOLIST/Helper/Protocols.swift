//
//  Protocols.swift
//  TODOLIST
//
//  Created by Burak Dinç on 5.10.2022.
//
import UIKit

protocol TabbarModuleBuilderProtocol {
    static func build() -> UITabBarController
}

protocol ModuleBuilderProtocol {
    static func build() -> UIViewController
}

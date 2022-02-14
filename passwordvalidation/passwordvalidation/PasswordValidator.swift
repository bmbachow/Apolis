//
//  PasswordValidator.swift
//  passwordvalidation
//
//  Created by Brian Bachow on 2/10/22.
//

import Foundation


struct PasswordValidator {

func validateUserName(username: String?) -> Bool {
    if username?.count ?? 0 < 6 {
        return false
    } else {
        return true
    }
}

func validatePassword(password: String?) -> Bool {
    if password?.count ?? 0 < 8 {
        return false
    } else {
        return true
    }
}
}

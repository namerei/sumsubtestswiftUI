//
//  Date+ Ext.swift
//  sumsub test_UIKIT
//
//  Created by Namerei on 28.04.24.
//

import Foundation

extension Date {
    
    private static var formatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        return df
    }()
    
    static var formatted: String {
        return formatter.string(from: Date())
    }
}

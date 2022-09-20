//
//  TimeUtil.swift
//  redbook
//
//  Created by 苏粤翔 on 2022/9/20.
//

import Foundation

class TimeUtil{
    
    static let dateFormatter:DateFormatter = DateFormatter()
    
    static func date2MM_dd(Date date: Date) -> String {
         TimeUtil.dateFormatter.dateFormat = "MM-dd";
         return TimeUtil.dateFormatter.string(from: date);
    }
    
}

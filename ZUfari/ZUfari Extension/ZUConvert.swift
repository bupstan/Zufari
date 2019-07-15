//
//  ZUConvert.swift
//  ZUfari Extension
//
//  Created by Ye Wai Yan on 7/14/19.
//  Copyright © 2019 Ye Wai Yan. All rights reserved.
//


//  The rules are referenced from Rabbit Converter
//  Rabbit Repository --> https://github.com/Rabbit-Converter/Rabbit

import Foundation
import AppKit

public struct ZUConvert {
    public static func convertToUnicode(_ zawgyiString: String) -> String {
        let rules = [["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""],
                     ["from": "", "to": ""]]
        
        return replaceWithRules(rules: rules, mainString: zawgyiString)
    }
    
    public static func convertToZawgyi(_ unicodeString: String) -> String {
        let rules = [["from": "\u{1004}\u{103a}\u{1039}", "to": "\u{1064}"],
                    ["from": "\u{1039}\u{1010}\u{103d}", "to": "\u{1096}"],
                    ["from": "\u{102b}\u{103a}", "to": "\u{105a}"],
                    ["from": "\u{100b}\u{1039}\u{100c}", "to": "\u{1092}"],
                    ["from": "\u{102d}\u{1036}", "to": "\u{108e}"],
                    ["from": "\u{104e}\u{1004}\u{103a}\u{1038}", "to": "\u{104e}"],
                    ["from": "[\u{1025}\u{1009}](?=[\u{1039}\u{102f}\u{1030}])", "to": "\u{106a}"],
                    ["from": "[\u{1025}\u{1009}](?=[\u{1037}]?[\u{103a}])", "to": "\u{1025}"],
                    ["from": "\u{100a}(?=[\u{1039}\u{103d}])", "to": "\u{106b}"],
                    ["from": "(\u{1039}[\u{1000}-\u{1021}])(\u{102D}){0,1}\u{102f}", "to": "$1$2\u{1033}"],
                    ["from": "(\u{1039}[\u{1000}-\u{1021}])\u{1030}", "to": "$1\u{1034}"],
                    ["from": "\u{1014}(?=[\u{102d}\u{102e}]?[\u{1030}\u{103d}\u{103e}\u{102f}\u{1039}])", "to": "\u{108f}"],
                    ["from": "\u{1014}\u{103c}", "to": "\u{108f}\u{103c}"],
                    ["from": "\u{1039}\u{1000}", "to": "\u{1060}"],
                    ["from": "\u{1039}\u{1001}", "to": "\u{1061}"],
                    ["from": "\u{1039}\u{1002}", "to": "\u{1062}"],
                    ["from": "\u{1039}\u{1003}", "to": "\u{1063}"],
                    ["from": "\u{1039}\u{1005}", "to": "\u{1065}"],
                    ["from": "\u{1039}\u{1006}", "to": "\u{1066}"],
                    ["from": "\u{1039}\u{1007}", "to": "\u{1068}"],
                    ["from": "\u{1039}\u{1008}", "to": "\u{1069}"],
                    ["from": "\u{1039}\u{100b}", "to": "\u{106c}"],
                    ["from": "\u{1039}\u{100c}", "to": "\u{106d}"],
                    ["from": "\u{100d}\u{1039}\u{100d}", "to": "\u{106e}"],
                    ["from": "\u{100d}\u{1039}\u{100e}", "to": "\u{106f}"],
                    ["from": "\u{1039}\u{100f}", "to": "\u{1070}"],
                    ["from": "\u{1039}\u{1010}", "to": "\u{1071}"],
                    ["from": "\u{1039}\u{1011}", "to": "\u{1073}"],
                    ["from": "\u{1039}\u{1012}", "to": "\u{1075}"],
                    ["from": "\u{1039}\u{1013}", "to": "\u{1076}"],
                    ["from": "\u{1039}[\u{1014}\u{108f}]", "to": "\u{1077}"],
                    ["from": "\u{1039}\u{1015}", "to": "\u{1078}"],
                    ["from": "\u{1039}\u{1016}", "to": "\u{1079}"],
                    ["from": "\u{1039}\u{1017}", "to": "\u{107a}"],
                    ["from": "\u{1039}\u{1018}", "to": "\u{107b}"],
                    ["from": "\u{1039}\u{1019}", "to": "\u{107c}"],
                    ["from": "\u{1039}\u{101c}", "to": "\u{1085}"],
                    ["from": "\u{103f}", "to": "\u{1086}"],
                    ["from": "\u{103d}\u{103e}", "to": "\u{108a}"],
                    ["from": "(\u{1064})([\u{1000}-\u{1021}])([\u{103b}\u{103c}]?)\u{102d}", "to": "$2$3\u{108b}"],
                    ["from": "(\u{1064})([\u{1000}-\u{1021}])([\u{103b}\u{103c}]?)\u{102e}", "to": "$2$3\u{108c}"],
                    ["from": "(\u{1064})([\u{1000}-\u{1021}])([\u{103b}\u{103c}]?)\u{1036}", "to": "$2$3\u{108d}"],
                    ["from": "(\u{1064})([\u{1000}-\u{1021}])([\u{103b}\u{103c}]?)([\u{1031}]?)", "to": "$2$3$4$1"],
                    ["from": "\u{101b}(?=([\u{102d}\u{102e}]?)[\u{102f}\u{1030}\u{103d}\u{108a}])", "to": "\u{1090}"],
                    ["from": "\u{100f}\u{1039}\u{100d}", "to": "\u{1091}"],
                    ["from": "\u{100b}\u{1039}\u{100b}", "to": "\u{1097}"],
                    ["from": "([\u{1000}-\u{1021}\u{108f}\u{1029}\u{106e}\u{106f}\u{1086}\u{1090}\u{1091}\u{1092}\u{1097}])([\u{1060}-\u{1069}\u{106c}\u{106d}\u{1070}-\u{107c}\u{1085}\u{108a}])?([\u{103b}-\u{103e}]*)?\u{1031}", "to": "\u{1031}$1$2$3"],
                    ["from": "\u{103c}\u{103e}", "to": "\u{103c}\u{1087}"],
                    ["from": "([\u{1000}-\u{1021}\u{108f}\u{1029}])([\u{1060}-\u{1069}\u{106c}\u{106d}\u{1070}-\u{107c}\u{1085}])?(\u{103c})", "to": "$3$1$2"],
                    ["from": "\u{103a}", "to": "\u{1039}"],
                    ["from": "\u{103b}", "to": "\u{103a}"],
                    ["from": "\u{103c}", "to": "\u{103b}"],
                    ["from": "\u{103d}", "to": "\u{103c}"],
                    ["from": "\u{103e}", "to": "\u{103d}"],
                    ["from": "([^\u{103a}\u{100a}])\u{103d}([\u{102d}\u{102e}]?)\u{102f}", "to": "$1\u{1088}$2"],
                    ["from": "([\u{101b}\u{103a}\u{103c}\u{108a}\u{1088}\u{1090}])([\u{1030}\u{103d}])?([\u{1032}\u{1036}\u{1039}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)(\u{102f})?\u{1037}", "to": "$1$2$3$4\u{1095}"],
                    ["from": "([\u{102f}\u{1014}\u{1030}\u{103d}])([\u{1032}\u{1036}\u{1039}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)\u{1037}", "to": "$1$2\u{1094}"],
                    ["from": "([\u{103b}])([\u{1000}-\u{1021}])([\u{1087}]?)([\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)\u{102f}", "to": "$1$2$3$4\u{1033}"],
                    ["from": "([\u{103b}])([\u{1000}-\u{1021}])([\u{1087}]?)([\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)\u{1030}", "to": "$1$2$3$4\u{1034}"],
                    ["from": "([\u{103a}\u{103c}\u{100a}\u{1020}\u{1025}])([\u{103d}]?)([\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)\u{102f}", "to": "$1$2$3\u{1033}"],
                    ["from": "([\u{103a}\u{103c}\u{100a}\u{101b}])(\u{103d}?)([\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}]?)\u{1030}", "to": "$1$2$3\u{1034}"],
                    ["from": "\u{100a}\u{103d}", "to": "\u{100a}\u{1087}"],
                    ["from": "\u{103d}\u{1030}", "to": "\u{1089}"],
                    ["from": "\u{103b}([\u{1000}\u{1003}\u{1006}\u{100f}\u{1010}\u{1011}\u{1018}\u{101a}\u{101c}\u{101a}\u{101e}\u{101f}])", "to": "\u{107e}$1"],
                    ["from": "\u{107e}([\u{1000}\u{1003}\u{1006}\u{100f}\u{1010}\u{1011}\u{1018}\u{101a}\u{101c}\u{101a}\u{101e}\u{101f}])([\u{103c}\u{108a}])([\u{1032}\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}])", "to": "\u{1084}$1$2$3"],
                    ["from": "\u{107e}([\u{1000}\u{1003}\u{1006}\u{100f}\u{1010}\u{1011}\u{1018}\u{101a}\u{101c}\u{101a}\u{101e}\u{101f}])([\u{103c}\u{108a}])", "to": "\u{1082}$1$2"],
                    ["from": "\u{107e}([\u{1000}\u{1003}\u{1006}\u{100f}\u{1010}\u{1011}\u{1018}\u{101a}\u{101c}\u{101a}\u{101e}\u{101f}])([\u{1033}\u{1034}]?)([\u{1032}\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}])", "to": "\u{1080}$1$2$3"],
                    ["from": "\u{103b}([\u{1000}-\u{1021}])([\u{103c}\u{108a}])([\u{1032}\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}])", "to": "\u{1083}$1$2$3"],
                    ["from": "\u{103b}([\u{1000}-\u{1021}])([\u{103c}\u{108a}])", "to": "\u{1081}$1$2"],
                    ["from": "\u{103b}([\u{1000}-\u{1021}])([\u{1033}\u{1034}]?)([\u{1032}\u{1036}\u{102d}\u{102e}\u{108b}\u{108c}\u{108d}\u{108e}])", "to": "\u{107f}$1$2$3"],
                    ["from": "\u{103a}\u{103d}", "to": "\u{103d}\u{103a}"],
                    ["from": "\u{103a}([\u{103c}\u{108a}])", "to": "$1\u{107d}"],
                    ["from": "([\u{1033}\u{1034}])\u{1094}", "to": "$1\u{1095}"],
                    ["from": "\u{108F}\u{1071}", "to": "\u{108F}\u{1072}"],
                    ["from": "([\u{1000}-\u{1021}])([\u{107B}\u{1066}])\u{102C}", "to": "$1\u{102C}$2"],
                    ["from": "\u{102C}([\u{107B}\u{1066}])\u{1037}", "to": "\u{102C}$1\u{1094}"]]

//
//
//          Unicoded rules for Xcode Editor
//        let unicodeToZawgyiRule = [["from": "င်္", "to": "ၤ"],
//         ["from": "္တွ", "to": "႖"],
//         ["from": "ါ်", "to": "ၚ"],
//         ["from": "ဋ္ဌ", "to": "႒"],
//         ["from": "ိံ", "to": "ႎ"],
//         ["from": "၎င်း", "to": "၎"],
//         ["from": "[ဥဉ](?=[္ုူ])", "to": "ၪ"],
//         ["from": "[ဥဉ](?=[့]?[်])", "to": "ဥ"],
//         ["from": "ည(?=[္ွ])", "to": "ၫ"],
//         ["from": "(္[က-အ])(ိ){0,1}ု", "to": "$1$2ဳ"],
//         ["from": "(္[က-အ])ူ", "to": "$1ဴ"],
//         ["from": "န(?=[ိီ]?[ူွှု္])", "to": "ႏ"],
//         ["from": "နြ", "to": "ႏြ"],
//         ["from": "္က", "to": "ၠ"],
//         ["from": "္ခ", "to": "ၡ"],
//         ["from": "္ဂ", "to": "ၢ"],
//         ["from": "္ဃ", "to": "ၣ"],
//         ["from": "္စ", "to": "ၥ"],
//         ["from": "္ဆ", "to": "ၦ"],
//         ["from": "္ဇ", "to": "ၨ"],
//         ["from": "္ဈ", "to": "ၩ"],
//         ["from": "္ဋ", "to": "ၬ"],
//         ["from": "္ဌ", "to": "ၭ"],
//         ["from": "ဍ္ဍ", "to": "ၮ"],
//         ["from": "ဍ္ဎ", "to": "ၯ"],
//         ["from": "္ဏ", "to": "ၰ"],
//         ["from": "္တ", "to": "ၱ"],
//         ["from": "္ထ", "to": "ၳ"],
//         ["from": "္ဒ", "to": "ၵ"],
//         ["from": "္ဓ", "to": "ၶ"],
//         ["from": "္[နႏ]", "to": "ၷ"],
//         ["from": "္ပ", "to": "ၸ"],
//         ["from": "္ဖ", "to": "ၹ"],
//         ["from": "္ဗ", "to": "ၺ"],
//         ["from": "္ဘ", "to": "ၻ"],
//         ["from": "္မ", "to": "ၼ"],
//         ["from": "္လ", "to": "ႅ"],
//         ["from": "ဿ", "to": "ႆ"],
//         ["from": "ွှ", "to": "ႊ"],
//         ["from": "(ၤ)([က-အ])([ျြ]?)ိ", "to": "$2$3ႋ"],
//         ["from": "(ၤ)([က-အ])([ျြ]?)ီ", "to": "$2$3ႌ"],
//         ["from": "(ၤ)([က-အ])([ျြ]?)ံ", "to": "$2$3ႍ"],
//         ["from": "(ၤ)([က-အ])([ျြ]?)([ေ]?)", "to": "$2$3$4$1"],
//         ["from": "ရ(?=([ိီ]?)[ုူွႊ])", "to": "႐"],
//         ["from": "ဏ္ဍ", "to": "႑"],
//         ["from": "ဋ္ဋ", "to": "႗"],
//         ["from": "([က-အႏဩၮၯႆ႐႑႒႗])([ၠ-ၩၬၭၰ-ၼႅႊ])?([ျ-ှ]*)?ေ", "to": "ေ$1$2$3"],
//         ["from": "ြှ", "to": "ြႇ"],
//         ["from": "([က-အႏဩ])([ၠ-ၩၬၭၰ-ၼႅ])?(ြ)", "to": "$3$1$2"],
//         ["from": "်", "to": "္"],
//         ["from": "ျ", "to": "်"],
//         ["from": "ြ", "to": "ျ"],
//         ["from": "ွ", "to": "ြ"],
//         ["from": "ှ", "to": "ွ"],
//         ["from": "([^်ည])ွ([ိီ]?)ု", "to": "$1ႈ$2"],
//         ["from": "([ရ်ြႊႈ႐])([ူွ])?([ဲံ္ိီႋႌႍႎ]?)(ု)?့", "to": "$1$2$3$4႕"],
//         ["from": "([ုနူွ])([ဲံ္ိီႋႌႍႎ]?)့", "to": "$1$2႔"],
//         ["from": "([ျ])([က-အ])([ႇ]?)([ံိီႋႌႍႎ]?)ု", "to": "$1$2$3$4ဳ"],
//         ["from": "([ျ])([က-အ])([ႇ]?)([ံိီႋႌႍႎ]?)ူ", "to": "$1$2$3$4ဴ"],
//         ["from": "([်ြညဠဥ])([ွ]?)([ံိီႋႌႍႎ]?)ု", "to": "$1$2$3ဳ"],
//         ["from": "([်ြညရ])(ွ?)([ံိီႋႌႍႎ]?)ူ", "to": "$1$2$3ဴ"],
//         ["from": "ညွ", "to": "ညႇ"],
//         ["from": "ွူ", "to": "ႉ"],
//         ["from": "ျ([ကဃဆဏတထဘယလယသဟ])", "to": "ၾ$1"],
//         ["from": "ၾ([ကဃဆဏတထဘယလယသဟ])([ြႊ])([ဲံိီႋႌႍႎ])", "to": "ႄ$1$2$3"],
//         ["from": "ၾ([ကဃဆဏတထဘယလယသဟ])([ြႊ])", "to": "ႂ$1$2"],
//         ["from": "ၾ([ကဃဆဏတထဘယလယသဟ])([ဳဴ]?)([ဲံိီႋႌႍႎ])", "to": "ႀ$1$2$3"],
//         ["from": "ျ([က-အ])([ြႊ])([ဲံိီႋႌႍႎ])", "to": "ႃ$1$2$3"],
//         ["from": "ျ([က-အ])([ြႊ])", "to": "ႁ$1$2"],
//         ["from": "ျ([က-အ])([ဳဴ]?)([ဲံိီႋႌႍႎ])", "to": "ၿ$1$2$3"],
//         ["from": "်ွ", "to": "ွ်"],
//         ["from": "်([ြႊ])", "to": "$1ၽ"],
//         ["from": "([ဳဴ])႔", "to": "$1႕"],
//         ["from": "ႏၱ", "to": "ႏၲ"],
//         ["from": "([က-အ])([ၻၦ])ာ", "to": "$1ာ$2"],
//         ["from": "ာ([ၻၦ])့", "to": "ာ$1႔"]]

//        var tmpRules = rules
//        for tmpRule in tmpRules {
//            print("[\"from\": \"", terminator: "")
//            print(tmpRule["from"]!, terminator: "")
//            print("\", \"to\": \"", terminator: "")
//            print(tmpRule["to"]!, terminator: "")
//            print("\"], ")
//        }
        
        return replaceWithRules(rules: rules, mainString: unicodeString)
    }
    
    public static func replaceWithRules(rules:[[String:String]], mainString:String) -> String {
        var result = mainString
        
        for rule in rules {
            let fromString = rule["from"]!
            let toString = rule["to"]!
            let range = result.startIndex ..< result.endIndex
            
            result = result.replacingOccurrences(of: fromString, with: toString, options: .regularExpression, range: range)
        }
        
        return result
    }
    
    
}



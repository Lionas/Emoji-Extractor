//
//  emoji.swift
//  EmojiExtractor
//
//  Created by 瀬戸 直喜 on 2017/08/24.
//  Copyright © 2017年 Lionas. All rights reserved.
//

import Foundation

func readEmojiDataFile(emojiDataPath: String) -> String {

    var text = ""
    do {
        text = try String(contentsOf: URL(string: emojiDataPath)!, encoding: String.Encoding.utf8)
    } catch {
        print("Read Emoji data file error!")
    }

    return text
}

func extractEmoji(text: String) -> String {
    
    // 改行で分割
    let arr = text.components(separatedBy: "\n")

    var emojiCodePattern = "["
    
    for row in arr {
        
        // 1文字以上ある場合
        if row.utf8.count != 0 {
            // 先頭がコメントの場合
            if row.substring(to: row.index(after: row.startIndex)) == "#" {
                if row.range(of: "Total elements:") != nil {
                    // 初回の絵文字一覧（Emoji）を読み込んだら終了
                    // Emoji_Presentation, Emoji_Modifier_Base, Extended_Pictographicは無視
                    break
                }
                else {
                    // 無視して次の行へ
                    continue
                }
            }
            
            // 「;」で分割する
            let code = row.components(separatedBy: ";")
            
            // 絵文字でないデータの除去
            let tmp = code[0].components(separatedBy: "..")
            if tmp[0] < "00A9" {
                // x00A9以下は通常の記号・数字なので絵文字としてカウントしない
                continue
            }
            
            // 先頭に「\x{」を追加、「..」を「}\x{」に置換、末尾に「}」を追加、不要なスペースの削除
            let unicodeRow = "\\\\x{" +
                code[0]
                    .replacingOccurrences(of: "..", with: "}-\\\\x{")
                    .trimmingCharacters(in: .whitespacesAndNewlines) +
                "}"
            
            emojiCodePattern += unicodeRow
        }
        
    }
    emojiCodePattern += "]"
    
    return emojiCodePattern
}

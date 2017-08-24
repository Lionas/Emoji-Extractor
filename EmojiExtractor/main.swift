//
//  main.swift
//  EmojiExtractor
//
//  Created by 瀬戸 直喜 on 2017/08/24.
//  Copyright © 2017年 Lionas. All rights reserved.
//

import Foundation

if CommandLine.argc < 2 {
    // 引数エラー
    print("絵文字定義ファイルが指定されていません.引数に絵文字定義ファイルの絶対パスを指定してください.")
} else {
    
    // 絵文字ファイルのURL
    let emojiDataFileUrl = "file://" + CommandLine.arguments[1]
    
    // 絵文字ファイルの読み込み
    let emojiData = readEmojiDataFile(emojiDataPath: emojiDataFileUrl)
    
    // 文字コードの取り出し＆正規表現パターンの生成
    // [\\x{9999}\\x{9999}...
    let emojiCodePattern = extractEmoji(text: emojiData)
    
    // 結果出力
    print("絵文字検索用正規表現パターン>>>")
    print(emojiCodePattern)
    
}



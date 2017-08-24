//
//  main.swift
//  EmojiExtractor
//
//  Created by 瀬戸 直喜 on 2017/08/24.
//  Copyright © 2017年 Lionas. All rights reserved.
//

import Foundation

let emojiDataFileUrl = "file://" + CommandLine.arguments[1]

// 絵文字データファイルの読み込み
let emojiData = readEmojiDataFile(emojiDataPath: emojiDataFileUrl)

// 文字コードの取り出し＆正規表現パターンの生成
// [\\x{9999}\\x{9999}...
let emojiCodePattern = extractEmoji(text: emojiData)

print(emojiCodePattern)


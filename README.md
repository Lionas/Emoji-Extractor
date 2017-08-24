# Emoji-Extractor
* 絵文字のUnicode判定用コード出力ツール

# 実行環境
* Xcode 8.3.1
* Swift 3

# 実行方法
1. XcodeからEmojiExtractor.xcodeprojを開く
2. Unicode.orgから 絵文字の定義ファイル(emoji-data.txt)をダウンロードし、任意のディレクトリに格納する
  http://unicode.org/Public/emoji/6.0/emoji-data.txt
3. EditSchemeを選択する

    ![EditScheme](https://github.com/Lionas/Emoji-Extractor/blob/images/emoji1.png)
    
4. Arguments Passed On Launchに emoji-data.txt のパスを指定する

    ![EditScheme](https://github.com/Lionas/Emoji-Extractor/blob/images/emoji2.png)

5. Runボタンを押して実行すると、正規表現形式で絵文字のコード一覧が出力される

```
[\\x{00A9}\\x{00AE}\\x{203C}\\x{2049}\\x{2122}\\x{2139}\\x{2194}-\\x{2199}\\x{21A9}-\\x{21AA}\\x{231A}-\\x{231B}\\x{2328}\\x{23CF}\\x{23E9}-\\x{23F3}\\x{23F8}-\\x{23FA}\\x{24C2}\\x{25AA}-\\x{25AB}\\x{25B6}\\x{25C0}\\x{25FB}-\\x{25FE}\\x{2600}-\\x{2604}\\x{260E}\\x{2611}\\x{2614}-\\x{2615}\\x{2618}\\x{261D}\\x{2620}\\x{2622}-\\x{2623}\\x{2626}\\x{262A}\\x{262E}-\\x{262F}\\x{2638}-\\x{263A}\\x{2640}\\x{2642}\\x{2648}-\\x{2653}\\x{2660}\\x{2663}\\x{2665}-\\x{2666}\\x{2668}\\x{267B}\\x{267F}\\x{2692}-\\x{2697}\\x{2699}\\x{269B}-\\x{269C}\\x{26A0}-\\x{26A1}\\x{26AA}-\\x{26AB}\\x{26B0}-\\x{26B1}\\x{26BD}-\\x{26BE}\\x{26C4}-\\x{26C5}\\x{26C8}\\x{26CE}\\x{26CF}\\x{26D1}\\x{26D3}-\\x{26D4}\\x{26E9}-\\x{26EA}\\x{26F0}-\\x{26F5}\\x{26F7}-\\x{26FA}\\x{26FD}\\x{2702}\\x{2705}\\x{2708}-\\x{2709}\\x{270A}-\\x{270B}\\x{270C}-\\x{270D}\\x{270F}\\x{2712}\\x{2714}\\x{2716}\\x{271D}\\x{2721}\\x{2728}\\x{2733}-\\x{2734}\\x{2744}\\x{2747}\\x{274C}\\x{274E}\\x{2753}-\\x{2755}\\x{2757}\\x{2763}-\\x{2764}\\x{2795}-\\x{2797}\\x{27A1}\\x{27B0}\\x{27BF}\\x{2934}-\\x{2935}\\x{2B05}-\\x{2B07}\\x{2B1B}-\\x{2B1C}\\x{2B50}\\x{2B55}\\x{3030}\\x{303D}\\x{3297}\\x{3299}\\x{1F004}\\x{1F0CF}\\x{1F170}-\\x{1F171}\\x{1F17E}\\x{1F17F}\\x{1F18E}\\x{1F191}-\\x{1F19A}\\x{1F1E6}-\\x{1F1FF}\\x{1F201}-\\x{1F202}\\x{1F21A}\\x{1F22F}\\x{1F232}-\\x{1F23A}\\x{1F250}-\\x{1F251}\\x{1F300}-\\x{1F320}\\x{1F321}\\x{1F324}-\\x{1F32C}\\x{1F32D}-\\x{1F32F}\\x{1F330}-\\x{1F335}\\x{1F336}\\x{1F337}-\\x{1F37C}\\x{1F37D}\\x{1F37E}-\\x{1F37F}\\x{1F380}-\\x{1F393}\\x{1F396}-\\x{1F397}\\x{1F399}-\\x{1F39B}\\x{1F39E}-\\x{1F39F}\\x{1F3A0}-\\x{1F3C4}\\x{1F3C5}\\x{1F3C6}-\\x{1F3CA}\\x{1F3CB}-\\x{1F3CE}\\x{1F3CF}-\\x{1F3D3}\\x{1F3D4}-\\x{1F3DF}\\x{1F3E0}-\\x{1F3F0}\\x{1F3F3}-\\x{1F3F5}\\x{1F3F7}\\x{1F3F8}-\\x{1F3FF}\\x{1F400}-\\x{1F43E}\\x{1F43F}\\x{1F440}\\x{1F441}\\x{1F442}-\\x{1F4F7}\\x{1F4F8}\\x{1F4F9}-\\x{1F4FC}\\x{1F4FD}\\x{1F4FF}\\x{1F500}-\\x{1F53D}\\x{1F549}-\\x{1F54A}\\x{1F54B}-\\x{1F54E}\\x{1F550}-\\x{1F567}\\x{1F56F}-\\x{1F570}\\x{1F573}-\\x{1F579}\\x{1F57A}\\x{1F587}\\x{1F58A}-\\x{1F58D}\\x{1F590}\\x{1F595}-\\x{1F596}\\x{1F5A4}\\x{1F5A5}\\x{1F5A8}\\x{1F5B1}-\\x{1F5B2}\\x{1F5BC}\\x{1F5C2}-\\x{1F5C4}\\x{1F5D1}-\\x{1F5D3}\\x{1F5DC}-\\x{1F5DE}\\x{1F5E1}\\x{1F5E3}\\x{1F5E8}\\x{1F5EF}\\x{1F5F3}\\x{1F5FA}\\x{1F5FB}-\\x{1F5FF}\\x{1F600}\\x{1F601}-\\x{1F610}\\x{1F611}\\x{1F612}-\\x{1F614}\\x{1F615}\\x{1F616}\\x{1F617}\\x{1F618}\\x{1F619}\\x{1F61A}\\x{1F61B}\\x{1F61C}-\\x{1F61E}\\x{1F61F}\\x{1F620}-\\x{1F625}\\x{1F626}-\\x{1F627}\\x{1F628}-\\x{1F62B}\\x{1F62C}\\x{1F62D}\\x{1F62E}-\\x{1F62F}\\x{1F630}-\\x{1F633}\\x{1F634}\\x{1F635}-\\x{1F640}\\x{1F641}-\\x{1F642}\\x{1F643}-\\x{1F644}\\x{1F645}-\\x{1F64F}\\x{1F680}-\\x{1F6C5}\\x{1F6CB}-\\x{1F6CF}\\x{1F6D0}\\x{1F6D1}-\\x{1F6D2}\\x{1F6E0}-\\x{1F6E5}\\x{1F6E9}\\x{1F6EB}-\\x{1F6EC}\\x{1F6F0}\\x{1F6F3}\\x{1F6F4}-\\x{1F6F6}\\x{1F6F7}-\\x{1F6F8}\\x{1F910}-\\x{1F918}\\x{1F919}-\\x{1F91E}\\x{1F91F}\\x{1F920}-\\x{1F927}\\x{1F928}-\\x{1F92F}\\x{1F930}\\x{1F931}-\\x{1F932}\\x{1F933}-\\x{1F93A}\\x{1F93C}-\\x{1F93E}\\x{1F940}-\\x{1F945}\\x{1F947}-\\x{1F94B}\\x{1F94C}\\x{1F950}-\\x{1F95E}\\x{1F95F}-\\x{1F96B}\\x{1F980}-\\x{1F984}\\x{1F985}-\\x{1F991}\\x{1F992}-\\x{1F997}\\x{1F9C0}\\x{1F9D0}-\\x{1F9E6}]
Program ended with exit code: 0
```

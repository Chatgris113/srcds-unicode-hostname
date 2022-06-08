# srcds-unicode-hostname

## 簡介

由於 srcds (Source Dedicated Server)的 .cfg 檔案並不太支援 unicode 字元，若是用像是中文字，會使 hostname 變成空白或亂碼。

該插件理論上適用於各 source 遊戲的伺服器，僅測試於 L4D2。
會覆蓋 .cfg 內的 hostname 設定。

## 安裝

將 unicode_hostname.smx 放置 \addons\sourcemod\plugins\ 資料夾內。
並將 unicode_hostname.txt 放置 \addons\sourcemod\data\ 資料夾內。

## 設定

伺服器名稱(hostname)在 unicode_hostname.txt 內設定，取代"Your server's name"即可。
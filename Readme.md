# webp に変換するシェルスクリプト

## 利用手順

- webp のインストール

  ```zsh
  brew install webp
  ```

- webp のインストール確認

  ```zsh
  cwebp -version
  ```

- webp に変換 通常

  ```zsh
  convert2webp.sh
  ```

- webp に変換 ロスレス
  ```zsh
  convert2webpLossless.sh
  ```

## 補足

- png を webp 化するときはロスレスを使用推奨
  - 圧縮率優先なら通常で

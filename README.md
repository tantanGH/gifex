# GIFEX.X

Animated GIF loader for X680x0/Human68k

---

X680x0用のGIF画像ローダです。[XEiJ](https://stdkmd.net/xeij/)の[拡張グラフィック画面](https://stdkmd.net/xeij/feature.htm#extendedgraphic)に対応しており、最大1024x1024x32768色の表示が可能です。ハイメモリをバッファとして利用可能です。

アニメーションにも対応していますが、表示タイミングは厳密ではありません。

![](https://github.com/tantanGH/distribution/raw/main/images/gif_demo1.gif)

* [GIFEX072.ZIP](https://github.com/tantanGH/distribution/raw/main/GIFEX072.ZIP) GIFEX.X 0.7.2 実行ファイル


      GIFEX - GIF image loader with XEiJ graphic extension support version 0.7.2 by tantan 2023
      usage: gifex.x [options] <image.gif>
      options:
       -b<n> ... バッファメモリの大きさを調整します[1-24] (デフォルト:4)
       -c ... 表示する前に画面クリアします
       -f<n> ... 最大表示フレーム数 (デフォルト:無制限)
       -h ... ヘルプメッセージの表示
       -i ... GIFファイル情報の表示
       -l ... 無限ループします(ESCキーで抜けます)
       -m ... すべてのデータを事前にメモリに展開してからアニメーションを再生します
       -n ... 画像を中央に表示します
       -o<x,y> ... 画像の表示位置を指定します -n は上書きされます
       -s<n> ... 画面モード 0:384x256, 1:512x512, 2:768x512, 3:768x512(拡張モード XEiJのみ)
       -u ... ハイメモリをバッファとして使用します
       -v<n> ... 明るさ調整 (0-100)
       -w<n> ... フレームレートを指定します (0:1/30fps, n:n fps, default:自動判定)

注意：大きく長いアニメーションGIFを再生するには大量のメモリとマシンパワーが必要です。ハイメモリの利用(`-u`)を強く推奨します。

アニメーションGIFは拙作 [mov2gif](https://github.com/tantanGH/mov2gif/) などで動画ファイルを変換して作ることができます。
    
---

### 実機によるGIFアニメーション再生例

https://user-images.githubusercontent.com/121137457/215325813-f0d3b2cc-ab59-48f8-b1fe-951dca339fa2.mp4

X68030 + 060turbo + ハイメモリ (300x225px,384x256モード,30fps)

---

### Special Thanks

GIFフォーマットの仕様について、以下を参考にさせて頂きました。

* [とほほのWWW入門・GIFフォーマットの詳細](https://www.tohoho-web.com/wwwgif.htm)

GIFフォーマットのLZWデコードについて、以下のmiku(@mikusato)氏によるTypescript版の実装をCにコンバートして利用させて頂きました。
今まで見た中でおそらく最も美しいGIF LZWデコードの実装だと思います。

* [https://github.com/BaroqueEngine/GIFParser](https://github.com/BaroqueEngine/GIFParser)

この場を借りてお礼申し上げます。

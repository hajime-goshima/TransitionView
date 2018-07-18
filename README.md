# TransitionView
Swift4 画面遷移デモ

![ezgif-1-779e412a79](https://user-images.githubusercontent.com/13103747/42892049-cd97fd6e-8aeb-11e8-9937-f12c310ac416.gif)

## ボタンによる画面遷移の実装（Storyboard）
1.ViewControllerを追加する（CocoaTouchClassで対応するクラスファイルを作っておく）
2.遷移元のボタンを配置し、遷移先のViewControllerオブジェクトに接続。この時「Present Modally」を選択。

## ボタンによる閉じるの実装（Storyboard）
1.遷移元（戻ってくる場所）にunwindメソッドを実装
2.遷移先に配置したボタンを上部のExitに接続。この時「unwindWithSegue」を選択。

## プログラムによる画面遷移の実装（Segueの呼び出し）
1.segueのIdentiferを設定する。
2.遷移元にボタンを設置する。
２.ボタンのアクションでperformSegueを呼び出す。

## プログラムによる閉じるの実装
1.遷移先にボタンを設置する。
2.ボタンのアクションでdismiss(animated: true, completion: nil)を呼び出す。

## プログラムによる画面遷移の実装（ViewControllerを呼び出す）
```
let storyboard: UIStoryboard = self.storyboard!
let controller = storyboard.instantiateViewController(withIdentifier: "targetView")
present(controller, animated: true, completion: nil)
```

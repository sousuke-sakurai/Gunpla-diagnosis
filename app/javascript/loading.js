// ページ内のすべてのリソース（画像など）が読み込まれたら発火する
window.addEventListener('load', function() {
  // ロード画面の要素を取得
  const loadingScreen = document.getElementById('loading-screen');
  
  // ロード画面が存在する場合だけ処理を実行（エラー防止）
  if (loadingScreen) {
    // ロード画面に 'loaded' クラスを追加してフェードアウトさせる
     //loadingScreen.classList.add('loaded');
  }
});
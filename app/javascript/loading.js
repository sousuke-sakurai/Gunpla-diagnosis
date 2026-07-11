// 'load' ではなく 'turbo:load' にするのが Railsの鉄則です！
document.addEventListener('turbo:load', function() {
  const loadingScreen = document.getElementById('loading-screen');
  
  if (loadingScreen) {
    // ページ遷移時は速すぎることがあるので、ほんの少しだけ遅延させて消す（0.5秒）
    setTimeout(function() {
      loadingScreen.classList.add('loaded');
    }, 500);
  }
});
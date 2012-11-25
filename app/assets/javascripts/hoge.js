window.onload = function() {
  var rc = new html5jp.graph.radar("sample");
  if( ! rc ) { return; }
  var items = [
    ["商品A", 5, 2, 4, 5, 3, 2, 4, 4],
    ["商品B", 3, 4, 3, 4, 5, 4, 5, 1]
  ];
  var params = {
    aCap: ["安さ", "性能", "デザイン", "人気", "使いやすさ", "寿命", "軽さ", "強さ"]
  }
  rc.draw(items, params);
};
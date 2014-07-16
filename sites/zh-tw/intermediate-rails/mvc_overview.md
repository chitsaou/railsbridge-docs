## 解釋 MVC 與資料

![MVC 概要](/初探-rails/img/mvc.png)

Rails 實做了一個在 **Model/View/Controller** 模式中非常特殊的想法，讓你架構你的網站應用程式。

<h3 id="model">Model</h3>

* 儲存資料到資料庫
* 從資料庫存取資料
* 物件與資料庫之間的橋樑
  
<h3 id="view">View</h3>

* 對著人（或機器）顯示資料
* 網頁就是 Views

<h3 id="controller">Controller</h3>

* 就像是 models 與 views 之間的黏著劑一樣
* 從數個 models 之間整合資料
* 過濾與統整資料

在 MVC 中， models 、 views 以及 controllers 有非常明確的分工。明確分工可以更容易維護、擴充 Rails 應用程式。當權責開始混亂不堪的時候會更難除錯以及添加新的功能。
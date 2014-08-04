## 解釋 MVC 與 Records（資料記錄）

![MVC 概要](/初探-rails/img/mvc.png)

Rails 實作了一種叫做 **Model/View/Controller** 模式的特殊觀念，來引導你架構網站應用程式。


<h3 id="model">Model</h3>

* 把資料儲存到資料庫
* 從資料庫存取資料
* 物件與資料庫之間的橋樑
  
<h3 id="view">View</h3>

* 顯示資料給人（或機器）使用
* 網頁就是 Views

<h3 id="controller">Controller</h3>

* 就像是 models 與 views 之間的黏著劑一樣
* 從數個 models 之間整合資料
* 過濾並統整資料

在 MVC 中， models 、 views 以及 controllers 有非常明確的分工。明確分工可以更容易維護、擴充 Rails 應用程式。當權責開始混亂不堪的時候會更難除錯以及加入新的功能。
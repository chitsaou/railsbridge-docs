### 當輸入網址後網頁會是怎樣顯示的呢？以下是粗略的說明。

<img src="img/request-cycle.jpg" height="600px">

1. 使用者輸入一個網址，期盼它是一個很酷的網站。
1. DNS 會解析這個網址（以後會另闢新文講解這件事），然後 request（請求）被丟到網站伺服器去並且跟 Rails 說它得到了什麼東西。
1. Rails 先進去路由設定檔，根據 URL 找到相對應的 controller action，然後呼叫它。
1. controller 會開始處理，並且透過相關的 model 從資料庫中撈取需要的資訊。
1. controller 有了從 model 拉回來的資料之後，會透過 view 來產生一些 HTML 。
1. Rails 將這些資料打包成回應後，丟給網頁伺服器。
1. 網站伺服器將 response（回應）送回到瀏覽器，讓瀏覽器給使用者顯示出這個超酷的網站。
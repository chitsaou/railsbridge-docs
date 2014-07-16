## 準備開始

**1\.** 建立你的專案

**2\.** 看一下你的瀏覽器，應該會看到預設頁面。

## 建立你的 Controller

Controllers 是從 ApplicationController 繼承的類別。

Controllers 在 Rails 中會有一個以上的 **actions** 。
每個 action 都在 controller 中被定義成一個方法。
然後還有一些標準的 actions ，像是 **index, create, new, edit, show, update, destroy** 等。但你不一定要使用這些名字。

我們會從 index 開始，這通常都用來當作你應用程式的主要頁面。

**3\.** 建立你的第一個 controller ，取名為 **HomeController** 。

在 app/controller 資料夾中建立一個 controller 檔案。 *檔案名稱必須永遠都是小寫英文與底線的組合。*

```
app/controllers/home_controller.rb
```

**4\.** 建立你的 controller 時加上一個空的 index 方法。 在 home_controller.rb 檔案中新增：

```
class HomeController < ApplicationController
  def index
  end
end
```

## 建立你的 View

**5\.** 建立你的第一個 view, 與 `Home` controller 和 `index` action 建立起關聯。

在 app/views 中建立一個新的資料夾。 *資料夾名稱必須跟你 controller 同名，並且用小寫。*

```
app/views/home
```

在 app/views/home 資料夾中建立一個與 action 對應的檔案。 *檔案名稱必須用小寫，並且與 action 同名。*

```
app/views/home/index.html.rb
```

每個 view 建立後都會跟一個 controller action 有關聯。你甚至不需要真的去在一個相關聯的 controller 中定義一個相關聯的 action ：只要相關的 controller 與 route 存在的情況下， Rails 會假裝該 action 是存在且空白的，然後單純只是顯示內容而已。

## 建立你的路由

一個 **route （路由）** 是指向一個指定 controller 中指定 action 的路徑。 這一對 controller 與 action （一般都會寫成 **controller#action** ）也代表會使用哪個 view 檔案，透過上面提過的檔案命名規範來指定。

**6\.** 編輯 routes.rb 來讓基礎網址可以指向你的應用程式進入點

```
root 'home#index'
```

注意：這表示你的基礎網址 （也就是網站根目錄）應該搭配使用 `home` controller 中的 `index` action。該 view 一般都會在 app/views/home 資料夾底下，並且命名為 `index` （例如： app/views/home/index.html.erb ）。

在這之後的每個路由定義方式都大概會像這樣：

```
get 'about' => 'home#about'
```

注意：這表示基礎網址搭配 /about 結尾的話會導向 `home` controller 的 `about`action 。

## 測試你新建立的 Controller

**7\.** 在瀏覽器中回到你的專案並且確認你可以從根路徑中看到 index.html.erb 的內容，而不是 Rails 預設的歡迎頁面。
**8\.** 在 Home controller 中建立一個 `about` action ，然後測試你可不可以用瀏覽器輸入 /about 路徑來看到內容。
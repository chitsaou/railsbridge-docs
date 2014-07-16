## Ruby

開啟 Ruby 互動式終端界面 （輸入 'exit' 可以結束）

    irb

讓 ruby 執行一個名稱為 FILENAME.rb 的檔案

    ruby FILENAME.rb

安裝一個叫做 GEMNAME 的 gem

    gem install GEMNAME

安裝被寫在 `Gemfile` 內的 gems

    bundle install

## Rails

建立一個叫做 `NAME` 的新的 Rails 專案

    rails new NAME
    
自動建立路由 （這個部分也可以手動建立）

    rails generate scaffold

建立一個新的 [Rails model]

    rails generate model MODELNAME

更新資料庫內容來符合你在程式碼中所定義的結構

    rake db:migrate

在本地端執行 Rails 應用程式 （Ctrl-C 可以結束）

    rails server

啟動互動式 Ruby 終端界面來控制、了解你的 Rails models （輸入 'exit' 可以結束）

    rails console

印出你的 Rails 應用程式的所有路由

    rake routes

## Browser

到你 Rails 應用程式的首頁

    http://localhost:3000

## Git

在你當前的目錄中建立一個新的 git 庫

    git init

將當前目錄以及所有子目錄的資料交給 git 追蹤

    git add .

告訴你你新增了、刪除了、改變了哪些檔案、記錄。

    git status

印出 FILENAME 這檔案的修改內容的差異比對

    git diff FILENAME

提交你追蹤的檔案到本地端的庫

    git commit -m "Describe what has changed, and why" .

向伺服器推送已經提交過的更新內容

    git push

## Ruby

要開啟 Ruby 互動式終端界面 (irb) 的話（輸入 'exit' 可以跳出）

    irb

要執行名為 FILENAME.rb 的 ruby 程式的話

    ruby FILENAME.rb

要安裝一個名為 GEMNAME 的 gem

    gem install GEMNAME

要安裝被列在 `Gemfile` 裡面的 gems 的話

    bundle install

## Rails

要開名為 `NAME` 的 Rails 專案的話

    rails new NAME
    
要自動依序建立檔案的話 （其實也可以手動建立）

    rails generate scaffold

要建立新的 [Rails model] 的話

    rails generate model MODELNAME

要把資料庫更新到跟程式碼所寫的一致的話

    rake db:migrate

要在本機跑 Rails 應用程式的話（Ctrl+C 來跳出）

    rails server

要啟動一個認得 Rails models 的 Ruby 互動式終端機的話（輸入 'exit' 來跳出）

    rails console

要列出你 Rails 應用程式的所有路由（routes）的話

    rake routes

## Browser

要前往你 Rails 應用程式的首頁的話

    http://localhost:3000

## Git

要在當前目錄建立新的 git repository（倉庫）的話

    git init

要把當前目錄及所有子目錄都加入 git repository 的話

    git add .

以下指令會告訴你，當前目錄和 git repository 比起來，有哪些檔案新增、刪除、修改過了。

    git status

以下指令會列出 FILENAME 這檔案跟本地的 git repository 比起來有哪些差異。

    git diff FILENAME

要把目前新增的修訂 commit 進本地的 git repository 的話

    git commit -m "Describe what has changed, and why" .

要把 *commit* 過的異動送到遠端 server 的話

    git push

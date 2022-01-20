1. Vào thư mục này lấy file DB
E:\OnlineWebSiteNews\Website4\NewsWeb\DBFile
--- làm theo hướng dẫn của website này sẽ tạo ra được DB, tạo tên DB là NewsWeb
2. Edit connection String trong app.cofig trong phần Model
   Edit connection String trong Web.cofig trong phần NewsWeb



<connectionStrings>
		<add name="NewsWebDbContext" connectionString="data source=LAPTOP-45VJ91U7\SQLEXPRESS;initial catalog=NewsWeb;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework" providerName="System.Data.SqlClient" />
	</connectionStrings>


3. Mở nuget tải IpagedList.MVC gì gì đó cho hai mục Model và NewsWeb
4. Enjoy moment




git remote add origin https://github.com/LoiHoDHV/NewsWebSite_ASP.git
git branch -M main
git push -u origin main
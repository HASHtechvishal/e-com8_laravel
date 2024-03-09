 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>e-com str10</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="text-capitalize">
	<h1>rest api details || laravel API examples/types | E-com APIs</h1>
  <p>Before explaining What Laravel API exactly is, we will first look out for its examples that will give us clear view about API.</p>
  <ol>
  	<lo>Show Products of one website to another website</lo>
  	<lo>Update Website Stock from 3rd Party like Uniware or Unicommerce</lo>
  <lo>Push Orders to Shipment company for further processing</lo>
  	<lo>Register users from Android and save in database</lo>
  	<lo>Check Orders in Payment Gateway if payment made</lo>
  </ol>
  <p>API Full Form :- Application Programming Interface<br>Rest or Restful API :- Rest stands for Representational State Transfer. It is a set of rules to build an API or we can say set of rules that API follows.<br>Laravel Rest or Restful API are used to send and receive data between websites, apps and 3rd parties. 3rd parties can be Shipment companies like Fedex or Order/Stock management companies like Uniware/Unicommerce.<br>So, Laravel Rest or Restful API helps the Laravel website and App's to communicate with other technologies like SOAP, SAP and communication is in the form of JSON, XML or any other format.<br>REST stands for Representational State Transfer that helps in data transfer and communication between the website and the applications.<br>RESTful API is an application program interface that uses HTTP requests to GET, PUT, POST and DELETE data<br>REST or RESTful API design (Representational State Transfer) is designed to take advantage of existing HTTP protocol in order to create APIs. This means that developers do not need to install libraries or additional software in order to take advantage of a REST API design.</p>
  <label for="">Important Points to remember for Laravel API :-</label>
  <ol>
  	<li>- Laravel API helps to transfer data from one technology to another</li>
  	<li>- Laravel API helps to transfer data from backend to frontend or frontend to backend like laravel to android or android to laravel</li>
  	<li>- Frontend technology can’t communicate with database directly so Laravel API is required </li>
  	<li>- Laravel website or app can send data to 3rd parties via Rest API</li>
  	<li>- Laravel website or app can receive data from 3rd parties via Rest API</li>
  </ol>
  <p>After viewing video, you will be aware of below :-<br>What is API?<br>What is Rest API?<br>Why do we require API?<br>Examples of Laravel API<br>Types of API’s<br>Important API’s for E-commerce Websites</p>

  <h1>create simple laravel api from scratch || laravel Get Api with json / param</h1>
  <p>Laravel 8 GET API helps to fetch the records from the database that can be generated in json format.<br>Like in android app, we can show the products with GET API that helps to fetch the products from the database and generates json format that Android can access to display the products.<br>So in Laravel GET API, we can generate json data/request that can be used by the 3rd party.</p>
  <p>Example of Laravel 8 GET API<br>We will generate json data/request of the users with GET API</p>
  <ol>
  	<li>- Install Laravel 8</li>
  	<li>- Create database</li>
  	<li>- Run "php artisan migrate" to create Laravel default tables including users</li>
  	<li>- Use Laravel Seeder to add users in users table or insert directly in users table</li>
  	<li>- Create Route in api.php file<br>Route::get('users','App\Http\Controllers\APIController@getUsers');</li>
  	<li>- Create getUsers function at APIController to generate users json data as shown in video</li>
  </ol>

  <h1>post api/rest api with post method</h1>
  <p>Laravel 8 Post API will come into play when we want to send data from frontend to backend or we want to save data from 3rd party to database.<br>Like in Android App, user data from sign up form will be inserted in database via Post API<br>We will use Post method for Post API and can test on Postman by sending data in form-data or as json data.</p>

  <h1>laravel api array | laravel api return array | laravel post api json</h1>
  <p>In video, we will return an array of user data to database with Post API with Json request via Postman.<br>We will create JSON data of user array in Postman and make sure JSON is correct.</p>

  <h1>api validation || validate laravel post api || custom validation</h1>
  <p>We will validate below while posting the user data via Laravel POST API :-<br>- Validate User Details - Name, Email and Password must be required<br>- Validate Email / Check if Email is valid<br>- Check if user email is unique and does not exists</p>


  <h1>api response code || laravel 8 api status code || 200/201/422</h1>
  <p> API Response Codes / Status Codes helps the frontend developer to output the right message to the user after getting the same from the Backend developer.<br>We are going to implement most common API Status Codes in Post and GET API in video. <br>Most common Status / Response Codes are as below :-
<ol>
  <li>422 : Unprocessable Entity (validation failed)</li>
  <li>200 : Successful OK</li>
  <li>201 : Data Created</li>
</ol></p>

<h1>api validation rule || validate laravel post api validator class</h1>
<p>We will use Validator class of Laravel for validating the POST API. <br>In example, we will add Laravel validations for name, email and password with rules and custom messages.<br>And, we will return the response code / status code as 422 when validation fail and error message we will return.<br>The validation we are going to apply for posting single user to the database.</p>

<h1>api advance validation rule || validate laravel api json/ array</h1>
<p>We will validate multiple records that can get posted with POST method via Laravel Post API. <br>We will use Validator class of Laravel for validating the POST API.<br>In example, we will add Laravel validations for name, email and password that may come in bulk in an array or we can say multiple users within json request.<br>We will return the response code / status code as 422 when validation fail and error message we will return.<br>The validation we are going to apply for posting multiple user to the database.</p>


<h1>create laravel put api with put method || laravel put api with param/ jsons</h1>
<p>Like in Android App, we will update user data from account page than we will use PUT API that will update the user data in database.<br>We will use Put method for Put API and can test on Postman by updating data via json.<br>In video, we will update user data with Put API both with Json request via Postman.<br>We will also use Postman software to test the Laravel PUT API.<br>We can also use PUT API with Param to update one or more records.<br>We will use 202 Response code / status code that means "Accepted" every time when we update the data successfully.<br>We will validate Laravel PUT API as well.</p>

<h1>create API patch api || laravel patch api patch method with param / json</h1>
<p>We will use Patch method for Patch API and can test on Postman by updating data via json.<br>In video, we will update single user data with Patch API both with Json request via Postman.<br>We will also use Postman software to test the Laravel PATCH API.<br>Patch API with Json to update single Record.<br>// PATCH API - Update single record with json
Route::patch('update-user-name','APIController@updateUserName');<br>Patch API with Param to update single Record.<br>// PATCH API - Update single record with param
Route::patch('update-user-name/{id}','APIController@updateUserName');<br>Watch video for Patch API with Laravel Validation as well</p>

<h1>laeavel delete api || laravel dlete api with param/ json</h1>
<ul>
  <li>In the tutorial, we will create below Delete API in Laravel 8 :-</li> <ol>
    <li>Delete API for deleting single record with param</li>
    <li>Delete API for deleting single record with json</li>
  </ol> <ol>
    <li>We have 3 types of response codes / status codes for Delete API :-<br>202 :- Response will come and will show as "Accepted"<br>204 :- No Response will come at all<br>200 :- Response will come and will show as "Successful"</li> <ol>
      <li>For deleting Single record :-<br>// DELETE API - Delete single user with param
Route::delete('delete-user/{id}','APIController@deleteUser');<br>Delete API :- http://127.0.0.1:8000/api/delete-user/6​<br>No Response if 204 status will be send</li>
    </ol>
  </ol>
  <li>Delete Multiple Records / Users or Delete Array<br>We can also delete multiple records with Delete API using Delete Method by sending id's of multiple records as params <br>In example, we are deleting multiple users by sending user id's in Delete API param<br>// DELETE API - Delete multiple users with param
Route::delete('delete-multiple-users/{ids}','APIController@deleteMultipleUsers');<br>Delete API :- http://127.0.0.1:8000/api/delete-mult...​</li>
  <li>Delete Multiple Records / Users Array with Json<br>We can also delete multiple records or arrays by using json in Delete API by sending id's of multiple records within array in json <br>Delete API :- http://127.0.0.1:8010/api/delete-mult...​<br>DELETE API - Delete multiple users with json
Route::delete('delete-multiple-users-with-json','APIController@deleteMultipleUsersJson');</li>
  <li>Delete Multiple Records / Users or Delete Array<br>We can also delete multiple records with Delete API using Delete Method by sending id's of multiple records as params <br>In example, we are deleting multiple users by sending user id's in Delete API param<br>Delete API :- http://127.0.0.1:8010/api/delete-mult...​<br>// DELETE API - Delete multiple users with param
Route::delete('delete-multiple-users/{ids}','APIController@deleteMultipleUsers');</li>
</ul>
</div>
</body>
</html>
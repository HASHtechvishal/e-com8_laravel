 <!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>e-com str10</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="text-capitalize">
  <h1>generate PDF order invoice || install laravel dompdf package</h1>
  <ol>
  	<li>Install laravel-dompdf package :-
First of all, install laravel-dompdf package through below composer  command :-
composer require dompdf/dompdf<br>We will follow below Github link to install Laravel dompdf package :-
https://github.com/dompdf/dompdf<br></li>
  	<li> Update view_orders.blade.php file :-
Add font awesome link icon for "Print PDF Invoice"  in view_orders.blade.php file for shipped and delivered orders by adding condition.</li>
  	<li>Create Route :-
Now create GET route for view/print pdf invoice in web.php file like below :-<br>// Print PDF Invoice
Route::get('print-pdf-invoice/{id}','OrdersController@printPDFInvoice');</li>
  	<li> Create printPDFInvoice function :-
Now create printPDFInvoice function same like viewOrderDetails function in ProductsController in which we will get order details that we are going to add in pdf invoice. </li>
  	<li>Search PDF Invoice HTML format :-
Search in Google like "pdf invoice html format" and open below website :-
https://htmlpdfapi.com/blog/free_html...<br>Copy the Invoice HTML and update in output variable in printPDFInvoice function.</li>
  	<li>Add Header Statement :-
Don't forget to include Dompdf class at the top of ProductsController :-<br>// reference the Dompdf namespace
use Dompdf\Dompdf;<br>You can generate now static PDF Invoice that we can print with Ctrl+P command or simply click on Print button at top right of PDF.<br>In next video, we are going to make PDF invoice dynamic.<br></li>
  </ol>

  <h1>Shipping Charges - Simple (I) | Country wise Shipping | View Charges</h1>
  <ol>
    <li>Shipping Charges - Simple (I) | Country-wise Shipping</li>
    <li>Shipping Charges - Advance (II) | Country / Product Weight-wise Shipping<br>First we are going to work on simple process of adding shipping charges for all the countries from admin panel.<br>In this video, we will create shipping_charges table with migration and will import list of countries. We will also create ShippingCharge model.</li>
    <li>Create shipping_charges table :-<br>First of all, we will create shipping_charges table with migration. Create migration file with name create_shipping_charges_table for creating shipping_charges table with below columns :-<br>id, country, shipping_charges, status, created_at and updated_at<br>So, we will run below artisan command to create migration file for shipping_charges :-
php artisan make:migration create_shipping_charges_table<br>Open create_shipping_charges_table migration file and add all required columns mentioned earlier.<br>Now, we will run below artisan command to create shipping_charges table with required columns :- <br>php artisan migrate<br>Now shipping_charges table has been created with all the required columns.</li>
    <li>Import Countries :-<br>Now we will import countries from the countries table from the steps shown in the video.</li>
    <li>Create ShippingCharge model :-<br>Create ShippingCharge model by running below artisan command :-
php artisan make:model ShippingCharge</li>
    <li>Create ShippingController Controller :-<br>Create ShippingController under Admin by running below artisan command :-
php artisan make:controller Admin/ShippingController</li>
    <li>Update admin_sidebar.blade.php :-<br>Add link for the shipping charges at left sidebar of the admin panel.</li>
    <li>Create Route :-<br>Now create GET route for view shipping charges in web.php file like below :-<br>// View Shipping Charges
Route::get('view-shipping-charges','ShippingController@viewShippingCharges');</li>
    <li>Create viewShippingCharges function :-<br>Now create viewShippingCharges function at ShippingController in which we will get shipping charges for all the countries and return to view_shipping_charges.blade.php file that we will create in next step. </li>
    <li>Include Header Statement :-<br>Add below statement at the top of your ShippingController file to include ShippingCharges model :-
use App\ShippingCharge;</li>
    <li>Create view_shipping_charges.blade.php file :-<br>Now we will create view_shipping_charges.blade.php file in which we will add foreach loop to display shipping charges for all the countries.</li>
  </ol>


  <h1>shipping charges simple part 3 || countrywise | display at checkout page</h1>
  <ol>
    <li> Create getShippingCharges function :-
First of all,  create getShippingCharges function in ShippingCharge.php Model in which we will pass country to get the shipping charges from shipping_charges table. </li>
    <li>Update checkout function :-
Now update checkout function at ProductsController to get the shipping charges from shipping country for all the delivery addresses of the user.<br>We will call getShippingCharges function within foreach loop and pass shipping charges along with the delivery addresses of the user. <br>Also we will calculate total price of the cart without coupon discount and shipping charges and will return to checkout page.</li>
    <li>  Update checkout.blade.php file :-
We will pass shipping charges, total price and coupon amount in jQuery every time when user selects any of his delivery address to show updated Grand total along with Shipping Charges in checkout page. </li>
    <li>Update front_script.js file :-
We will add jQuery script at front_script.js file to get and return shipping charges along with updated grand total price that includes shipping charges as well.</li>
  </ol>

  <h1>shipping charges simple 4 || place COD order with shipping charges</h1>
  <ol>
    <li>Update applyCoupon function :-<br>First of all, we will resolve one coupon issue by forgetting couponCode and couponCode Session every time when wrong coupon entered by the user. You can forget in other places as well where required.</li>
    <li>Update thanks.blade.php file :-<br>We will also forget couponCode and couponAmount Sessions at thanks page.</li>
    <li> Update checkout function :-<br>Now update checkout function and find shipping charges of the shipping country. We will calculate grand total by adding shipping charges and subtracting coupon discount and pass the same in session variable and in orders table.<br>Now we able to complete simple shipping method both at admin/front end.</li>
  </ol>


  <h1>shipping charges- advance part 1 || country/weight wise shipping</h1>
  <p>In advance way, we will add shipping of all countries weight wise in which we will add weight for all products and shipping will be calculated according to the weight and the country.<br>First of all, make sure we able to add weight for every product only then correct shipping charges we can calculate for the order.<br>Now, we will update shipping_charges table with weight columns and drop shipping_charges column from the table with Migration commands.</p>
  <ol>
    <li>Drop shipping_charges column :-<br>Run below Migration command to drop shipping_charges column that is common for all weights from the shipping_charges table.
php artisan make:migration drop_column_from_shipping_charges_table<br>Update newly created migration file to drop shipping_charges column from shipping_charges table.<br>Finally run "php artisan migrate" command to drop the column.</li>
    <li>Add Columns to shipping_charges table :-<br>We will add separate weight columns instead of one in which we will add shipping charges that will come according to weight. Like for the product weight between 0 to 500 gram, we can add INR 100 shipping charges and so on<br>We will add below columns for below weights :-<br> <li>For 0 to 500 gram weight - 0_500g</li> <li>For 501 to 1000 gram weight - 501_1000g</li> <li>For 1001 to 2000 gram weight - 1001_2000g</li> <li>For 2001 to 5000 gram weight - 2001g_5000g</li> <li>For 5000 gram above weight :- above_5000g</li><br>Run below Migration command to add weight columns in shipping_charges table like below :-
php artisan make:migration add_columns_to_shipping_charges_table<br>Update newly created migration file to add weight columns specified earlier.<br>Finally run "php artisan migrate" command to add the columns.</li>
    <li>Update view_shipping_charges.blade.php file :-<br>Update shipping charges page in admin panel to remove column shipping charges column and add weight wise shipping charges columns.</li>
    <li>Update edit_shipping_charges.blade.php file :-<br>Update edit shipping form to add new weight wise shipping charges columns  and remove common weight column.</li>
    <li>Update editShippingCharges function :-<br>Now we will update editShippingCharges function to update weight wise shipping charges columns instead of common one.<br>Now we can update shipping charges weight wise for any country from admin panel.<br>In next video, we will work on front end to calculate shipping charges weight wise and apply it to grand total.</li>
  </ol>

  <h1>shipping charges advance part 2 || country/weight wise shipping</h1>
  <ol>
    <li>Update userCartItems function :-<br>Add product_weight column in select query that will be returned along with other product details.</li>
    <li>Update checkout function :-<br>We will get total weight by summing up all the weights of ordered products in userCartItems foreach loop as shown in video.</li>
    <li>Update getShippingCharges function :-<br>Now we will update getShippingCharges function in ShippingCharge model to get and return shipping charges according to the total weight of the products.</li>
    <li> Update checkout function :-<br>We need to update checkout function once again in ProductsController to calculate shipping charges from total weight of the ordered products and shipping country.<br>Now correct shipping charges will be display at checkout page but we will update checkout function once again so that correct shipping charges will get inserted in orders table as well.</li>
  </ol>

  <h1>integrate paypal part 1 || paypal integration || paypal form || sandbox testing</h1>
  <p>There are 2 ways of integrating Paypal in Laravel website or any website; simple and advance way.<br>We are first going to integrate Paypal in simplest way first that anyone can do quickly to launch their E-commerce websites in Laravel.</p>
  <ol>
      <li>Create PaypalController :-
We will create separate PaypalController by running below artisan command :-
php artisan make:controller PaypalController</li>
      <li>Update checkout.blade.php file :-
Make sure we have added "Paypal" as option for payment methods at checkout page</li>
      <li>Update checkout function :-
Now update checkout function to add condition to redirect the user to Paypal page if user selects Paypal at checkout page.</li>
      <li>Create Route :-
Now we will create Paypal Route in web.php file :-<br>/ Paypal
Route::get('/paypal','PaypalController@paypal');</li>
      <li>Create paypal function :-
Now create paypal function at PaypalController which looks similar to thanks function that we have done earlier for COD. In Paypal function, we are going to return to paypal blade file</li>
      <li>Create paypal.blade.php file :-
Now create paypal folder under /resources/views/front/ folder and then create paypal.blade.php file under it. We will copy the content from thanks.blade.php file and will add Paypal form to this page from Paypal website</li>
  </ol>


  <h1>integrate paypal part 2|| create paypal success/fail page</h1>
  <ol>
      <li>Update paypal.blade.php file :-
First of all, we will add return and cancel_return hidden fields in paypal form. Return is for successful return after making the payment and cancel_return is used when payment is failed or cancelled. </li>
      <li>Update web.php file :-<br>Now create Success/Fail routes in web.php file :-<br>// Paypal Success<br>Route::get('/paypal/success','PaypalController@success');<br>// Paypal Fail<br>Route::get('/paypal/fail','PaypalController@fail');</li>
      <li>Create fail and success functions :-<br>Now create success and fail functions at PaypalController</li>
      <li>Create fail.blade.php and success.blade.php files :-><br>Now create fail.blade.php and success.blade.php files at resources\views\front\paypal\ path and add content accordingly.</li>
  </ol>


  <h1>integrate paypal part 3|| IPN || instant payment notification|| paypal payment verification</h1>
  <p>First of all, we need to enable Paypal IPN by going in below link :-<br>https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbmVwNmdMblVuM3o4Z1B0X3RreGhDeS1Ba0d1Z3xBQ3Jtc0ttUk80emdUTHlwZl9QZmpUNjZ3VEdjWGVrVVczN0RIMC1LUlRHcXpTeXplazM2cWotbVE0UVA0eHZSSXl6Q2ZNazBkR3Nmb0NmbnRpWWpEcFBuTi1jQktubDJRT2huVlZURGJPYXVzQ1FsdlZJeEFhMA&q=https%3A%2F%2Fwww.paypal.com%2Fbusinessprofile%2Fsettings<br>Go to Selling tools and then select "Instant payment notifications" and click on update and then click on "Choose IPN Settings" and finally give Notification URL and enable "Receive IPN messages".<br>Paypal IPN only works online, not offline so you need to make your website live to test it.<br>Now we require to make website changes for Paypal IPN :-</p>
  <ol>
      <li>Update paypal.blade.php file :-<br>We need to update Paypal form at paypal.blade.php file with notify_url hidden field in which we will pass ipn route as value i.e. paypal/ipn that we have created earlier.</li>
      <li>Create Route :-<br>Create POST route for PayPal IPN in web.php file like below :-<br>// Paypal IPN<br>Route::post('/paypal/ipn','PaypalController@ipn');</li>
      <li>Create ipn function :-<br>Now create ipn function in PaypalController where we will get payment status / response from Paypal and we will send email to user/admin and also update the order status if response comes as "Completed" from Paypal.</li>
  </ol>




  <h1>integrate payumoney part 1 || install indipay package || debit/credit card/bank/wallet</h1>
  <p>We will install Laravel softon/indipay package that will support Indian Payment Gateways. like CCAvenue, PayUMoney, EBS, CitrusPay, InstaMojo etc. And, we will configure PayUMoney after installing the package.</p>
  <ol>
      <li> Install package using composer <br>composer require softon/indipay<br>Some of the time "Allowed memory size of 1610612736 bytes exhausted" error comes then run below command with composer :-<br>COMPOSER_MEMORY_LIMIT=-1 composer require softon/indipay</li>
      <li>Publish the config & Middleware by running in your terminal <br>php artisan vendor:publish --all<hr>or<br>php artisan vendor:publish --provider="Softon\Indipay\IndipayServiceProvider"</li>
      <li>Modify the app\Http\Kernel.php to use the new Middleware. This is required so as to avoid CSRF verification on the Response Url from the payment gateways. You may adjust the routes in the config file config/indipay.php to disable CSRF on your gateways response routes.</li>
      <li>Update indipay.php
Replace with the name of default gateway with PayUMoney<br>Also, we require test merchant key and salt for integrating Payumoney test payment gateway.</li>
      <li>Integrate Test Payumoney account :-<br>Search for keyword "payu Web Integration FAQ" in Google and open below link :-<br>https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbE0yWDBGY2R2NWYwbjRRc0Jod1FrTGplUG9tZ3xBQ3Jtc0tuaFFrVG5DaXJJTVB6ek5JVmh0NEdJbDZGbzA1MmNuZGpIczA3MVNSQzFnVl9GZ1JhaFVqNkpQRnQzUXFsbENRTHlUVXlRUFB3c0RjeTVIQzZyRVpYUUFlcHoxaWplUllhNlo0TUdLd29zZ2loSmNmaw&q=https%3A%2F%2Ftestdeveloper.payubiz.in%2Fdocumentation%2FWeb-Integration-FAQ%2527s%2F166<br>For the Test environment, below are the credentials : <ul>
          <li> Merchant ID : gtKFFx</li>
          <li> Salt : eCwWELxi</li>
      </ul> <br>We will update indipay.php file and add Payumoney test merchant key and salt.</li>
      <li>Update checkout.blade.php file :-<br>We will add radio button for Payumoney payment gateway with value payumoney as well in checkout.blade.php file.</li>
      <li>Update checkout function<br>Update checkout function to add condition for Payumoney payment gateway as well so that user will redirect to payumoney page. </li>
      <li>Create PayumoneyController<br>We will create PayumoneyController by running below artisan command where we will create all payumoney related functions.<br>php artisan make:controller Front/PayumoneyController</li>
      <li>Create Route :-<br>We will create GET route for payumoney like below :-<br>//Payumoney Page<br>Route::get('payumoney','PayumoneyController@payumoneyPayment'); </li>
      <li>Create payumoneyPayment function :-<br>Now we will create payumoneyPayment function where we will send test parameters first to check if payumoney works fine or not.</li>
      <li>Include Header Statement :-<br>Now add below statement at the top of PayumoneyController :-<br>use Softon\Indipay\Facades\Indipay;</li>
      <li>Update PayUMoneyGateway.php<br>Comment service_provider statement as shown in video.</li>
      <li>Update payumoney.blade.php<br>Update payment form in payumoney.blade.php by removing udf and pg fields as shown in video.</li>
  </ol>



  <h1>integrate payumoney part 2 || order placement with payumoney || create success/ fail page</h1>
  <p>We will also work on Payumoney response. If user successfully makes payment then we will update the order status with "Paid" and will send order confirmation email to user.<br>For getting Payumoney response after making transaction with test card, client need to register with PayUmoney website and can get credentials after activating the account.<br>Recently PayUMoney has changed their process. This is for both production and sandbox. To start with website integration, we need an active account. So get your account activated. After that you can start integration.<br>Once your account is active, you can test your integration code. It will work. You can start receiving payments as well.<br>But in this video, we presume that our account has been activated by Payu and will add success condition to test it.</p>
  <ol>
      <li>Update payumoneyPayment function <br>We will update payumoneyPayment function to get the order details to return them to payumoney payment gateway.</li>
      <li>Add Header Statements :-<br>Add below statements at top of PayumoneyController to include Order model and Session :-<br>use Session;<br>use App\Order;<br>Now actual order with order id and amount is going to Payumoney payment gateway.<br>Now, we will work on Payumoney response. If user successfully makes payment then we will update the order status with "Paid" and will send order confirmation email to user.</li>
      <li>Create Route :-<br>We will create route for payumoney response in web.php file like below :-<br>Route::post('payumoney/response','PaymentController@payumoneyResponse');</li>
      <li>Create payumoneyResponse function :-<br>Now we will create payumoneyResponse function in which we will check payumoney response status is success or not. If success then we will update order with "Payment Captured" status and will send order confirmation email to user. And if fail then we will update order status to "Payment Fail".</li>
      <li>Update indipay.php file :-<br>We will resolve CSRF token error by update indipay.php file with response link payumoney/response as shown in video.</li>
      <li>Create Routes for Payumoney success and fail pages :-<br>Create Get route for Payumoney success and fail pages in web.php file like below :-<br>// Payumoney Success<br>Route::get('/payumoney/success','PayumoneyController@success');<br>// Payumoney Fail<br>Route::get('/payumoney/fail','PayumoneyController@fail');</li>
      <li>Create success and fail functions :-<br>Now create success and fail functions in PayumoneyController file :-</li>
      <li>Create success.blade.php and fail.blade.php files :-<br>Finally, we will create success.blade.php and fail.blade.php files in payumoney folder same like Paypal.</li>
  </ol>



  <h1>integrate payumoney part 3|| integrate payu transaction status API|| verify transaction</h1>
  <p>In this video, we will work on transaction status API provided by Payumoney in which we will check user payment status with Curl.<br>This API will help us to update the status of those orders whose status is "Cancelled" at our end but "Payment Captured" at Payumoney end. Such situation sometimes arise when user closed the browser or his internet stopped working suddenly after making payment.<br>We can run the API every half an hour in Cron Job to check the payment status of last 20-30 orders depends upon the frequency of the orders and updates their status in case.</p>

  <ol>
      <li>Create Route :-<br>Create GET route for payumoney transaction api to verify if the payment has been made or not. We will pass id as optional paramter; if id is return then we will check for one particular id otherwise list of orders together. <br>// Payumoney Transaction Status API<br>Route::get('/payumoney/verify/{id?}','PayumoneyController@payumoneyVerify');</li>
      <li>Create payumoneyVerification function :-<br>Now we will create payumoneyVerification function in PayumoneyController to check if the order is successful or not from Payu end via Curl.<br>You can open below link to get the API code :-<br>https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEstNlNoX2RPVDUwTkNoYnBRZlNWVHhCV2lBUXxBQ3Jtc0ttUUtRSXFLNThEZ2VVYlYxYmF2T1Q1S3RHa045NTJLMXFwSHFLZi1MbE9Cc1BfQkdwb3dNanlsYUhsSjJVWVdsaVZ0SUVKTWhZZEpvYlFuUVhjMHhIR2Z0ajh2X2ZvOXFQVC0yajZmemwwanRkLWl3Zw&q=https%3A%2F%2Fpayumoney-transaction-status-api.blogspot.com<br>or<br>Open below SO link to get the API code :-<br>https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbks2NjNBdExMeFc2b3pYbHE1akhBeWd2MlFKZ3xBQ3Jtc0tuMFFkekdnSy1LTHNySmpGTXJDNGJob3VNQkR6S3VraXVRZ2tjZnNDSk90RUNLcDhtVmJaazRGaEFBa01nbkdVTEtrcU0xNnlZRlpkMUhPbU5VX3JVdXZvTHJaU3doNzhuVG90Z0xKUERmMnRKaHhwcw&q=https%3A%2F%2Fstackoverflow.com%2Fquestions%2F48166716%2Ftransaction-status-api-in-php-for-payment-gateway<br>You can see my answer in above SO page that will help us to integrate API. Please upvote it if it helps you.</li>
  </ol>




  <h1>integrate payumoney part 4|| schedule cron job for payu API || verify transaction / payments</h1>
  <p>So we will set Cron job for our API at http://cron-job.org after making free account there.<br>A cron job is a Linux command used for scheduling tasks to be executed sometime in the future. </p>



  <h1>products stock management || reduce stock@ order placement</h1>
  <p>In case of COD orders, we will reduce the stock at the time of order placement only and we will update checkout function for it.<br>Update checkout function (In case of COD Orders)<br>For COD orders, we need to update checkout function in ProductsController to reduce the product stock every time when user placed the order. We will pick all the products that user ordered and update their stock in products_attributes table as shown in video.<br>In case of Payumoney orders, we will reduce the stock at the time of payment made and we will update payumoneyResponse function at PayumoneyController.<br>In case of Paypal orders, we will reduce the stock at the time of payment made and we will update ipn function at PaypalController.</p>
</div>
</body>
</html>

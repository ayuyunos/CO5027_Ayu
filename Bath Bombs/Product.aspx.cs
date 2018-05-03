using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Bath_Bombs
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            int quantityOfProduct = int.Parse(DropDownList1.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

            var clientId = "AXvDJv-MuE84K1fZs8kQr807x1V_-MPI-xTlWc9LP9CPYFy8jY9Sd3ZRxs8NVuzb0g3Bqse-btW295VX";
            var clientSecret = "ELUcAU5lizB8lkCZD8JoYpG4rFLvHw4lmlrx8Nnq-5Uusq8OtBL4bKMBQqkPzTfrEVQODenTyCRnuH0d";
            var sdkConfig = new Dictionary<string, string>
            {
                { "mode", "sandbox" },
                { "clientId", "clientId" },
                { "clientSecret", "clientSecret" }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;
            /*var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);*/

            var productItem = new Item();
            productItem.name = "Product 1";
            productItem.currency = "USD";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO";
            productItem.quantity = quantityOfProduct.ToString();

            var trasactionDetails = new Details();
            trasactionDetails.tax = "0";
            trasactionDetails.shipping = postagePackagingCost.ToString();
            trasactionDetails.subtotal = subTotal.ToString("0.00");

            var trasactionAmount = new Amount();
            trasactionAmount.currency = "USD";
            trasactionAmount.total = total.ToString("0.00");
            trasactionAmount.details = trasactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of product item";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = trasactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + "/Default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + "/CompletePurchase.aspx";

           
                var payment = Payment.Create(apiContext, new Payment
                {
                    intent = "sale",
                    payer = payer,
                    transactions = new List<Transaction> { transaction },
                    redirect_urls = redirectUrls
                });

                Session["paymentId"] = payment.id;

                foreach (var link in payment.links)
                {
                    if (link.rel.ToLower().Trim().Equals("approval_url"))
                    {
                        Response.Redirect(link.href);
                    }
                }
            
            
        }
    }
}   
    
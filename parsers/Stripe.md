# Parsers For Stripe

## Parser:
```
| json "type", "data.object.name", "data.object.object", "data.object.amount_off", "data.object.duration", "data.object.duration_in_months", "data.object.max_redemptions" as type, name, object, amountOff, duration, durationInMonths, maxRedeptions nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend



## Parser:
```
| json "type", "data.object.object" as  type, object nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Created, Products Deleted, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recent Product Events, Recent Tax Rate Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend, Tax Rate Events Trend



## Parser:
```
| json "type", "data.object.object" as type, object nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Created, Products Deleted, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recent Product Events, Recent Tax Rate Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend, Tax Rate Events Trend



## Parser:
```
| json "type", "data.object.object", "data.object.code", "data.object.coupon.name" as type, object, code, couponName nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Type, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Invoice Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend



## Parser:
```
| json "type", "data.object.object", "data.object.display_name", "data.object.percentage", "data.object.country" as type, object, taxType, percentageRate, country nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recent Product Events, Recent Tax Rate Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend, Tax Rate Events Trend



## Parser:
```
| json "type","data.object.name", "data.object.object" as type, productName, object nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recent Product Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend



## Parser:
```
| json "type","data.object.object" as type, object nodrop
 
```
### Use Cases:
Billing Portal Configuration Events, Billing Portal Configuration Events Trend, Coupon Events Trend, Customer Events Trend, Customers Created, Customers Deleted, Customers Updated, Discount Events, Discount Events Trend, Events by Object, Events by Type, Events Object Trend, Events Type Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Invoice Sent, Payment Intents Events, Payment Intents Events Trend, Plan Events, Plan Events Trend, Price Events, Price Events Trend, Product Events Trend, Products Updated, Promotion Code Events, Promotion Code Events Trend, Promotion Codes, Quotes Events, Quotes Events Trend, Recent Coupon Events, Recent Invoice Events, Recent Product Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend, Tax Rate Events Trend



## Parser:
```
| json "type","data.object.object", "data.object.invoice_pdf", "data.object.customer_email", "data.object.customer_name", "data.object.due_date" as type, object, invoicePDF, customerEmail, customerName, dueDate nodrop
 
```
### Use Cases:
Customer Events Trend, Customers Created, Customers Updated, Discount Events, Discount Events Trend, Invoice Events, Invoice Events Trend, Invoice Finalized, Invoice Paid, Invoice Payment Succeeded, Quotes Events, Quotes Events Trend, Recent Invoice Events, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend



## Parser:
```
| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop
 
```
### Use Cases:
Customer Events Trend, Customers Created, Discount Events, Invoice Events Trend, Invoice Paid, Invoice Payment Succeeded, Quotes Events, Quotes Events Trend, Recently Created Customers, Recently Deleted Customers, Recently Updated Customers, Subscription Events, Subscription Events Trend



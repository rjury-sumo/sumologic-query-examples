# Parsers For Stripe

| use_case | parser |
|--- | --- |
| Stripe/Customers and Billing/Customer Events Trend | _sourceCategory={{Logsdatasource}}  type customer<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Customers Created | _sourceCategory={{Logsdatasource}}  type "customer.created"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Customers Deleted | _sourceCategory={{Logsdatasource}}  type "customer.deleted"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Customers Updated | _sourceCategory={{Logsdatasource}}  type "customer.updated"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Discount Events | _sourceCategory={{Logsdatasource}}  type discount<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Discount Events Trend | _sourceCategory={{Logsdatasource}}  type discount<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Invoice Events | _sourceCategory={{Logsdatasource}}  type invoice<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Invoice Events Trend | _sourceCategory={{Logsdatasource}}  type invoice<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Invoice Finalized | _sourceCategory={{Logsdatasource}}  type "invoice.finalized"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Invoice Paid | _sourceCategory={{Logsdatasource}}  type "invoice.paid"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Invoice Payment Succeeded | _sourceCategory={{Logsdatasource}}  type "invoice.payment_succeeded"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Invoice Sent | _sourceCategory={{Logsdatasource}}  type "invoice.sent"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Customers and Billing/Quotes Events | _sourceCategory={{Logsdatasource}}  type quote<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Quotes Events Trend | _sourceCategory={{Logsdatasource}}  type quote<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Recent Invoice Events | _sourceCategory={{Logsdatasource}}  type invoice<br>\| json "type","data.object.object", "data.object.invoice_pdf", "data.object.customer_email", "data.object.customer_name", "data.object.due_date" as type, object, invoicePDF, customerEmail, customerName, dueDate nodrop |
| Stripe/Customers and Billing/Recently Created Customers | _sourceCategory={{Logsdatasource}}  type customer.created<br>\| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop |
| Stripe/Customers and Billing/Recently Deleted Customers | _sourceCategory={{Logsdatasource}}  type customer.deleted<br>\| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop |
| Stripe/Customers and Billing/Recently Updated Customers | _sourceCategory={{Logsdatasource}}  type customer.updated<br>\| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop |
| Stripe/Customers and Billing/Subscription Events | _sourceCategory={{Logsdatasource}}  type subscription<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Customers and Billing/Subscription Events Trend | _sourceCategory={{Logsdatasource}}  type subscription<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Overview/Billing Portal Configuration Events | _sourceCategory={{Logsdatasource}}  type "billing_portal.configuration"<br>\| json "type", "data.object.object" as type, object nodrop |
| Stripe/Overview/Billing Portal Configuration Events Trend | _sourceCategory={{Logsdatasource}}  type billing_portal.configuration<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Overview/Events by Object | _sourceCategory={{Logsdatasource}}  object<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Events by Type | _sourceCategory={{Logsdatasource}}  type<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Events Object Trend | _sourceCategory={{Logsdatasource}}  object<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Events Type Trend | _sourceCategory={{Logsdatasource}}  type<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Payment Intents Events | _sourceCategory={{Logsdatasource}}  type "payment_intent"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Payment Intents Events Trend | _sourceCategory={{Logsdatasource}}  type "payment_intent"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Overview/Plan Events | _sourceCategory={{Logsdatasource}}  type plan<br>\| json "type", "data.object.object" as type, object nodrop |
| Stripe/Overview/Plan Events Trend | _sourceCategory={{Logsdatasource}}  type plan<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Overview/Price Events | _sourceCategory={{Logsdatasource}}  type price<br>\| json "type", "data.object.object" as type, object nodrop |
| Stripe/Overview/Price Events Trend | _sourceCategory={{Logsdatasource}}  type price<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Overview/Promotion Code Events | _sourceCategory={{Logsdatasource}}  type "promotion_code"<br>\| json "type", "data.object.object", "data.object.code", "data.object.coupon.name" as type, object, code, couponName nodrop |
| Stripe/Overview/Promotion Code Events Trend | _sourceCategory={{Logsdatasource}}  type "promotion_code"<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Overview/Promotion Codes | _sourceCategory={{Logsdatasource}}  type "promotion_code"<br>\| json "type", "data.object.object", "data.object.code", "data.object.coupon.name" as type, object, code, couponName nodrop |
| Stripe/Products/Coupon Events | _sourceCategory={{Logsdatasource}}  type coupon<br>\| json "type", "data.object.object" as type, object nodrop |
| Stripe/Products/Coupon Events Trend | _sourceCategory={{Logsdatasource}}  type coupon<br>\| json "type", "data.object.object" as type, object nodrop |
| Stripe/Products/Product Events Trend | _sourceCategory={{Logsdatasource}}  type product<br>\| json "type","data.object.object" as type, object nodrop |
| Stripe/Products/Products Created | _sourceCategory={{Logsdatasource}}  type "product.created"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Products/Products Deleted | _sourceCategory={{Logsdatasource}}  type "product.deleted"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Products/Products Updated | _sourceCategory={{Logsdatasource}}  type "product.updated"<br>\| json "type", "data.object.object" as  type, object nodrop |
| Stripe/Products/Recent Coupon Events | _sourceCategory={{Logsdatasource}}  type coupon<br>\| json "type", "data.object.name", "data.object.object", "data.object.amount_off", "data.object.duration", "data.object.duration_in_months", "data.object.max_redemptions" as type, name, object, amountOff, duration, durationInMonths, maxRedeptions nodrop |
| Stripe/Products/Recent Product Events | _sourceCategory={{Logsdatasource}}  type product<br>\| json "type","data.object.name", "data.object.object" as type, productName, object nodrop |
| Stripe/Products/Recent Tax Rate Events | _sourceCategory={{Logsdatasource}}  type  tax_rate<br>\| json "type", "data.object.object", "data.object.display_name", "data.object.percentage", "data.object.country" as type, object, taxType, percentageRate, country nodrop |
| Stripe/Products/Tax Rate Events Trend | _sourceCategory={{Logsdatasource}}  type tax_rate<br>\| json "type","data.object.object" as type, object nodrop |


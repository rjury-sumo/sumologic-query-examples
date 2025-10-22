# Parsers For Stripe

**Stripe/Customers and Billing/Customer Events Trend**
```
_sourceCategory={{Logsdatasource}}  type customer
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Customers Created**
```
_sourceCategory={{Logsdatasource}}  type "customer.created"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Customers Deleted**
```
_sourceCategory={{Logsdatasource}}  type "customer.deleted"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Customers Updated**
```
_sourceCategory={{Logsdatasource}}  type "customer.updated"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Discount Events**
```
_sourceCategory={{Logsdatasource}}  type discount
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Discount Events Trend**
```
_sourceCategory={{Logsdatasource}}  type discount
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Invoice Events**
```
_sourceCategory={{Logsdatasource}}  type invoice
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Invoice Events Trend**
```
_sourceCategory={{Logsdatasource}}  type invoice
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Invoice Finalized**
```
_sourceCategory={{Logsdatasource}}  type "invoice.finalized"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Invoice Paid**
```
_sourceCategory={{Logsdatasource}}  type "invoice.paid"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Invoice Payment Succeeded**
```
_sourceCategory={{Logsdatasource}}  type "invoice.payment_succeeded"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Invoice Sent**
```
_sourceCategory={{Logsdatasource}}  type "invoice.sent"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Customers and Billing/Quotes Events**
```
_sourceCategory={{Logsdatasource}}  type quote
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Quotes Events Trend**
```
_sourceCategory={{Logsdatasource}}  type quote
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Recent Invoice Events**
```
_sourceCategory={{Logsdatasource}}  type invoice
| json "type","data.object.object", "data.object.invoice_pdf", "data.object.customer_email", "data.object.customer_name", "data.object.due_date" as type, object, invoicePDF, customerEmail, customerName, dueDate nodrop
```

**Stripe/Customers and Billing/Recently Created Customers**
```
_sourceCategory={{Logsdatasource}}  type customer.created
| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop
```

**Stripe/Customers and Billing/Recently Deleted Customers**
```
_sourceCategory={{Logsdatasource}}  type customer.deleted
| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop
```

**Stripe/Customers and Billing/Recently Updated Customers**
```
_sourceCategory={{Logsdatasource}}  type customer.updated
| json "type","data.object.object", "data.object.name", "data.object.email" as type, object, name, email nodrop
```

**Stripe/Customers and Billing/Subscription Events**
```
_sourceCategory={{Logsdatasource}}  type subscription
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Customers and Billing/Subscription Events Trend**
```
_sourceCategory={{Logsdatasource}}  type subscription
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Overview/Billing Portal Configuration Events**
```
_sourceCategory={{Logsdatasource}}  type "billing_portal.configuration"
| json "type", "data.object.object" as type, object nodrop
```

**Stripe/Overview/Billing Portal Configuration Events Trend**
```
_sourceCategory={{Logsdatasource}}  type billing_portal.configuration
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Overview/Events by Object**
```
_sourceCategory={{Logsdatasource}}  object
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Events by Type**
```
_sourceCategory={{Logsdatasource}}  type
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Events Object Trend**
```
_sourceCategory={{Logsdatasource}}  object
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Events Type Trend**
```
_sourceCategory={{Logsdatasource}}  type
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Payment Intents Events**
```
_sourceCategory={{Logsdatasource}}  type "payment_intent"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Payment Intents Events Trend**
```
_sourceCategory={{Logsdatasource}}  type "payment_intent"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Overview/Plan Events**
```
_sourceCategory={{Logsdatasource}}  type plan
| json "type", "data.object.object" as type, object nodrop
```

**Stripe/Overview/Plan Events Trend**
```
_sourceCategory={{Logsdatasource}}  type plan
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Overview/Price Events**
```
_sourceCategory={{Logsdatasource}}  type price
| json "type", "data.object.object" as type, object nodrop
```

**Stripe/Overview/Price Events Trend**
```
_sourceCategory={{Logsdatasource}}  type price
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Overview/Promotion Code Events**
```
_sourceCategory={{Logsdatasource}}  type "promotion_code"
| json "type", "data.object.object", "data.object.code", "data.object.coupon.name" as type, object, code, couponName nodrop
```

**Stripe/Overview/Promotion Code Events Trend**
```
_sourceCategory={{Logsdatasource}}  type "promotion_code"
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Overview/Promotion Codes**
```
_sourceCategory={{Logsdatasource}}  type "promotion_code"
| json "type", "data.object.object", "data.object.code", "data.object.coupon.name" as type, object, code, couponName nodrop
```

**Stripe/Products/Coupon Events**
```
_sourceCategory={{Logsdatasource}}  type coupon
| json "type", "data.object.object" as type, object nodrop
```

**Stripe/Products/Coupon Events Trend**
```
_sourceCategory={{Logsdatasource}}  type coupon
| json "type", "data.object.object" as type, object nodrop
```

**Stripe/Products/Product Events Trend**
```
_sourceCategory={{Logsdatasource}}  type product
| json "type","data.object.object" as type, object nodrop
```

**Stripe/Products/Products Created**
```
_sourceCategory={{Logsdatasource}}  type "product.created"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Products/Products Deleted**
```
_sourceCategory={{Logsdatasource}}  type "product.deleted"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Products/Products Updated**
```
_sourceCategory={{Logsdatasource}}  type "product.updated"
| json "type", "data.object.object" as  type, object nodrop
```

**Stripe/Products/Recent Coupon Events**
```
_sourceCategory={{Logsdatasource}}  type coupon
| json "type", "data.object.name", "data.object.object", "data.object.amount_off", "data.object.duration", "data.object.duration_in_months", "data.object.max_redemptions" as type, name, object, amountOff, duration, durationInMonths, maxRedeptions nodrop
```

**Stripe/Products/Recent Product Events**
```
_sourceCategory={{Logsdatasource}}  type product
| json "type","data.object.name", "data.object.object" as type, productName, object nodrop
```

**Stripe/Products/Recent Tax Rate Events**
```
_sourceCategory={{Logsdatasource}}  type  tax_rate
| json "type", "data.object.object", "data.object.display_name", "data.object.percentage", "data.object.country" as type, object, taxType, percentageRate, country nodrop
```

**Stripe/Products/Tax Rate Events Trend**
```
_sourceCategory={{Logsdatasource}}  type tax_rate
| json "type","data.object.object" as type, object nodrop
```



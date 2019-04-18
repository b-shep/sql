SELECT OrderNumber, CustomerName, Description, Code, Price, OrderDate, Quantity, l.id
	FROM LineItem l
		INNER JOIN
			Invoice i
				on l.InvoiceID = i.ID
		INNER JOIN
			Product p
					on l.ProductID = p.ID;
                    
-- Sean's Way
SELECT i.OrderNumber, i.CustomerName, i.OrderDate, 
		p.Code, p.Description, p.Price, 
        l.quantity
	FROM Product p
		INNER JOIN
			LineItem l
				on p.ID = l.productID
    	INNER JOIN
			Invoice i 
				on i.ID = l.InvoiceID
;
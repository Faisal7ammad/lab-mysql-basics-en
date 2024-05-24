#Q1
Select client_id from client where district_id = 1 order by client_id limit 5;

#Q2
Select client_id from client where district_id = 72 order by client_id desc limit 1;

#Q3
Select amount from loan order by amount asc limit 3;

#Q4
Select distinct `status` from loan order by `status`;

#Q5
Select loan_id from loan order by payments desc limit 1;

#Q6
Select account_id, amount from loan order by account_id limit 5;

#Q7
Select account_id from loan where duration = 60 order by amount limit 5;

#Q8
Select distinct k_symbol from `order` where k_symbol != '' order by k_symbol;

#Q9
Select order_id from `order` where account_id = 34;

#Q10
Select distinct account_id from `order` where order_id >= 29540 and order_id <= 29560;

#Q11
Select amount from `order` where account_to = 30067122;

#Q12
Select trans_id, date, type, amount from trans where account_id = 793 order by date desc limit 10;

#Q13
Select count(client_id) as number_of_clients from client where district_id <10 group by district_id;

#Q14
Select type, count(card_id) from card group by type;

#Q15
Select account_id, sum(amount) as total from loan group by account_id order by total desc limit 10;

#Q16
Select date, count(date) as n_loans from loan where date < 930907 group by date order by date desc limit 10;

#Q17
Select date, duration, count(date) from loan where date between 971201 and 971231 and amount != 0 group by date, duration order by date, duration;

#Q18
Select account_id, type, sum(amount) as total from trans where account_id = 396 group by type order by type;

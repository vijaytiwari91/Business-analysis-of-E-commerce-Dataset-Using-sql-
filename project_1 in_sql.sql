q=1
create database  ecommerce ;  
use ecommerce ;  
-- q=>2  go to ecommerce table click right table then select path and select next 
select count(*) from users_data11 ; 


-- q3=> Run SQL command to see the structure of table
desc users_data11 ; 

-- q4=> Run SQL command to select first 100 rows of the database
select * from users_data11 limit 100 ; 
 
-- q5=> How many distinct values exist in table for field country and language
select  count(distinct country,language)  from users_data11 ; 

-- q=>6 Check whether male users are having maximum followers or female users.
select * from users_data11;
select count(*) identifierHash , gender from users_data11 group by  gender ;

-- q7 
select * from users_data11;
desc users_data11 ; 

select count(*)  hasProfilePicture from users_data11 where hasProfilePicture = 'True';
desc users_data11 ;
 select count(*) hasanyapp from users_data11 where hasProfilePicture = 'True'  ;

select count(*)  hasAndroidApp from users_data11 where hasAndroidApp = 'True';

select count(*)  hasIosApp from users_data11 where hasIosApp= 'True' ; 


-- q=>8

select  country, sum(productsBought) from users_data11 group by country order by  sum(productsBought) desc ;

-- q=> 9
select  country , sum(productssold) from users_data11 group by country  order by sum(productssold)  asc  ;

-- q=10
desc users_data11;
select country , productspassrate from users_data11  group by country order by productspassrate desc limit 10 ;

-- q=11
select   language ,  count(identifierHash) total  from users_data11 group by language ; 

-- q=12
desc users_data11;
-- select identifierHash where gender = 'f' and 
select  'wishlist' , count(gender)   from users_data11 where gender = 'f' and productsWished>0
 union
 select 'socialProductsLiked' ,count(gender) from users_data11 where gender = 'f' and socialProductsLiked >0;


-- q=13
--
select  'buyer' , count(productsBought)   from users_data11 where gender = 'M' and productsBought>0
 union
 select 'seller' ,count(productsSold) from users_data11 where gender = 'M' and productsSold>0;

-- q=14
select country , sum(productssold) from users_data11 ;

-- q = 15 
select productssold,country from users_data11 where productssold = 0 limit  10 ; 

-- q = 16 

select daysincelast;
select * from users_data11 order by daysSinceLastLogin limit 110 ;


-- q=17
select gender , daysSinceLastLogin from users_data11 where gender = 'f' and daysSinceLastLogin >100 ;

-- q18
select gender , country  from users_data11 where gender = 'F' group by country;

-- q19

select country , count(gender) from users_data1 where gender = 'M' and hasAnyApp = 'True' group by country ; 

-- 20 
select country , avg(productssold), avg(productsbought) , gender  from users_data11 where gender  = 'm' and  hasAnyapp = 'True' group by country ;  
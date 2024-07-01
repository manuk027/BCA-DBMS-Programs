create or replace function primes (num integer) returns varchar as $$ 
declare
n integer; 
x varchar (30);
begin
if(num=2) then x:= 'The number is Prime';
else 
n=num/2; 
for i in 2..n 
loop 
if (mod (num,i)=0) then x:='The number is not prime'; 
exit;
else x:= 'The number is Prime'; 
end if;
end loop;
end if; 
return (x);
end;
$$ language plpgsql;
select primes (5);

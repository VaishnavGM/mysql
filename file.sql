use vaishnav1;
select*from new;
select * ,sal*12 as annualsal from new;
select E_name,dept_no from new where dept_no=10;
select E_name,sal from new where sal>1250;
select E_name,sal from new where sal>3000;
select job,sal from new where E_name='David';
select *,sal*12 as annualsal from new where E_name='smith';
select E_name from new where job='clerk';
select sal from new where job='salesman';
select * from new where sal>2000;
select * from new where E_name='jones';
select * from new where hiredate='1920-04-03';
select E_no,E_name from new where dept_no=30;
select E_name,hiredate from new where hiredate>2021;
select * from new where job='manager';
select E_name,sal from new where comm=725;
select * from new where comm>sal;
select E_no from new where hiredate<'2022-01-01';
select * from new where job='manager';
select * from new where sal>2000;
select E_name,sal,sal*12 as annualsal from new where sal*12>3000;
select count(sal<2000) from new where dept_no=10;
select sum(sal) from new where job = 'clerk';
select avg(sal) from new;
 select count(E_name) from new where E_name like 'a%';
 select count(E_name) from new where job ='clerk' or job = 'manager';
 select sum(sal) from new where month(hiredate)='2';
 select count(E_name) from new where MGR ='7839';
 select count(E_name) from new where dept_no ='30' and comm>0;
 select sum(sal),avg(Sal),count(E_name),max(Sal) from new where job = 'manager';
 select count(E_name) from new where E_name like '%a%';
 select count(E_name),sum(sal) from new where E_name like  '%ll%';
 select * from new where sal>1250 and sal<2000;
 select *from new where sal<1500 or job ='team leader';
 select *from new where job ='clerk' and sal<1300;
 select E_name,hiredate from new where job = 'manager'and dept_no=30;
 select *,sal*12 as annualsal from new where dept_no=30 and job = 'salesman' and sal*12>1200;
 select * from new where dept_no=30 or job ='supervisor';
 select E_name from new where sal<1100 and job ='clerk';
 select E_name,sal,dept_no,sal*12 as annualsal from new where dept_no=20 and sal>2300 and sal*12>3000;
 select E_no,E_name from new where job = 'manager' and dept_no =20;
 select *from new where dept_no = 20 or dept_no=30;
 select *from new where job='engineer' and dept_no = 10;
 select *from new where job = 'doctor' and sal ='2980';
 select E_name,dept_no from new where dept_no=20 or dept_no=30;
 select *from new where  job not in('clerk','manager');
 select *from new where hiredate between year(2020) and year(2021);
 select *from new where hiredate between year(2021) and year(2022);
 select *from new where hiredate not in (2022);
 select*from new;
 select E_name,comm from new where comm is null;
 select * from new where mgr is null;
 select *from new where comm is not null;
 select E_name from new where E_name like('a%');
  select E_name from new where E_name like('%k');
  select E_name from new where E_name like('%a%');
  select E_name from new where E_name like ('__a%');
  select E_name from new where E_name like('__r___');
  select E_name,dept_no,job from new where job ='clerk' and  dept_no in (10,20);
  select *from new where job in('clerk' , 'manager') && dept_no = 10 ;
  select E_name from new where dept_no in(10,20,30,40);
  select *from new where E_no in(7902,7839);
  select *from new where job in('manager','salesman','clerk');
  select E_name from new where month(hiredate) between 2020 and 2022;
  select*from new where sal between 1250 and 2000;
  select E_name from new where year(hiredate)>2021 and dept_no in (10,30);
select E_name,sal*12  as annualsal from new where job in('manager' or 'clerk') and comm is not null;
select *,sal*12 as annualsal from new  where sal between 1000 and 2500 and sal*12>3000;
 select max(Sal),min(Sal),dept_no from new  where sal !=1000 group by dept_no;
select count(E_name) from new group by job;
select count(E_name) from new where sal!='supervisor' group by dept_no; 
select sum(Sal) from new group by job;
select count(E_name) from new where job ='manager'group by dept_no;
select avg(sal) from new where dept_no!=30 group by dept_no;
select count(E_name) from new where E_name like('%a%') group by job;
select count(E_name),avg(Sal) from new where sal>2000 group by dept_no;
select count(E_name),sum(sal) from new where job = 'salesman' group by dept_no;
select count(E_name) ,max(Sal) from new group by job;
select max(Sal) from new group by dept_no;
select count(sal) from new ; 
select*from new;
select count(E_name) from new group by hiredate,dept_no having count(*)>1;
select dept_no from new   group by dept_no having count(E_name)>3;
select dept_no,count(E_name) from new where job ='clerk' group by dept_no having count(E_name)>2;
select dept_no,job from new;
select dept_no,sum(Sal) from new group by dept_no having count(E_name)>4 ;
select count(E_name) from new group by job  having min(sal)>1200 and sum(sal)>3800 ; 
select dept_no,count(E_name) from new where job = 'manager' group by dept_no having count(E_name)=2;
select dept_no,job,E_name from new where job = 'manager' ;
select job,max(Sal) from new where Sal>2600 group by job;
select sal from new group by sal having count(*)>1;
select hiredate from new group by hiredate having count(*)>1;
select avg(Sal) from new group by dept_no having avg(Sal)<3000;
select dept_no from new where E_name like('%a%') and ('%s%') group by dept_no having count(E_name)>=3;
select max(Sal),min(Sal) from new group by job having min(Sal)>2000 and max(Sal)<5000;
select max(Sal) from new group by job;
select E_name,E_no,sal,comm from new where sal>1250 or dept_no=30;
select count(E_name) from new group by day(hiredate),dept_no having count(*)>1;
select count(E_name) from new group by sal,dept_no having count(*)>1;
select max(Sal) as maxsal ,min(Sal) as minsal from new   group by dept_no having min(Sal) between 1250 and 1500 and max(Sal)>2900;
select * from new where sal = (select distinct min(sal) from new where sal not in (select min(sal) from new ));
select E_name,sal from new where sal >(select sal from new where E_name ='allen');
select * from new where job = (select job from new where E_name = 'miller');
select E_name from new where sal>(select sal from new where E_name = 'adams');
select E_name,sal from new where sal<(select sal from new where E_name = 'king');
select E_name,dept_no from new where dept_no = (select dept_no from new where E_name='jones');
select E_name,job from new where job = (select job from new where E_name ='james');
select E_no,E_name,sal*12 as annualsal from new  where sal>(select sal*12 ;
select E_name,hiredate from new where hiredate<(select hiredate from new where E_name = 'turner');
 select E_name,hiredate from new where hiredate>(select hiredate from new where job='president');
 select E_name,sal from new where sal<(select sal from new where E_no=7839);
 select*from new hiredate where hiredate <(select hiredate from new where E_name = 'miller');
 select E_name,dept_no from new where sal>(select sal from new where E_name='allan');
 select E_name,sal from new where sal>(select sal from new where E_name='scot')&&hiredate<(select hiredate from new  where E_name='king');
 select *from new where job=(select job from new where E_name= 'turner')&&sal<5000; 
 select E_name,sal from new where sal>(select sal from new where E_name='miller')&&sal<(select sal from new where E_name = 'allen');
 select*from new where dept_no=20 && job=(select job from new where E_name ='smith');
 select * from new where job ='manager' && dept_no = (select dept_no from new where E_name = 'turner');
 select E_name,hiredate from new where year(hiredate)>1980&&hiredate<(select hiredate from new where E_name ='king');
 select E_name,sal,sal*12 as annualsal  from new where sal<(select sal from new where E_name = 'blake')&&sal>3500;
 select * from new where sal between (select sal from new where E_name ='scott') and (select sal from new where E_name = 'king');
 select E_name from new where E_name like('a%')&& job = (select dept_no from new where E_name = 'blake');
 select E_name ,comm from new where comm >0 and job = (select job from new where E_name ='smith');
 select *from new where job='clerk'&& dept_no = (Select dept_no from new where E_name ='turner');
 select E_name,sal,job from new where sal*12 between (select sal from new where E_name ='smith') and (Select sal from new where E_name ='king');
 create table new1(dept_no int ,d_name varchar(30),loc varchar(10));
 insert into new1(dept_no,d_name,loc)values(10,'accounting ing','newyork'),(20,'research','dallas'),(30,'sales','chicago'),(40,'operations','boston');
 select new.*,new1.* from new left join new1 on new.dept_no=new1.dept_no;
 select new.*,new1.* from new right join new1 on new.dept_no=new1.dept_no;
 select new.*,new1.* from new inner join new1 on new.dept_no=new1.dept_no; 
 select new.*,new1.* from new cross join new1;
 select e1.E_name as Ename,e2.E_name as managername from new e1,new e2 where e1.mgr=e2.E_no;
 select new.* from new inner join new1 on new.dept_no=new1.dept_no where job = (select job from new where E_name = 'allen');
 select new1.loc from new inner join new1 on new.dept_no=new1.dept_no where job = (select job from new where E_name = 'scot');
 select e1.E_name as Empname,e2.E_name as managername from new e1 ,new e2 where e1.E_no=e2.mgr;
 select *from new1;
 select e1.E_name as empname,e2.sal as empsal,e3.E_name as mgrname,e4.sal as mgrsal from new e1,new e2,new e3,new e4 where e1.E_no=e3.mgr && e2.sal>e4.sal;
 select E_name as empname ,sal as Empsal,E_name as mgrname,sal as mgrsal from new where mgr = (select E_no from new);
select distinct Sal from new order by sal desc limit 1 offset 2  ; 
select E_name from new group by sal,E_name  order by sal  limit 1 offset 1;
select sal from new group by sal order by sal asc limit 1 offset 2;
select sal from new group by sal order by sal desc limit 1 offset 3;
select d_name,loc from new inner join new1 on new.dept_no=new1.dept_no where new.E_no =(select E_no from new group by E_no order by E_no desc limit 1 offset 1);
select loc from new inner join new1 on new.dept_no =new1.dept_no where new.E_no = (select E_no from new group by E_no order by sal asc limit 1);
select E_name,d_name from new inner join new1 on new.dept_no=new1.dept_no;
select E_name,d_name from new inner join new1 on new.dept_no=new1.dept_no where E_no in (select E_no from new where dept_no='30');
select E_name,loc from new inner join new1 on new.dept_no=new1.dept_no;
select d_name,sal from new inner join new1 on new.dept_no =new1.dept_no where d_name = (select d_name from new1 where d_name='accounting ing');
select d_name,sal*12 as annualsal from new inner join new1 on new.dept_no=new1.dept_no where new.sal>2340;
select E_name,d_name from new inner join new1 on new.dept_no=new1.dept_no where new1.d_name like '%a%';
select E_name ,d_name from new inner join new1 on new.dept_no=new1.dept_no where new.job='salesman';
select d_name,job from new inner join new1 on new.dept_no =new1.dept_no where new1.d_name like 's%' && new.job like 's%';
select d_name,mgr from new inner join new1 on new.dept_no=new1.dept_no where new.mgr='7839';
select d_name,hiredate from new inner join new1 on new.dept_no=new1.dept_no where year(hiredate)>1983 && new1.d_name='accounting ing'or 'research';
select E_name ,d_name from new inner join new1 on new.dept_no=new1.dept_no where new.comm is not null && (new.dept_no='10' or new.dept_no='30');
select d_name,E_no from new inner join new1 on new.dept_no=new1.dept_no where (new.E_no ='7839' or new.E_no ='7902')&& new1.loc = 'newyork';
select e1.E_name as empname,e2.E_name as mgrname from new e1,new e2 where e1.E_no = e2.mgr;
select e1.E_name as empame,e1.sal as Esal ,e2.E_name as mgrname,e2.sal as mgrsal from new e1 ,  new e2 where  e1.mgr=e2.E_no and e1.sal>e2.sal;
select e1.E_name as empname,e1.sal*12 as empannsal,e2.E_name as managername,e2.sal*12 as mgrannual from new e1,new e2 where e1.mgr =e2.E_no and (e1.sal>10000 and e2.E_name like '%a%');
select e1.E_name as empname ,e2.E_name as managername from new e1,new e2 where e1.mgr=e2.E_no && e1.job ='clerk';
select e1.E_name as empname ,e2.job as mgrdes from new e1,new e2 where e1.mgr=e2.E_no and (e1.dept_no='10'or e1.dept_no='30');
select e1.E_name as empname ,e2.sal as mgrsal from new e1,new e2 where e1.mgr=e2.E_no and e1.sal&&e2.sal>2300;
select e1.E_name as empname ,e2.hiredate as mgrhiredate from new e1,new e2 where e1.mgr =e2.E_no and e1.hiredate>1982;
select e1.E_name as empname,e2.comm as mgrcomm from new e1,new e2 where e1.mgr=e2.E_no and (e1.job = 'salesman' and e2.dept_no='30');
select e1.E_name as empname,e1.sal as empsal,e2.E_name as mgrname,e2.sal as mgrsal from new e1,new e2 where e1.mgr=e2.E_no and e1.sal>e2.sal;
select e1.E_name as empname ,e1.hiredate as emphire,e2.E_name as mgrname ,e2.hiredate as mgrhire from new e1,new e2 where e1.mgr=e2.E_no and e1.hiredate>e2.hiredate;
select e1.E_name as empname ,e2.E_name as mgrname from new e1,new e2 where e1.mgr=e2.E_no and e1.job =e2.job;
select e1.E_name as empname ,e2.E_name as mgrname from new e1,new e2 where e1.mgr=e2.E_no and e2.job ='manager';
select e1.E_name as empname ,e1.sal*12 as empannsal,e2.E_name as mgrname,e2.sal*12 as mgrannsal from new e1,new e2 where e1.mgr=e2.E_no and (e1.dept_no ='10' or e1.dept_no='30')and e2.sal>e1.sal;
delimiter **
create procedure vaishnavv()
begin
select*from new where E_name='allen';
select E_no from new where E_name = 'allen';
end**
call vaishnavv();
create view vaishnavs as select * from new ;
select * from vaishnavs;
alter view vaishnavs as select E_name  from new;
create index a on new(E_name,E_no);
drop index a;


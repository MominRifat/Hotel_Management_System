use [Hotel_Management_System]

insert into [dbo].[Role] values
('101','General Manager'),
('102','Office Manager'),
('103','Receptionist'),
('104','Housekeeping Staff'),
('105','Head Chef'),
('106','Chef'),
('107','Security Guard'),
('108','Waiter'),
('109','Driver'),
('110','Accountant'),
('111','Event Manager'),
('112','IT Support')

insert into [dbo].[Hotel] values
('1','Dhaka Royal Vista','72, Gulshan Avenue','Dhaka','Bangladesh','1212','02-8833445','dhakaroyal@hotel.com'),
('2','Coxs Sea Pearl','15 Sea Beach Road','Coxs Bazar','Bangladesh','4700','0341-67890','coxspearl@hotel.com'),
('3','Sylhet Green Resort','Sreemangal Road','Sylhet','Bangladesh','3100','0821-112233','sylhetgreen@hotel.com'),
('4','Chittagong Bay View','A-1, CDA Avenue','Chittagong','Bangladesh','4000','031-445566','ctgbayview@hotel.com'),
('5','Rajshahi Heritage Inn','Main Road, Shaheb Bazar','Rajshahi','Bangladesh','6000','0721-789012','rajshahi.heritage@hotel.com'),
('6','Khulna River Side','Jessore Road, Rupsa','Khulna','Bangladesh','9000','041-334455','khulnariver@hotel.com'),
('7','Barishal Lake Breeze','Amtala Road','Barishal','Bangladesh','8200','0431-556677','barishallake@hotel.com'),
('8','Rangpur City Inn','Station Road','Rangpur','Bangladesh','5400','0521-334455','rangpurcity@hotel.com'),
('9','Mymensingh Comfort Stay','Zilla Road','Mymensingh','Bangladesh','2200','091-112233','mymensinghstay@hotel.com'),
('10','Gazipur Forest Retreat','Rajendrapur Road','Gazipur','Bangladesh','1700','0921-889900','gazipurretreat@hotel.com'),
('11','Kuakata Ocean View','Beach Road','Kuakata','Bangladesh','8600','0441-334455','kuakataocean@hotel.com'),
('12','Pabna Comfort Hotel','Central Road','Pabna','Bangladesh','6600','0731-223344','pabnacomfort@hotel.com')

insert into [dbo].[Employee] values
('201','101','1','Momin','Rifat','90000.00','01811194021','NID2598412578'),
('202','102','1','Rifat','Khan','55000.00','01854994056','NID6598412547'),
('203','103','2','Nazmuz','Saif','65000.00','01869854125','NID5985412567'),
('204','105','2','Saif','Hasan','62000.00','01598426589','NID5982140216'),
('205','104','3','Montasim','Monti','32000.00','01569854712','NID1254789201'),
('206','106','3','Kamrul','Hasan','50000.00','01625474159','NID6985410023'),
('207','107','4','Momin','Mahin','30000.00','01754821630','NID0214577854'),
('208','109','4','Siam','Kabir','38000.00','01785412593','NID8901234567'),
('209','110','5','Arafat','Kabir','45000.00','01911223344','NID9998887771'),
('210','111','6','Maruf','Ahmed','48000.00','01866778899','NID1112223334'),
('211','112','7','Sohag','Faraji','50000.00','01755443322','NID5556667778'),
('212','106','8','Hasib','Rahman','47000.00','01988990011','NID3334445556')

insert into [dbo].[Emp_Role] values
('101','201','Morning'),
('102','202','Day'),
('103','203','Evening'),
('105','204','Day'),
('104','205','Night'),
('106','206','Day'),
('107','207','Night'),
('109','208','Day'),
('110','209','Morning'),
('111','210','Day'),
('112','211','Evening'),
('106','212','Day')

insert into [dbo].[Guest] values
('301','Momin','Rifat','01300112233','NID1122334455','momin@gmail.com'),
('302','Montasim','Kabir','01400445566','NID2233445566','montasim@gmail.com'),
('303','Nazmuz','Saif','01500778899','NID3344556677','nazmuz@gmail.com'),
('304','Siam','Ali','01600101010','NID4455667788','ali@gmail.com'),
('305','Kamrul','Islam','01700202020','NID5566778899','kamrul@gmail.com'),
('306','Tahsin','Hossain','01800303030','NID6677889900','tahsin@gmail.com'),
('307','Momin','Islam','01900404040','NID7788990011','islam@gmail.com'),
('308','Nazmuz','Siam','01310505050','NID8899001122','siam@gmail.com'),
('309','Arafat','Kabir','01322001122','NID9900112233','arafat@gmail.com'),
('310','Maruf','Ahmed','01433002233','NID8800223344','maruf@gmail.com'),
('311','Sohag','Faraji','01544003344','NID7700334455','sohag@gmail.com'),
('312','Hasib','Rahman','01655004455','NID6600445566','hasib@gmail.com')

insert into [dbo].[RoomType] values
('401','Standard Single','3500.00'),
('402','Deluxe Double','6000.00'),
('403','Executive Suite','12000.00'),
('404','Family Room','8500.00'),
('405','Presidential Suite','30000.00'),
('406','Twin Bed','4500.00'),
('407','King Deluxe','9500.00'),
('408','Economy Single','2800.00'),
('409','Luxury Suite','15000.00'),
('410','Junior Suite','7500.00')

insert into [dbo].[Room] values
('501','1','101','401','Occupied'),
('502','1','205','402','Available'),
('503','2','301','403','Occupied'),
('504','2','102','401','Available'),
('505','3','404','404','Maintenance'),
('506','3','501','405','Available'),
('507','4','601','406','Occupied'),
('508','5','202','402','Available'),
('509','6','203','407','Occupied'),
('510','7','204','408','Available'),
('511','8','205','409','Occupied'),
('512','9','206','402','Available')

insert into [dbo].[Booking] values
('601','301','1','501','2025-10-01','2025-10-03','Checked-Out'),
('602','302','2','503','2025-10-02','2025-10-14','Checked-In'),
('603','303','4','507','2025-10-03','2025-10-18','Confirmed'),
('604','304','1','502','2025-10-04','2025-10-05','Cancelled'),
('605','305','5','508','2025-10-05','2025-10-12','Confirmed'),
('606','301','3','506','2025-10-06','2025-10-25','Pending'),
('607','306','2','504','2025-10-07','2025-10-07','Confirmed'),
('608','309','6','509','2025-10-08','2025-10-13','Checked-In'),
('609','310','7','510','2025-10-09','2025-10-18','Confirmed'),
('610','311','8','511','2025-10-10','2025-10-15','Pending'),
('611','312','9','512','2025-10-11','2025-10-16','Confirmed'),
('612','307','3','505','2025-10-12','2025-10-19','Cancelled')

insert into [dbo].[Payment] values
('701','301','2025-10-01','7000.00','bKash','Paid','0.00'),
('702','302','2025-10-02','60000.00','Credit Card','Paid','0.00'),
('703','303','2025-10-03','36000.00','Bank Transfer','Pending','0.00'),
('704','304','2025-10-04','24000.00','Cash','Paid','0.00'),
('705','305','2025-10-05','12000.00','Rocket','Paid','500.00'),
('706','301','2025-10-06','20000.00','Nagad','Pending','0.00'),
('707','306','2025-10-07','14000.00','Cash','Paid','400.00'),
('708','308','2025-10-08','0.00','N/A','Failed','0.00'),
('709','309','2025-10-09','18000.00','Credit Card','Paid','0.00'),
('710','310','2025-10-10','9500.00','bKash','Paid','300.00'),
('711','311','2025-10-11','15000.00','Bank Transfer','Pending','0.00'),
('712','312','2025-10-12','6000.00','Cash','Paid','0.00')

insert into [dbo].[Service] values
('801','301','1','dinner buffet','1500.00','one person, first night special, dine and delight offer – buy 1 get 2'),
('802','302','2','spa massage','4000.00','full body aromatherapy, relax your mind and soul'),
('803','301','1','laundry','850.00','4 shirts, 2 trousers, complimentary fragrance finish'),
('804','303','4','mezban dinner','3000.00','traditional bangladeshi feast, buy 1 get 2 limited offer'),
('805','304','1','room service','1200.00','late-night snacks, complimentary dessert included'),
('806','306','2','beach gear rental','500.00','umbrella and chair set, enjoy the breeze with comfort'),
('807','305','5','mini bar','750.00','refreshing drinks and light snacks, buy 2 get 1 free'),
('808','307','6','airport transfer','2500.00','one-way drop-off, professional service with care'),
('809','309','6','dinner buffet','1800.00','complimentary welcome drink, sea-view dining experience'),
('810','310','7','gym access','1200.00','24-hour access to fitness and spa area'),
('811','311','8','room decoration','2500.00','romantic candlelight setup for couples'),
('812','312','9','laundry service','900.00','premium washing and steam ironing')


select *from [dbo].[Role]
select *from [dbo].[Hotel]
select *from [dbo].[Employee]
select *from [dbo].[Emp_Role]
select *from [dbo].[Guest]
select *from [dbo].[RoomType]
select *from [dbo].[Room]
select *from [dbo].[Booking]
select *from [dbo].[Payment]
select *from [dbo].[Service]

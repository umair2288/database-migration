create database shoppingov2;



create table shoppingov2.Product(
	
	ProductID int not null ,
	Name nvarchar(200) not null,
	DescriptionID int,
	AddedDate datetime,
	LastModified Datetime,
	CONSTRAINT PK_Product PRIMARY KEY (ProductID)
)


create table shoppingov2.Description(
	
	DescriptionID int ,
	DescriptionValueID int,
	LastModified DateTime,
	CONSTRAINT PK_Description PRIMARY KEY (DescriptionID , DescriptionValueID)
)

create table shoppingov2.DescriptionValue(
	
	DescriptionValueID int ,
	Title varchar(200),
	Detail varchar(1000),
	LastModified DateTime,
	CONSTRAINT PK_DescriptionValue PRIMARY KEY (DescriptionValueID)
)



create table shoppingov2.KeyWord(

	keyWordID int primary key,
	keyword varchar(200),
	LastModified DateTime,
	CONSTRAINT PK_DescriptionValue PRIMARY KEY (DescriptionValueID)
) 

create table shoppingov2.ProductKeyword(
	
	ProductID int,
	KeyWordID int,
	LastModified DateTime,
	CONSTRAINT PK_ProductKeyword PRIMARY KEY (ProductID , KeyWordID)
)


create table shoppingov2.Image(
	
	ImageID int,
	Image varchar(200),
	AbsolutePath varchar(1000),
	LastModified DateTime,
	CONSTRAINT PK_ProductKeyword PRIMARY KEY (ImageID)
)


create table shoppingov2.ProductImage(
	
   	ProductID int,
	ImageID int,
	AltText varchar(200),
	LastModified DateTime,
)


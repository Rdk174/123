
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/07/2017 14:18:19
-- Generated from EDMX file: D:\project\mavtozavr\Mavtozavr\ListModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PosListDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_SalesTraidPoints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Sales] DROP CONSTRAINT [FK_SalesTraidPoints];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoicesTraidPoints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Invoices] DROP CONSTRAINT [FK_InvoicesTraidPoints];
GO
IF OBJECT_ID(N'[dbo].[FK_InvoicePositionsInvoices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InvoicePositions] DROP CONSTRAINT [FK_InvoicePositionsInvoices];
GO
IF OBJECT_ID(N'[dbo].[FK_OrgsTraidPoints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TraidPoints] DROP CONSTRAINT [FK_OrgsTraidPoints];
GO
IF OBJECT_ID(N'[dbo].[FK_CitiesTraidPoints]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TraidPoints] DROP CONSTRAINT [FK_CitiesTraidPoints];
GO
IF OBJECT_ID(N'[dbo].[FK_TraidPointsKits]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Kits] DROP CONSTRAINT [FK_TraidPointsKits];
GO
IF OBJECT_ID(N'[dbo].[FK_KitsDevices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices] DROP CONSTRAINT [FK_KitsDevices];
GO
IF OBJECT_ID(N'[dbo].[FK_TabletPCs_inherits_Devices]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices_TabletPCs] DROP CONSTRAINT [FK_TabletPCs_inherits_Devices];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Orgs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orgs];
GO
IF OBJECT_ID(N'[dbo].[Cities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cities];
GO
IF OBJECT_ID(N'[dbo].[InvoicePositions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InvoicePositions];
GO
IF OBJECT_ID(N'[dbo].[TraidPoints]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TraidPoints];
GO
IF OBJECT_ID(N'[dbo].[Invoices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Invoices];
GO
IF OBJECT_ID(N'[dbo].[Sales]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Sales];
GO
IF OBJECT_ID(N'[dbo].[Kits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kits];
GO
IF OBJECT_ID(N'[dbo].[Devices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices];
GO
IF OBJECT_ID(N'[dbo].[Devices_TabletPCs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices_TabletPCs];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Orgs'
CREATE TABLE [dbo].[Orgs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Cities'
CREATE TABLE [dbo].[Cities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'InvoicePositions'
CREATE TABLE [dbo].[InvoicePositions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Product] nvarchar(max)  NOT NULL,
    [Price] float  NOT NULL,
    [Qantity] int  NOT NULL,
    [Barcode] nvarchar(max)  NOT NULL,
    [Invoice_Id] int  NOT NULL
);
GO

-- Creating table 'TraidPoints'
CREATE TABLE [dbo].[TraidPoints] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Kpp] nvarchar(max)  NOT NULL,
    [TraidPointType] int  NOT NULL,
    [Egais] nvarchar(max)  NOT NULL,
    [UTMVersion] nvarchar(max)  NOT NULL,
    [GOSTDate] nvarchar(max)  NOT NULL,
    [PKIDate] nvarchar(max)  NOT NULL,
    [POSVersion] nvarchar(max)  NOT NULL,
    [SyncTime] nvarchar(max)  NOT NULL,
    [POSid] nvarchar(max)  NOT NULL,
    [Comment] nvarchar(max)  NOT NULL,
    [Org_Id] int  NOT NULL,
    [City_Id] int  NOT NULL
);
GO

-- Creating table 'Invoices'
CREATE TABLE [dbo].[Invoices] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Number] nvarchar(max)  NOT NULL,
    [CreatedDate] nvarchar(max)  NOT NULL,
    [SyncTime] nvarchar(max)  NOT NULL,
    [TraidPoint_Id] int  NOT NULL
);
GO

-- Creating table 'Sales'
CREATE TABLE [dbo].[Sales] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SoldTime] nvarchar(max)  NOT NULL,
    [OperationType] int  NOT NULL,
    [Product] nvarchar(max)  NOT NULL,
    [Price] float  NOT NULL,
    [TraidPoint_Id] int  NOT NULL
);
GO

-- Creating table 'Kits'
CREATE TABLE [dbo].[Kits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TraidPoint_Id] int  NOT NULL
);
GO

-- Creating table 'Devices'
CREATE TABLE [dbo].[Devices] (
    [Id] uniqueidentifier  NOT NULL,
    [DeviceType] int  NOT NULL,
    [SerialNumber] nvarchar(max)  NOT NULL,
    [InventoryNumber] nvarchar(max)  NOT NULL,
    [Kits_Id] int  NOT NULL
);
GO

-- Creating table 'Devices_TabletPCs'
CREATE TABLE [dbo].[Devices_TabletPCs] (
    [IpAddress] nvarchar(max)  NOT NULL,
    [IMEI] nvarchar(max)  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Id] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Orgs'
ALTER TABLE [dbo].[Orgs]
ADD CONSTRAINT [PK_Orgs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Cities'
ALTER TABLE [dbo].[Cities]
ADD CONSTRAINT [PK_Cities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InvoicePositions'
ALTER TABLE [dbo].[InvoicePositions]
ADD CONSTRAINT [PK_InvoicePositions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TraidPoints'
ALTER TABLE [dbo].[TraidPoints]
ADD CONSTRAINT [PK_TraidPoints]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [PK_Invoices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [PK_Sales]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Kits'
ALTER TABLE [dbo].[Kits]
ADD CONSTRAINT [PK_Kits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [PK_Devices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Devices_TabletPCs'
ALTER TABLE [dbo].[Devices_TabletPCs]
ADD CONSTRAINT [PK_Devices_TabletPCs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TraidPoint_Id] in table 'Sales'
ALTER TABLE [dbo].[Sales]
ADD CONSTRAINT [FK_SalesTraidPoints]
    FOREIGN KEY ([TraidPoint_Id])
    REFERENCES [dbo].[TraidPoints]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SalesTraidPoints'
CREATE INDEX [IX_FK_SalesTraidPoints]
ON [dbo].[Sales]
    ([TraidPoint_Id]);
GO

-- Creating foreign key on [TraidPoint_Id] in table 'Invoices'
ALTER TABLE [dbo].[Invoices]
ADD CONSTRAINT [FK_InvoicesTraidPoints]
    FOREIGN KEY ([TraidPoint_Id])
    REFERENCES [dbo].[TraidPoints]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoicesTraidPoints'
CREATE INDEX [IX_FK_InvoicesTraidPoints]
ON [dbo].[Invoices]
    ([TraidPoint_Id]);
GO

-- Creating foreign key on [Invoice_Id] in table 'InvoicePositions'
ALTER TABLE [dbo].[InvoicePositions]
ADD CONSTRAINT [FK_InvoicePositionsInvoices]
    FOREIGN KEY ([Invoice_Id])
    REFERENCES [dbo].[Invoices]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InvoicePositionsInvoices'
CREATE INDEX [IX_FK_InvoicePositionsInvoices]
ON [dbo].[InvoicePositions]
    ([Invoice_Id]);
GO

-- Creating foreign key on [Org_Id] in table 'TraidPoints'
ALTER TABLE [dbo].[TraidPoints]
ADD CONSTRAINT [FK_OrgsTraidPoints]
    FOREIGN KEY ([Org_Id])
    REFERENCES [dbo].[Orgs]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrgsTraidPoints'
CREATE INDEX [IX_FK_OrgsTraidPoints]
ON [dbo].[TraidPoints]
    ([Org_Id]);
GO

-- Creating foreign key on [City_Id] in table 'TraidPoints'
ALTER TABLE [dbo].[TraidPoints]
ADD CONSTRAINT [FK_CitiesTraidPoints]
    FOREIGN KEY ([City_Id])
    REFERENCES [dbo].[Cities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CitiesTraidPoints'
CREATE INDEX [IX_FK_CitiesTraidPoints]
ON [dbo].[TraidPoints]
    ([City_Id]);
GO

-- Creating foreign key on [TraidPoint_Id] in table 'Kits'
ALTER TABLE [dbo].[Kits]
ADD CONSTRAINT [FK_TraidPointsKits]
    FOREIGN KEY ([TraidPoint_Id])
    REFERENCES [dbo].[TraidPoints]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TraidPointsKits'
CREATE INDEX [IX_FK_TraidPointsKits]
ON [dbo].[Kits]
    ([TraidPoint_Id]);
GO

-- Creating foreign key on [Kits_Id] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [FK_KitsDevices]
    FOREIGN KEY ([Kits_Id])
    REFERENCES [dbo].[Kits]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KitsDevices'
CREATE INDEX [IX_FK_KitsDevices]
ON [dbo].[Devices]
    ([Kits_Id]);
GO

-- Creating foreign key on [Id] in table 'Devices_TabletPCs'
ALTER TABLE [dbo].[Devices_TabletPCs]
ADD CONSTRAINT [FK_TabletPCs_inherits_Devices]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Devices]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------
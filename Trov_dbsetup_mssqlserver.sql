USE [Trov]
GO

DROP TABLE [dbo].[Items]
CREATE TABLE [dbo].[Items] (
    [Name]        NVARCHAR (255) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [Price]       INT            NOT NULL
);

ALTER TABLE [dbo].[Items]
    ADD CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED ([Name] ASC);

INSERT INTO [dbo].[Items] VALUES ('Car', 'Fancy Car', 120000);
INSERT INTO [dbo].[Items] VALUES ('Plane', 'Fancy Plane', 3000000);
INSERT INTO [dbo].[Items] VALUES ('Ring', 'Fancy Ring', 45000);

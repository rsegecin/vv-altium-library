﻿CREATE VIEW [dbo].[Sensor - Pressure]
AS
     SELECT PartId,
            Value,
            Comment,
            MfrPartNo AS [Part Number],
            Manufacturer,
            Description,
            Supplier1 AS [Supplier 1],
            Supplier1PartNo AS [Supplier Part Number 1],
            FootprintRef AS [Footprint Ref],
            FootprintPath AS [Footprint Path],
            SymbolRef AS [Library Ref],
            SymbolPath AS [Library Path],
            ComponentLink1Description,
            ComponentLink1URL,
            ComponentLink2Description,
            ComponentLink2URL,
            ComponentLink3Description,
            ComponentLink3URL,
            Supplier2 AS [Supplier 2],
            Supplier2PartNo AS [Supplier Part Number 2],
            FootprintRef2 AS [Footprint Ref 2],
            FootprintPath2 AS [Footprint Path 2],
            FootprintRef3 AS [Footprint Ref 3],
            FootprintPath3 AS [Footprint Path 3],
            DevicePackage AS [Device Package],
            Price,
            Type,
            Series,
            TemperatureRange AS [Operating Temperature],
            PressureType AS [Pressure Type],
            OperatingPressure AS [Operating Pressure],
            OutputType AS [Output Type],
            Output,
            Accuracy,
            Voltage AS [Voltage - Supply],
            PortSize AS [Port Size],
            PortStyle AS [Port Style],
            Features,
            MaximumPressure AS [Maximum Pressure]
     FROM dbo.Components
     WHERE(ComponentType = 'SENS')
          AND (ComponentSubType = 'PRESSURE');

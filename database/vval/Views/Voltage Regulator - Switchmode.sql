﻿CREATE VIEW [dbo].[Voltage Regulator - Switchmode]
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
            [Function],
            TemperatureRange AS [Operating Temperature],
            OutputConfiguration AS [Output Configuration],
            Topology,
            OutputType AS [Output Type],
            NumberOfOutputs AS [Number Of Outputs],
            VoltageInputMin AS [Voltage - Input (Min)],
            VoltageInputMax AS [Voltage - Input (Max)],
            VoltageOutput AS [Voltage - Output (Min/Fixed)],
            VoltageOutputMax AS [Voltage - Output (Max)],
            CurrentOutput AS [Current Output],
            FrequencySwitching AS [Frequency - Switching],
            SynchronousRectifier AS [Synchronous Rectifier]
     FROM dbo.Components
     WHERE(ComponentType = 'VREG')
          AND (ComponentSubType = 'SMPS');

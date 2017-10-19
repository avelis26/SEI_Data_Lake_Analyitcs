
CREATE VIEW [Src].[VwPOSAmexCardSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,4) AS DayNumber,
SUBSTRING([Column 0],16,4) AS ShiftNumber,
SUBSTRING([Column 0],20,14) AS TransactionDate,
SUBSTRING([Column 0],34,19) AS CardAccountNumber,
SUBSTRING([Column 0],53,6) AS EmployeeNumber,
SUBSTRING([Column 0],59,11) AS SequenceNumber,
SUBSTRING([Column 0],70,3) AS DeviceNumber,
SUBSTRING([Column 0],73,9) AS ApprovalCode,
SUBSTRING([Column 0],82,4) AS ResponseCode,
SUBSTRING([Column 0],86,6) AS STTNumber,
SUBSTRING([Column 0],92,6) AS LoadAmount,
SUBSTRING([Column 0],98,6) AS FeeAmount,
SUBSTRING([Column 0],104,6) AS CardBalance,
SUBSTRING([Column 0],110,1) AS VoidFlag,
SUBSTRING([Column 0],111,6) AS EmbeddedFee,
SUBSTRING([Column 0],117,6) AS VendorFee
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='120'
  And SUBSTRING([Column 0],1,2) = 'D1';


CREATE VIEW [Src].[VwPOSComments] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId          ,
SUBSTRING([Column 0],3,6) AS StoreNumber         ,
SUBSTRING([Column 0],9,3) AS TransactionType       ,
SUBSTRING([Column 0],12,6) AS DayNumber          ,
SUBSTRING([Column 0],18,6) AS ShiftNumber       ,
SUBSTRING([Column 0],24,11) AS TransactionUID       ,
SUBSTRING([Column 0],35,11) AS SequenceNumbar    ,
SUBSTRING([Column 0],46,80) AS Comments         ,
SUBSTRING([Column 0],126,6) AS RecordType                     
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='127'
  And SUBSTRING([Column 0],1,2) = 'D1';


CREATE VIEW [Src].[VwPOSConfiguration] AS Select 
 SUBSTRING([Column 0],1,2) AS RecordId          ,
 SUBSTRING([Column 0],3,6) AS StoreNumber         ,
 SUBSTRING([Column 0],9,3) AS TransactionType       ,
SUBSTRING([Column 0],12,6) AS TerminalNumber    ,
SUBSTRING([Column 0],18,6) AS Scanner         ,
SUBSTRING([Column 0],24,6) AS MsrPort        ,
SUBSTRING([Column 0],30,6) AS CustomerDisplayPort    ,
SUBSTRING([Column 0],36,6) AS PinPadPort    ,
SUBSTRING([Column 0],42,6) AS ForceDrop      ,
SUBSTRING([Column 0],48,1) AS IsCloseDrawer    ,
SUBSTRING([Column 0],49,1) AS IsShowSafeDrop  ,
SUBSTRING([Column 0],50,1) AS IsOpenDrawer ,
SUBSTRING([Column 0],51,1) AS IsShiftSignOn    ,
SUBSTRING([Column 0],52,1) AS IsPumpInterface  ,
SUBSTRING([Column 0],53,1) AS IsAuditEOS      ,
SUBSTRING([Column 0],54,1) AS IsRevenueEOS      ,
SUBSTRING([Column 0],55,1) AS IsNetworkBatchEOS      ,
SUBSTRING([Column 0],56,1) AS IsAcceptEOS      ,
SUBSTRING([Column 0],57,1) AS IsAuditEOD      ,
SUBSTRING([Column 0],58,1) AS IsRevenueEOD      ,
SUBSTRING([Column 0],59,1) AS IsNetworkEOD      ,
SUBSTRING([Column 0],60,1) AS IsAcceptEOD      ,
SUBSTRING([Column 0],61,5) AS TerminalType   ,
SUBSTRING([Column 0],66,6) AS AlarmDropAmount                                   
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='135'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSCouponReject] AS Select 
SUBSTRING([Column 0],1,2)  AS  RecordId
,SUBSTRING([Column 0],3,6)  AS  StoreNumber
,SUBSTRING([Column 0],9,3)  AS  TransactionType
,SUBSTRING([Column 0],12,9)  AS  DayNumber
,SUBSTRING([Column 0],21,6)  AS  ShiftNumber
,SUBSTRING([Column 0],27,9)  AS  TransactionUID
,SUBSTRING([Column 0],36,9)  AS  SequenceNumber
,SUBSTRING([Column 0],45,22)  AS  PLUNumber
,SUBSTRING([Column 0],67,15)  AS  PrimaryCompany
,SUBSTRING([Column 0],82,6)  AS  OfferCode
,SUBSTRING([Column 0],88,9)  AS  SaveValue
,SUBSTRING([Column 0],97,9)  AS  PrimaryPurchaseRequirement
,SUBSTRING([Column 0],106,1)  AS  PrimaryPurchaseRequirementCode
,SUBSTRING([Column 0],107,3)  AS  PrimaryPurchaseFamilyCode
,SUBSTRING([Column 0],110,1)  AS  AdditionalPurchaseRulesCode
,SUBSTRING([Column 0],111,9)  AS  SecondPurchaseRequirement
,SUBSTRING([Column 0],120,1)  AS  SecondPurchaseRequirementCode
,SUBSTRING([Column 0],121,3)  AS  SecondPurchaseFamilyCode
,SUBSTRING([Column 0],124,15)  AS  SecondCompany
,SUBSTRING([Column 0],139,9)  AS  ThirdPurchaseRequirement
,SUBSTRING([Column 0],148,1)  AS  ThirdPurchaseRequirementCode
,SUBSTRING([Column 0],149,3)  AS  ThirdPurchaseFamilyCode
,SUBSTRING([Column 0],152,15)  AS  ThirdCompany
,SUBSTRING([Column 0],167,6)  AS  ExpirationDate
,SUBSTRING([Column 0],173,6)  AS  StartDate
,SUBSTRING([Column 0],179,15)  AS  SerialNumber
,SUBSTRING([Column 0],194,15)  AS  RetailerID
,SUBSTRING([Column 0],209,1)  AS  SaveValueCode
,SUBSTRING([Column 0],210,1)  AS  DiscountedItem
,SUBSTRING([Column 0],211,1)  AS  IsStoreCoupon
,SUBSTRING([Column 0],212,1)  AS  IsMultiple
,SUBSTRING([Column 0],213,80)  AS  RejectReason
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='463'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSCouponSales] AS Select 
SUBSTRING([Column 0],1,2)  AS  RecordId
,SUBSTRING([Column 0],3,6)  AS  StoreNumber
,SUBSTRING([Column 0],9,3)  AS  TransactionType
,SUBSTRING([Column 0],12,9)  AS  DayNumber
,SUBSTRING([Column 0],21,6)  AS  ShiftNumber
,SUBSTRING([Column 0],27,9)  AS  TransactionUID
,SUBSTRING([Column 0],36,9)  AS  SequenceNumber
,SUBSTRING([Column 0],45,9)  AS  CouponId
,SUBSTRING([Column 0],54,18)  AS  CouponDescription
,SUBSTRING([Column 0],72,22)  AS  PLUNumber
,SUBSTRING([Column 0],94,2)  AS  CouponType
,SUBSTRING([Column 0],96,2)  AS  CouponValueCode
,SUBSTRING([Column 0],98,9)  AS  EntryMethod
,SUBSTRING([Column 0],107,9)  AS  HostMediaNumber
,SUBSTRING([Column 0],116,9)  AS  RecordAmount
,SUBSTRING([Column 0],125,9)  AS  RecordCount
,SUBSTRING([Column 0],134,1)  AS  ErrorCorrectionFlag
,SUBSTRING([Column 0],135,1)  AS  VoidFlag
,SUBSTRING([Column 0],136,1)  AS  TaxableFlag
,SUBSTRING([Column 0],137,1)  AS  TaxOverrideFlag
,SUBSTRING([Column 0],138,1)  AS  AnnulFlag
,SUBSTRING([Column 0],139,15)  AS  PrimaryCompanyId
,SUBSTRING([Column 0],154,6)  AS  OfferCode
,SUBSTRING([Column 0],160,9)  AS  SaveValue
,SUBSTRING([Column 0],169,9)  AS  PrimaryPurchaseRequirement
,SUBSTRING([Column 0],178,1)  AS  PrimaryPurchaseRequirementCode
,SUBSTRING([Column 0],179,3)  AS  PrimaryPurchaseFamilyCode
,SUBSTRING([Column 0],182,1)  AS  AdditionalPurchaseRulesCode
,SUBSTRING([Column 0],183,9)  AS  SecondPurchaseRequirement
,SUBSTRING([Column 0],192,1)  AS  SecondPurchaseRequirementCode
,SUBSTRING([Column 0],193,3)  AS  SecondPurchaseFamilyCode
,SUBSTRING([Column 0],196,15)  AS  SecondCompanyId
,SUBSTRING([Column 0],211,9)  AS  ThirdPurchaseRequirement
,SUBSTRING([Column 0],220,1)  AS  ThirdPurchaseRequirementCode
,SUBSTRING([Column 0],221,3)  AS  ThirdPurchaseFamilyCode
,SUBSTRING([Column 0],224,15)  AS  ThirdCompanyId
,SUBSTRING([Column 0],239,6)  AS  ExpirationDate
,SUBSTRING([Column 0],245,6)  AS  StartDate
,SUBSTRING([Column 0],251,15)  AS  SerialNumber
,SUBSTRING([Column 0],266,15)  AS  RetailerId
,SUBSTRING([Column 0],281,1)  AS  SaveValueCode
,SUBSTRING([Column 0],282,1)  AS  DiscountedItem
,SUBSTRING([Column 0],283,1)  AS  StoreCouponIndicator
,SUBSTRING([Column 0],284,1)  AS  NoMultiplyFlag
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='409'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSDepartmentSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId          ,
SUBSTRING([Column 0],3,6) AS StoreNumber         ,
SUBSTRING([Column 0],9,3) AS TransactionType       ,
SUBSTRING([Column 0],12,6) AS DayNumber         ,
SUBSTRING([Column 0],18,6) AS ShiftNumber        ,
SUBSTRING([Column 0],24,11) AS TransactionUID       ,
SUBSTRING([Column 0],35,11) AS SequenceNumber    ,
SUBSTRING([Column 0],46,6) AS DepartmentNumber        ,
SUBSTRING([Column 0],52,6) AS SubDepartment        ,
SUBSTRING([Column 0],58,6) AS RecordType     ,
SUBSTRING([Column 0],64,6) AS RecordCount    ,
SUBSTRING([Column 0],70,11) AS RecordAmount   ,
SUBSTRING([Column 0],81,1) AS ErrorCorrectionFlag ,
SUBSTRING([Column 0],82,1) AS VoidFlag       ,
SUBSTRING([Column 0],83,1) AS TaxableFlag    ,
SUBSTRING([Column 0],84,1) AS PriceOverideFlag,
SUBSTRING([Column 0],85,1) AS TaxOverideFlag,
SUBSTRING([Column 0],86,14) AS HostItemId                         
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='123'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSFuelSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,6) AS RecordType,
SUBSTRING([Column 0],52,6) AS DispenserNumber,
SUBSTRING([Column 0],58,6) AS SaleProductId,
SUBSTRING([Column 0],64,6) AS HoseNumber,
SUBSTRING([Column 0],70,6) AS MediaNumber,
SUBSTRING([Column 0],76,6) AS ServiceLevelId,
SUBSTRING([Column 0],82,11) AS PricePerUnit,
SUBSTRING([Column 0],93,11) AS SaleVolume,
SUBSTRING([Column 0],104,11) AS CreePage,
SUBSTRING([Column 0],115,11) AS RecordAmount,
SUBSTRING([Column 0],126,6) AS FuelPriceTable,
SUBSTRING([Column 0],132,6) AS FuelPriceGroup,
SUBSTRING([Column 0],138,6) AS PrimaryTankNumber,
SUBSTRING([Column 0],144,11) AS PrimaryTankVolume,
SUBSTRING([Column 0],155,6) AS SecondaryTankNumber,
SUBSTRING([Column 0],161,11) AS SecondaryTankVolume,
SUBSTRING([Column 0],172,1) AS ManualFlag,
SUBSTRING([Column 0],173,1) AS AutoFinalFlag,
SUBSTRING([Column 0],174,6) AS DeviceType,
SUBSTRING([Column 0],180,1) AS ErrorCorrectionFlag,
SUBSTRING([Column 0],181,1) AS VoidFlag,
SUBSTRING([Column 0],182,1) AS PrepayFlag,
SUBSTRING([Column 0],183,11) AS MediaAdjustAmount,
SUBSTRING([Column 0],194,11) AS AdjustPricePerUnit
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='130';

CREATE VIEW [Src].[VwPOSICLoadSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,11) AS LoadSaleSequenceNumber,
SUBSTRING([Column 0],57,4) AS RecordType,
SUBSTRING([Column 0],61,6) AS LoadAmount,
SUBSTRING([Column 0],67,6) AS BalanceAmount,
SUBSTRING([Column 0],73,19) AS AccountNumber,
SUBSTRING([Column 0],92,6) AS STTNumber,
SUBSTRING([Column 0],98,6) AS AuthorizationTime,
SUBSTRING([Column 0],104,12) AS AuthorizationNumber,
SUBSTRING([Column 0],116,6) AS AuthorizationCode,
SUBSTRING([Column 0],122,12) AS NetworkTerminal,
SUBSTRING([Column 0],134,2) AS NetworkLocalTerminal,
SUBSTRING([Column 0],136,14) AS PLUNumber,
SUBSTRING([Column 0],150,11) AS ItemId,
SUBSTRING([Column 0],161,11) AS ItmCostAmount,
SUBSTRING([Column 0],172,11) AS VendorId,
SUBSTRING([Column 0],183,6) AS FeeAmount,
SUBSTRING([Column 0],189,6) AS FeeAmountEmbedded,
SUBSTRING([Column 0],195,6) AS FeeAmountVendor                            
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='133'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSItemSales] AS SELECT
			SUBSTRING([Column 0],1,2) AS RecordID       
		,	SUBSTRING([Column 0],3,6) AS StoreNumber
		,	SUBSTRING([Column 0],9,3) AS TransactionType
		,	SUBSTRING([Column 0],12,6) AS DayNumber
		,	SUBSTRING([Column 0],18,6) AS ShiftNumber
		,	SUBSTRING([Column 0],24,11) AS TransactionUID
		,	SUBSTRING([Column 0],35,11) AS SequenceNumber
		,	SUBSTRING([Column 0],46,11) AS ProductNumber
		,	SUBSTRING([Column 0],57,14) AS PLUNumber      
		,	SUBSTRING([Column 0],71,11) AS RecordAmount   
		,	SUBSTRING([Column 0],82,6) AS RecordCount    
		,	SUBSTRING([Column 0],88,6) AS RecordType     
		,	SUBSTRING([Column 0],94,1) AS SizeIndx       
		,	SUBSTRING([Column 0],95,1) AS ErrorCorrectionFlag 
		,	SUBSTRING([Column 0],96,1) AS PriceOverideFlag
		,	SUBSTRING([Column 0],97,1) AS TaxableFlag    
		,	SUBSTRING([Column 0],98,1) AS VoidFlag      
		,	SUBSTRING([Column 0],99,1) AS RecommendedFlag
		,	SUBSTRING([Column 0],100,6) AS PriceMultiple  
		,	SUBSTRING([Column 0],106,6) AS CarryStatus    
		,	SUBSTRING([Column 0],112,1) AS TaxOverideFlag 
		,	SUBSTRING([Column 0],113,2) AS PromotionCount     
		,	SUBSTRING([Column 0],115,4) AS SalesPrice     
		,	SUBSTRING([Column 0],119,4) AS MUBasePrice   
		,	SUBSTRING([Column 0],123,14) AS HostItemId   
		,	SUBSTRING([Column 0],137,10) AS CouponCount   
FROM [Ext].[Pos]
WHERE SUBSTRING([Column 0],9,3)='122'And 
SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSMediaSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,6) AS MediaNumber,
SUBSTRING([Column 0],52,11) AS NetworkMediaSequenceNumber,
SUBSTRING([Column 0],63,2) AS MediaType,
SUBSTRING([Column 0],65,6) AS RecordCount,
SUBSTRING([Column 0],71,11) AS RecordAmount,
SUBSTRING([Column 0],82,6) AS RecordType,
SUBSTRING([Column 0],88,1) AS ErrorCorrectionFlag,
SUBSTRING([Column 0],89,1) AS VoidFlag,
SUBSTRING([Column 0],90,5) AS ExchangeRate,
SUBSTRING([Column 0],95,11) AS ForeignAmount       
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='124'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSMoneyOrderSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,6) AS MoneyOrderSaleAmount,
SUBSTRING([Column 0],52,4) AS MoneyOrderFeeAmount,
SUBSTRING([Column 0],56,12) AS MoneyOrderSerialNumber,
SUBSTRING([Column 0],68,10) AS MoneyOrderDepartmentSaleSeqNumber,
SUBSTRING([Column 0],78,10) AS MoneyOrderDepartmentFeeNumber,
SUBSTRING([Column 0],88,10) AS MoneyOrderPrintedFlg  
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='140';

CREATE VIEW [Src].[VwPOSNetworkSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,4) AS OwnerSequenceNumber,
SUBSTRING([Column 0],50,40) AS AccountNumber,
SUBSTRING([Column 0],90,10) AS BatchNumber,
SUBSTRING([Column 0],100,10) AS BatchSequenceNumber,
SUBSTRING([Column 0],110,4) AS CardTransactionFee,
SUBSTRING([Column 0],114,6) AS RecordType,
SUBSTRING([Column 0],120,12) AS ReponseCodeText,
SUBSTRING([Column 0],132,12) AS AuthorizationNumber,
SUBSTRING([Column 0],144,6) AS AuthorizationCode1,
SUBSTRING([Column 0],150,6) AS AuthorizationCode2,
SUBSTRING([Column 0],156,26) AS CustomerName,
SUBSTRING([Column 0],182,10) AS EntryType,
SUBSTRING([Column 0],192,4) AS ExpirationDate,
SUBSTRING([Column 0],196,6) AS AuthorizationTime,
SUBSTRING([Column 0],202,10) AS VehicleNumber,
SUBSTRING([Column 0],212,10) AS OdometerReading,
SUBSTRING([Column 0],222,10) AS DriverNumber,
SUBSTRING([Column 0],232,14) AS CustomizedReferenceNumber,
SUBSTRING([Column 0],246,3) AS AccountType,
SUBSTRING([Column 0],249,6) AS AuthorizationTraceId,
SUBSTRING([Column 0],255,20) AS AuthorizationPartyName,
SUBSTRING([Column 0],275,6) AS STTNumber,
SUBSTRING([Column 0],281,4) AS BalanceAmount,
SUBSTRING([Column 0],285,40) AS MaskedAccountNumber,
SUBSTRING([Column 0],325,9) AS RoutingNumber,
SUBSTRING([Column 0],334,10) AS CheckNumber,
SUBSTRING([Column 0],344,10) AS CardType,
SUBSTRING([Column 0],354,11) AS Amount                                                                       
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='139'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSPaidInByReason] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,1) AS ErrorCorrectionFlag,
SUBSTRING([Column 0],47,11) AS Amount,
SUBSTRING([Column 0],58,6) AS MediaNumber,
SUBSTRING([Column 0],64,6) AS ReasonCode,
SUBSTRING([Column 0],70,6) AS RecordType,
SUBSTRING([Column 0],76,6) AS TerminalNumber,
SUBSTRING([Column 0],82,1) AS VoidFlag                       
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='128'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSPaidOutByReason] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,1) AS ErrorCorrectionFlag,
SUBSTRING([Column 0],47,11) AS Amount,
SUBSTRING([Column 0],58,6) AS MediaNumber,
SUBSTRING([Column 0],64,6) AS ReasonCode,
SUBSTRING([Column 0],70,6) AS RecordType,
SUBSTRING([Column 0],76,6) AS TerminalNumber,
SUBSTRING([Column 0],82,1) AS VoidFlag                       
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='129'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSPromotionSales] AS Select 
SUBSTRING([Column 0],1,2) AS		RecordId	,
SUBSTRING([Column 0],3,6) AS		StoreNumber	,
SUBSTRING([Column 0],9,3) AS		TransactionType	,
SUBSTRING([Column 0],12,6) AS		DayNumber	,
SUBSTRING([Column 0],18,6) AS		ShiftNumber	,
SUBSTRING([Column 0],24,11) AS		TransactionUID	,
SUBSTRING([Column 0],35,11) AS		SequenceNumber	,
SUBSTRING([Column 0],46,6) AS		RecordType	,
SUBSTRING([Column 0],52,1) AS		ErrorCorrectionFlag	,
SUBSTRING([Column 0],53,1) AS		VoidFlag	,
SUBSTRING([Column 0],54,1) AS		TaxableFlag	,
SUBSTRING([Column 0],55,1) AS		TaxOverideFlag	,
SUBSTRING([Column 0],56,6) AS		PromotionId	,
SUBSTRING([Column 0],62,6) AS		RecordCount	,
SUBSTRING([Column 0],68,6) AS		RecordAmount	,
SUBSTRING([Column 0],74,6) AS		PromotionProductCode	,
SUBSTRING([Column 0],80,6) AS		DepartmentNumber	,
SUBSTRING([Column 0],86,1) AS	TAX_TBL_1       ,
SUBSTRING([Column 0],87,1) AS	TAX_TBL_2       ,
SUBSTRING([Column 0],88,1) AS	TAX_TBL_3       ,
SUBSTRING([Column 0],89,1) AS	TAX_TBL_4       ,
SUBSTRING([Column 0],90,1) AS	TAX_TBL_5       ,
SUBSTRING([Column 0],91,1) AS	TAX_TBL_6       ,
SUBSTRING([Column 0],92,2) AS	ALLOW_FOOD_STAMP                               
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='136'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSPromotionSalesDetails] AS Select 
SUBSTRING([Column 0],1,2) AS		RecordId	,
SUBSTRING([Column 0],3,6) AS		StoreNumber	,
SUBSTRING([Column 0],9,3) AS		TransactionType	,
SUBSTRING([Column 0],12,6) AS		DayNumber	,
SUBSTRING([Column 0],18,6) AS		ShiftNumber	,
SUBSTRING([Column 0],24,11) AS		TransactionUID	,
SUBSTRING([Column 0],35,11) AS		SequenceNumber	,
SUBSTRING([Column 0],46,11) AS		OwnerSequenceNumber	,
SUBSTRING([Column 0],57,11) AS		PromotionSequenceNumber	,
SUBSTRING([Column 0],68,6) AS		RecordAmount	,
SUBSTRING([Column 0],74,6) AS		RecordCount	,
SUBSTRING([Column 0],80,4) AS		PromotionGroupId	,
SUBSTRING([Column 0],84,4) AS		ThresholdQty	                               
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='137'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSSafeActivity] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId          ,
SUBSTRING([Column 0],3,6) AS StoreNumber         ,
SUBSTRING([Column 0],9,3) AS TransactionType       ,
SUBSTRING([Column 0],12,6) AS DayNumber          ,
SUBSTRING([Column 0],18,6) AS ShiftNumber        ,
SUBSTRING([Column 0],24,11) AS TransactionUID       ,
SUBSTRING([Column 0],35,11) AS SequenceNumber     ,
SUBSTRING([Column 0],46,1) AS SafeActivityType   ,
SUBSTRING([Column 0],47,6) AS SafeMediaNumber        ,
SUBSTRING([Column 0],53,2) AS SafeMediaType      ,
SUBSTRING([Column 0],55,11) AS POSAmount      ,
SUBSTRING([Column 0],66,11) AS SafeAmount     ,
SUBSTRING([Column 0],77,11) AS ForeignAmount  ,
SUBSTRING([Column 0],88,6) AS EnvelopeNumber     ,
SUBSTRING([Column 0],94,1) AS CommunicationStatus
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='411';

CREATE VIEW [Src].[VwPOSSalesReject] AS Select 
SUBSTRING([Column 0],1,2)  AS  RecordId
,SUBSTRING([Column 0],3,6)  AS  StoreNumber
,SUBSTRING([Column 0],9,3)  AS  TransactionType
,SUBSTRING([Column 0],12,9)  AS  DayNumber
,SUBSTRING([Column 0],21,6)  AS  ShiftNumber
,SUBSTRING([Column 0],27,9)  AS  TransactionUID
,SUBSTRING([Column 0],36,9)  AS  SequenceNumber
,SUBSTRING([Column 0],45,9)  AS  ItemId
,SUBSTRING([Column 0],54,14)  AS  PLUNumber
,SUBSTRING([Column 0],68,6)  AS  BestBeforeDate
,SUBSTRING([Column 0],74,6)  AS  SellByDate
,SUBSTRING([Column 0],80,6)  AS  ExpirationDate
,SUBSTRING([Column 0],86,10)  AS  ExpirationDateTime
,SUBSTRING([Column 0],96,80)  AS  RejectedReason
from Ext.Pos
 where SUBSTRING([Column 0],9,3)='462'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSSaleTransactionSummary] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,8) AS TransactionDate,
SUBSTRING([Column 0],20,11) AS TransactionHour,
SUBSTRING([Column 0],31,11) AS MerchandiseAmount,
SUBSTRING([Column 0],42,11) AS GasSalesAmount,
SUBSTRING([Column 0],53,11) AS MerchandiseCount,
SUBSTRING([Column 0],64,11) AS GasSaleCount,
SUBSTRING([Column 0],75,11) AS POSCount,
SUBSTRING([Column 0],86,11) AS CRINDCount,
SUBSTRING([Column 0],97,1) AS PeriodCode,
SUBSTRING([Column 0],98,8) AS ExpiryDate,
SUBSTRING([Column 0],106,11) AS MerchandiseUnits        
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='138'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSShiftStatus] AS SELECT
			SUBSTRING([Column 0],1,2) AS RecordID 
		,	SUBSTRING([Column 0],3,6) AS StoreNumber
		,	SUBSTRING([Column 0],9,3) AS TransactionType
		,	SUBSTRING([Column 0],12,1) AS BackOfficeDayStatus
		,	SUBSTRING([Column 0],13,1) AS POSPostingDayStatus
		,	SUBSTRING([Column 0],14,6) AS DayNumber
		,	SUBSTRING([Column 0],20,6) AS ShiftNumber
		,	SUBSTRING([Column 0],26,8) AS BusinessDate
		,	SUBSTRING([Column 0],34,14) AS ShiftStartDate      
		,	SUBSTRING([Column 0],48,14) AS ShiftEndDate       
FROM Ext.Pos
WHERE SUBSTRING([Column 0],9,3)='131'
AND SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSStoreEmployeeFile] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS EmployeeNumber,
SUBSTRING([Column 0],18,30) AS EmployeeName,
SUBSTRING([Column 0],48,8) AS Password,
SUBSTRING([Column 0],56,8) AS ClassId,
SUBSTRING([Column 0],64,1) AS SecurityLevel,
SUBSTRING([Column 0],65,9) AS SSN,
SUBSTRING([Column 0],74,14) AS PasswordChangeDate,
SUBSTRING([Column 0],88,8) AS Password2,
SUBSTRING([Column 0],96,8) AS Password3,
SUBSTRING([Column 0],104,8) AS Password4,
SUBSTRING([Column 0],112,8) AS Password5,
SUBSTRING([Column 0],120,8) AS Password6,
SUBSTRING([Column 0],128,14) AS LockoutDate                            
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='134'
  And SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSTaxSales] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS DayNumber,
SUBSTRING([Column 0],18,6) AS ShiftNumber,
SUBSTRING([Column 0],24,11) AS TransactionUID,
SUBSTRING([Column 0],35,11) AS SequenceNumber,
SUBSTRING([Column 0],46,1) AS ErrorCorrectionFlag,
SUBSTRING([Column 0],47,6) AS RecordType,
SUBSTRING([Column 0],53,11) AS RecordAmount,
SUBSTRING([Column 0],64,6) AS TaxTable,
SUBSTRING([Column 0],70,1) AS IsVoid,
SUBSTRING([Column 0],71,1) AS IsDeduct         
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='125'
  And SUBSTRING([Column 0],1,2) = 'D1';


CREATE VIEW [Src].[VwPOSTransactionHeader] AS SELECT
		RTRIM(LTRIM(SUBSTRING([Column 0],1,2))) AS RecordId          
	,	RTRIM(LTRIM(SUBSTRING([Column 0],3,6))) AS StoreNumber       
	,	RTRIM(LTRIM(SUBSTRING([Column 0],9,3))) AS TransactionType       
	,	RTRIM(LTRIM(SUBSTRING([Column 0],12,6))) AS DayNumber          
	,	RTRIM(LTRIM(SUBSTRING([Column 0],18,6))) AS ShiftNumber       
	,	RTRIM(LTRIM(SUBSTRING([Column 0],24,11))) AS TransactionUID       
	,	RTRIM(LTRIM(SUBSTRING([Column 0],35,1))) AS Aborted   
	,	RTRIM(LTRIM(SUBSTRING([Column 0],36,6))) AS DeviceNumber     
	,	RTRIM(LTRIM(SUBSTRING([Column 0],42,6))) AS DeviceType     
	,	RTRIM(LTRIM(SUBSTRING([Column 0],48,6))) AS EmployeeNumber   
	,	RTRIM(LTRIM(SUBSTRING([Column 0],54,8))) AS EndDate        
	,	RTRIM(LTRIM(SUBSTRING([Column 0],62,6))) AS EndTime        
	,	RTRIM(LTRIM(SUBSTRING([Column 0],68,8))) AS StartDate      
	,	RTRIM(LTRIM(SUBSTRING([Column 0],76,6))) AS StartTime      
	,	RTRIM(LTRIM(SUBSTRING([Column 0],82,1))) AS [Status]
	,	RTRIM(LTRIM(SUBSTRING([Column 0],83,11))) AS TotalAmount
	,	RTRIM(LTRIM(SUBSTRING([Column 0],94,6))) AS TransactionCode  
	,	RTRIM(LTRIM(SUBSTRING([Column 0],100,11))) AS TransactionSequence          
	,	RTRIM(LTRIM(SUBSTRING([Column 0],111,19))) AS "7RewardMemberID"
FROM Ext.Pos
WHERE SUBSTRING([Column 0],9,3)='121'
AND SUBSTRING([Column 0],1,2) = 'D1';

CREATE VIEW [Src].[VwPOSTransactionType] AS Select 
SUBSTRING([Column 0],1,2) AS RecordId,
SUBSTRING([Column 0],3,6) AS StoreNumber,
SUBSTRING([Column 0],9,3) AS TransactionType,
SUBSTRING([Column 0],12,6) AS TransactionCode,
SUBSTRING([Column 0],18,20) AS TransactionDescription,
SUBSTRING([Column 0],38,6) AS AddOrSubstruct
 from Ext.Pos
 where SUBSTRING([Column 0],9,3)='132'
  And SUBSTRING([Column 0],1,2) = 'D1';




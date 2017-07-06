using Mavtozavr.Attributes;

public enum DeviceTypes
{
    Unknown = 0,
    [StringValue("Планшет")]
    TabletPC = 1,
    [StringValue("Сканер ШК")]
    BarcodeScaner = 2,
    [StringValue("Фискальный регистратор")]
    FiscalPrinter = 3,
    [StringValue("USB-hub")]
    UsbHub = 4
}
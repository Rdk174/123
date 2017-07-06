using Mavtozavr.Attributes;

public enum OperationTypes
{
    Unknown = 0,
    [StringValue("Продажа")]
    Sale = 1,
    [StringValue("Возврат")]
    Return = 2
}
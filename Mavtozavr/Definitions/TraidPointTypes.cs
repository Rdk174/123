using Mavtozavr.Attributes;

public enum TraidPointsTypes
{
    Unknown = 0,
    [StringValue("Магазин")]
    Shop = 1,
    [StringValue("Кафе")]
    Cafe = 2
}
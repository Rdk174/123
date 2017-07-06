using Mavtozavr.Attributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mavtozavr.Extensions
{
    public static class EnumExtension
    {
        public static string GetStringValue(this Enum @enum)
        {
            if (@enum.GetType().IsEnum == false)
                throw new ArgumentOutOfRangeException(nameof(@enum), "member is not enum");

            var field = @enum.GetType().GetField(@enum.ToString());
            if (field == null)
                return null;

            var customAttributes =
                (StringValueAttribute[])field.GetCustomAttributes(typeof(StringValueAttribute), false);

            return customAttributes.Length > 0
                ? customAttributes[0].Value
                : @enum.ToString();
        }
    }
}

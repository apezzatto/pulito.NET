using System;

namespace MaryHelp.Util
{
    public static class Utilities
    {
        public static double ConvertTimeBase60To100(double hour)
        {
            double hrReturn;
            int result;

            if (!int.TryParse(hour.ToString(), out result))
            {
                string minutesBase100 = hour.ToString().Substring(hour.ToString().IndexOf('.'));
                minutesBase100 = ((Convert.ToDouble(minutesBase100) / 60) * 100).ToString();

                hrReturn = Convert.ToDouble(hour.ToString().Substring(0, hour.ToString().IndexOf('.')) + minutesBase100.Substring(minutesBase100.IndexOf('.')));
            }
            else
                hrReturn = hour;

            return hrReturn;
        }

        public static double ConvertTimeBase100To60(double hour)
        {
            double hrReturn;
            int result;

            if (!int.TryParse(hour.ToString(), out result))
            {
                string minutesBase60 = hour.ToString().Substring(hour.ToString().IndexOf('.'));
                minutesBase60 = ((Convert.ToDouble(minutesBase60) * 60) / 100).ToString();

                hrReturn = Convert.ToDouble(hour.ToString().Substring(0, hour.ToString().IndexOf('.')) + minutesBase60.Substring(minutesBase60.IndexOf('.')));
            }
            else
                hrReturn = hour;

            return hrReturn;
        }
    }
}

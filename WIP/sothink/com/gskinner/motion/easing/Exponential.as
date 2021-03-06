﻿package com.gskinner.motion.easing
{

    public class Exponential extends Object
    {

        public function Exponential()
        {
            return;
        }// end function

        public static function easeIn(param1:Number, param2:Number, param3:Number, param4:Number) : Number
        {
            return param1 == 0 ? (0) : (Math.pow(2, 10 * (param1 - 1)));
        }// end function

        public static function easeOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
        {
            return param1 == 1 ? (1) : (1 - Math.pow(2, -10 * param1));
        }// end function

        public static function easeInOut(param1:Number, param2:Number, param3:Number, param4:Number) : Number
        {
            if (param1 == 0 || param1 == 1)
            {
                return param1;
            }
            var _loc_5:* = param1 * 2 - 1;
            param1 = param1 * 2 - 1;
            if (_loc_5 < 0)
            {
                return 0.5 * Math.pow(2, 10 * param1);
            }
            return 1 - 0.5 * Math.pow(2, -10 * param1);
        }// end function

    }
}

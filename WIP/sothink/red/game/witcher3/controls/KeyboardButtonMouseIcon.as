﻿package red.game.witcher3.controls
{
    import flash.display.*;
    import red.core.constants.*;

    public class KeyboardButtonMouseIcon extends MovieClip
    {
        private const LABEL_BTN_LEFT:String = "left";
        private const LABEL_BTN_RIGHT:String = "right";
        private const LABEL_BTN_MIDDLE:String = "middle";
        private const LABEL_SCROLL_UP:String = "scroll_up";
        private const LABEL_SCROLL_DOWN:String = "scroll_down";
        private const LABEL_PAN:String = "pan";
        private const LABEL_SCROLL:String = "scroll";
        protected var _keyCode:uint;

        public function KeyboardButtonMouseIcon()
        {
            return;
        }// end function

        public function isMouseKey(param1:uint) : Boolean
        {
            return param1 >= KeyCode.LEFT_MOUSE && param1 <= KeyCode.MIDDLE_MOUSE || param1 == KeyCode.MOUSE_WHEEL_UP || param1 == KeyCode.MOUSE_WHEEL_DOWN || param1 == KeyCode.MOUSE_PAN || param1 == KeyCode.MOUSE_SCROLL;
        }// end function

        public function get keyCode() : uint
        {
            return this._keyCode;
        }// end function

        public function set keyCode(param1:uint) : void
        {
            this._keyCode = param1;
            this.updateIcon();
            return;
        }// end function

        protected function updateIcon() : void
        {
            switch(this._keyCode)
            {
                case KeyCode.LEFT_MOUSE:
                {
                    gotoAndStop(this.LABEL_BTN_LEFT);
                    break;
                }
                case KeyCode.RIGHT_MOUSE:
                {
                    gotoAndStop(this.LABEL_BTN_RIGHT);
                    break;
                }
                case KeyCode.MIDDLE_MOUSE:
                {
                    gotoAndStop(this.LABEL_BTN_MIDDLE);
                    break;
                }
                case KeyCode.MOUSE_WHEEL_UP:
                {
                    gotoAndStop(this.LABEL_SCROLL_UP);
                    break;
                }
                case KeyCode.MOUSE_WHEEL_DOWN:
                {
                    gotoAndStop(this.LABEL_SCROLL_DOWN);
                    break;
                }
                case KeyCode.MOUSE_SCROLL:
                {
                    gotoAndStop(this.LABEL_SCROLL);
                    break;
                }
                case KeyCode.MOUSE_PAN:
                {
                    gotoAndStop(this.LABEL_PAN);
                    break;
                }
                default:
                {
                    break;
                }
            }
            return;
        }// end function

    }
}

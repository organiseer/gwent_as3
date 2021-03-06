﻿package red.game.witcher3.interfaces
{
    import red.game.witcher3.slots.*;
    import scaleform.clik.interfaces.*;

    public interface IDropTarget extends IUIComponent
    {

        public function IDropTarget();

        function get dropSelection() : Boolean;

        function set dropSelection(param1:Boolean) : void;

        function get dropEnabled() : Boolean;

        function set dropEnabled(param1:Boolean) : void;

        function processOver(param1:SlotDragAvatar) : int;

        function canDrop(param1:IDragTarget) : Boolean;

        function applyDrop(param1:IDragTarget) : void;

    }
}

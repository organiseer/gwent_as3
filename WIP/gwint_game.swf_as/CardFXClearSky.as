package 
{
    import red.game.witcher3.menus.gwint.*;
    
    public dynamic class CardFXClearSky extends red.game.witcher3.menus.gwint.CardFX
    {
        public function CardFXClearSky()
        {
            super();
            addFrameScript(71, this.frame72);
            return;
        }

        internal function frame72():*
        {
            stop();
            fxEnded();
            return;
        }
    }
}
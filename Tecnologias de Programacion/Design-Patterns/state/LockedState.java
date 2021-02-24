package state;



public class LockedState extends State{
    LockedState(Player player){
        super(player);
        player.setPlaying(false);
    }

    @Override
    public String onLock(){
        if (player.isPLaying()) {
            player.changeState(new ReadyState(player));
            return "Stop Playing";
        } else {
            return "Locked...";
        }
    }

    @Override
    public String onPlay(){
        player.changeState(new ReadyState(player));
        return "Ready";
    }

    @Override
    public String onNext(){
        player.changeState(new ReadyState(player));
        return "Locked...";
    }

    @Override
    public String onPrevious(){
        player.changeState(new ReadyState(player));
        return "Locked...";
    }


}

class BotScript extends Script {
    override function update(elapsed:Float):Void {
        super.update(elapsed);

        // Loop through all notes on screen
        for (note in game.notes) {
            if (note.mustPress && !note.wasHit) {
                // Check if the note is within the hit window
                if (Math.abs(note.strumTime - game.curStepTime) <= game.hitWindow) {
                    // Simulate pressing the correct key
                    game.pressKey(note.noteData);
                }
            }
        }
    }
}

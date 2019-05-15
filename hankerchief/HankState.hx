package hankerchief;

import flixel.FlxState;

import hank.Story;

@:build(hank.FileLoadingMacro.build(["story/main.hank"]))
class HankState extends FlxState
{
    var story: Story;
    var awaitingChoice: Bool;

	override public function create():Void
	{
		super.create();

        trace(files["story/main.hank"]);

        story = Story.FromFile("story/main.hank", files);
        awaitingChoice = false;
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);

        switch (story.nextFrame()) {
            case HasText(text):
            trace(text);
                var text = new flixel.text.FlxText(0, 0, 0, text, 64);
                text.screenCenter();
                add(text);
            case HasChoices(choices):
            trace(choices);
                // TODO
            case Finished:
            trace('finished');
                // TODO
        }
	}
}

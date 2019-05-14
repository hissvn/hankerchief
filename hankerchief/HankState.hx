package hankerchief;

import flixel.FlxState;
import hank.Story;

@:build(hank.FileLoadingMacro([AssetPaths.main__hank]))
class HankState extends FlxState
{
    var story: Story;

	override public function create():Void
	{
		super.create();

        story = Story.FromFile();
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}

class TextWindow extends FlxSpriteGroup {
    var outputGroup: FlxSpriteGroup;
    var choiceGroup: FlxSpriteGroup;
    var background: FlxSprite;

    public function new(viewport: FlxRect) {
        super(viewport, new FlxRect(0, 0, 0, 0), ResizeMode.NONE);
    }

    public function addText(text: String) {

    }

    public function addChoices(choices: Array<String>) {

    }

    public function clearChoices() {

    }
}
package hankerchief;

import haxe.Json;
import haxe.Http;
import haxe.io.Bytes;
import flash.display.BitmapData;
import flixel.FlxSprite;


/*
var unsplash = new Unsplash(sys.environment()['UNSPLASH_KEY']);
unsplash.sprite('goat', 0, 0, 100, 100);
*/
class Unsplash {
    var rootUrl = 'https://api.unsplash.com/';
    var apiKey;

    public function new(apiKey: String) {
        this.apiKey = apiKey;
    }

    public static function sprite(query: String, x: Int, y: Int, width: Int, height: Int): FlxSprite {
        var possibleImages = Json.parse(Http.requestUrl('${rootUrl}photos/random?query=${query}&client_id=${apiKey}'));
        var imageUrl = possibleImages[0]['full'];
        trace(imageUrl);
        var bytes = Bytes.ofString(Http.requestUrl(imageUrl));
        var sprite = new FlxSprite(x, y, width, height);
        //sprite.loadGraphic(BitmapData.fromBytes(bytes));
        return sprite;
    }
}
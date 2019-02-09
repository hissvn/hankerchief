package hankerchief;
import hankerchief.Placeholder;

class Main {
    public static function main() {
        var unsplash = new Unsplash(sys.environment()['UNSPLASH_KEY']);
        unsplash.sprite('goat', 0, 0, 100, 100);
    }
}
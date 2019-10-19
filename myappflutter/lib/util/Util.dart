

class Util{
    
    static Iterable<int> getRange(int start, int end) sync* {
    
        for(int i = start; i < end; i++)
            yield i;
    }
    
}
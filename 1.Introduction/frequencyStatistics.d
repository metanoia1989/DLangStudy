import std.stdio, std.string, std.algorithm;

void main()
{
    // 计算统计
    uint[string] freqs;
    foreach (line; stdin.byLine()) {
        foreach (word; split(strip(line))) {
            ++freqs[word.idup];
        }    
    }

    // 输出统计
    string[] words = freqs.keys;
    sort!((a, b) { return freqs[a] < freqs[b]; })(words);
    foreach (word; words) {
        writefln("%6u\t%s", freqs[word], word);
    }
}
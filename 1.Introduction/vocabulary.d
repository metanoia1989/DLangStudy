import std.stdio, std.string, std.algorithm;

void main()
{
    uint[string] dictionary;   
    foreach (line; stdin.byLine()) {
        // 将句子分成单词组，并将每一个单词添加到词汇表
        foreach (word; splitter(strip(line))) {
            if (word in dictionary) continue;
            auto newID = dictionary.length;
            dictionary[word.idup] = newID;
            writeln(newID, '\t', word);
        }
    }
}
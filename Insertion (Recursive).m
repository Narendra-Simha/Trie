class TrieNode{
    public:
    TrieNode* children[26];
    bool isend;
    TrieNode(){
        isend=false;
        for(int i=0;i<26;i++){
            children[i]=NULL;
        }
    }
};



void inserting(string word, TrieNode *temp){
        if(word.size()==0){
            temp->isend=true;
            return;
        }
        int ch=word[0]-'a';
        TrieNode* child;
        if(temp->children[ch]==NULL){
            child=new TrieNode();
            temp->children[ch]=child;
        }else{
            child=temp->children[ch];
        }
        inserting(word.substr(1),child);
    }

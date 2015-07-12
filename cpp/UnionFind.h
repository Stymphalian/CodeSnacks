#include <vector>

// https://www.cs.princeton.edu/~rs/AlgsDS07/01UnionFind.pdf
struct UnionFind{
    std::vector<int> psize;
    std::vector<int> pset;

    UnionFind(int size=512){
        pset.resize(size);
        psize.resize(size);
        for(int i = 0;i < (int)pset.size(); ++i){
            pset[i] = i;
            psize[i] = 1;
        }
    }
    int Find(int i){
        return (pset[i] == i) ? i : pset[i] = Find(pset[i]);
    }
    void Union(int i, int j){
        i = Find(i);
        j = Find(j);
        if( psize[i] < psize[j]){
            pset[i] = j;
            psize[j] += psize[i];
        }else{
            pset[j] = i;
            psize[i] += psize[j];
        }
    }
    bool IsSameSet(int i,int j){
        return Find(i) == Find(j);
    }
    int NumberOfSets(){
        int count = pset.size();
        for(int i = 0; i < (int)pset.size();++i){
            if(pset[i] != i){--count; }
        }
        return count;
    }
    int SizeOfSet(int j){
        return psize[Find(j)];
    }
};

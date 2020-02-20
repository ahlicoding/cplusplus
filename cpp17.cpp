// cpp17


#include<iostream>
#include<experimental/any>

using namespace std ;

int main(){
    experimental::fundamentals_v1::any obj = int(5);
    cout<< experimental::fundamentals_v1::any_cast<int> (obj);
    cout << endl;
    return 0;

}
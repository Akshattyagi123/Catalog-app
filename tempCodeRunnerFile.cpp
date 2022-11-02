#include<iostream>
using namespace std;
void sum(int num)
{
    sum=0;
    for(i=0;i<=num;i++)
    {
        sum=sum+num;
        sum=num;
        num--;
    }
}
int main()
{
    int n;
    cin>>n;
    cout<<sum(n);
    return 0;
}
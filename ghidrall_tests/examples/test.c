int multiple(int a, int b){
    int result = 0;
    while(b > 0){
        result += a;
        b--;
    }
    return result;
}

int main() {
    int k = 5;
    int i = 6;
    int j = multiple(k, i);
    return 0;
}






import java.util.*;

class OddNumberList{
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		System.out.print("Till what number you want Odd numbers? ");
		int a = sc.nextInt();

		for(int i=1;i<=a;i++){
			if(i%2!=0){
				System.out.println(i);
			}
		}	
	}
}
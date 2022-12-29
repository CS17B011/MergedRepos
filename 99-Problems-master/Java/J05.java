import java.io.*; 
import java.util.*; 
class J5
{
    static void printreverse(List<Integer> L,int k,int size)
    {
        if (k==size)
            return ;
        else
        {
            printreverse(L,k+1,size);
            System.out.print(L.get(k) + " ");
        }
    }
	public static void main(String[] args)
	{
		List<Integer> L = new ArrayList<Integer>();
		L.addAll(Arrays.asList(1,2,3,4,5));
		printreverse(L,0,L.size());
		System.out.println();
	}
}
import java.io.*; 
import java.util.*; 
class J1
{
	public static void main(String[] args)
	{
		List<Integer> L = new ArrayList<Integer>();
		L.addAll(Arrays.asList(1,2,3,4,5));
		System.out.println(L.get(L.size()-1));
	}
}

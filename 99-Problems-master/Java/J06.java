import java.io.*; 
import java.util.*; 
class J6
{
    static boolean pal(List<Integer> L,int size)
    {
        boolean flag=true;
        for(int i=0;i<size/2;i++)
        {
            if(L.get(i)!=L.get(size-i-1))
            {
                flag = false;
                break;
            }
        }
        return flag;
    }
	public static void main(String[] args)
	{
		List<Integer> L = new ArrayList<Integer>();
		L.addAll(Arrays.asList(1,2,3,2,1));
		if(pal(L,L.size()))
		    System.out.println("Yes");
		else
		    System.out.println("No");
	}
}
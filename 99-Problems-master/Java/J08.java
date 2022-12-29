import java.io.*; 
import java.util.*; 
class J8
{
    static <T>List<T> reduce(List<T> L)
    {
        List<T> newL = new ArrayList<T>();
        int size=L.size();
        T last,x;
        int i;
        if(size>0)
        {
            last=L.get(0);
            newL.add(last);
        }
        else
            return newL;
        for(i=1;i<size;i++)
        {
            x = L.get(i);
            if(x!=last)
                newL.add(x);
            last = x;
        }
        return newL;
    }
	public static void main(String[] args)
	{
		List<String> L = new ArrayList<String>();
		L.addAll(Arrays.asList("a","a","a","a","b","b","b","a","a","c","c","c","d"));
		System.out.println(L);
		L = reduce(L);
		System.out.println(L);
	}
}
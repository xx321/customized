package max.comparator;

import java.util.Comparator;

public class SeqComparator implements Comparator<OrderSeq> {
	
	@Override
	public int compare(OrderSeq o1, OrderSeq o2) {
		// TODO Auto-generated method stub
		return o1.getSeq() - o2.getSeq();
	}  
}

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ch6{
	 public static void main(String[] args){ 
    int year = 2003;
    int month = 12;
    int day = 12;

    String date = year + "/" + month + "/" + day;
    java.util.Date utilDate = null;

    try {
      SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd");
      utilDate = formatter.parse(date);
      System.out.println("utilDate:" + utilDate);
    } catch (ParseException e) {
      System.out.println(e.toString());
      e.printStackTrace();
    }

		} 
}
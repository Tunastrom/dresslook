import org.jsoup.Jsoup; 
import org.jsoup.nodes.Document; 
import org.jsoup.select.Elements; 
public class HelloWorld{ 
public static void main(String[] args) throws Exception{ 

String URL = "https://jcdgods.tistory.com/320"; 
Document doc = Jsoup.connect(URL).get(); 
Elements elem = doc.select("div.article"); 
String str = elem.text(); 
System.out.println(str); 
} 
}


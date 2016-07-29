package tk.julypwb;
import org.springframework.stereotype.Component;
@Component
public class SgtPepper implements CompactDisk {
	private String title = "hahahahah xixixixxixi";
	private String artist = "VA";
	public void play(){
		System.out.println("Playing......."+title+artist);
	}
}

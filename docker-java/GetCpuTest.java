public class GetCpuTest {

    public static void main(String[] args) {
        int i = Runtime.getRuntime().availableProcessors();
        System.out.println("cur cpu cnt:" + i);
    }
}
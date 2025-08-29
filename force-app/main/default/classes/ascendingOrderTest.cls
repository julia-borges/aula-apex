@isTest
public class OrderUtilsTest{

    @isTest
    static void testaAscendingOrder(){
        System.assertEquals(true, OrderUtils.ascendingOrder(2, 5, 10), '2, 5, and 10 are in ascending order');
        System.assertEquals(true, OrderUtils.ascendingOrder(2, 2, 5), '2, 2, and 5 are in ascending order');
        System.assertEquals(true, OrderUtils.ascendingOrder(12, 12, 12), '12, 12, and 12 are in ascending order');
        System.assertEquals(false, OrderUtils.ascendingOrder(15, 14, 15), '15, 14, and 15 are not in ascending order');
        System.assertEquals(false, OrderUtils.ascendingOrder(10, 14, 13), '10, 14, and 13 are not in ascending order');



    }
}
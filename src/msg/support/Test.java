package msg.support;

import java.util.Arrays;

import org.apache.commons.io.IOUtils;
import org.apache.http.HttpResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;


public class Test {
	
    static BootpayApi api;

    public static void goGetToken() {
        try {
        	api = new BootpayApi("5dd11c974f74b4002fc15acb", "th4wAoktfKVuaRD2+hj2lRfz0vGplhcyydURVQLHPtQ=");
            api.getAccessToken();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

//    public static void goVerfity() {
//        try {
//            HttpResponse res = api.verify("5dd4dc5c5ade160028293168");
//            String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

    public static String goCancel(String receipt_id) {
        Cancel cancel = new Cancel();
//        cancel.receipt_id = "5ddf590e5ade16002f2ba2ed";
        cancel.receipt_id = receipt_id;
        cancel.name = "관리자 홍길동";
        cancel.reason = "택배 지연에 의한 구매자 취소요청";

        try {
            HttpResponse res = api.cancel(cancel);
            String result = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

//    public static void goSubscribeBilling() {
//        SubscribeBilling subscribeBilling = new SubscribeBilling();
//        subscribeBilling.billing_key = "5b025b33e13f33310ce560fb";
//        subscribeBilling.item_name = "정기결제 테스트 아이템";
//        subscribeBilling.price = 3000;
//        subscribeBilling.order_id = "" + (System.currentTimeMillis() / 1000);
//
//
//        try {
//            HttpResponse res = api.subscribe_billing(subscribeBilling);
//            String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
//            System.out.println(str);
//            System.out.println(new Gson().toJson(subscribeBilling));
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }

//    public static void goRemoteForm() {
//        RemoteForm form = new RemoteForm();
//        form.pg = "danal";
//        form.fm = Arrays.asList("card", "phone");
//        form.n = "테스트 결제";
//        form.o_key = "unique_value_1234"; // 가맹점의 상품 고유 키
//        form.is_r_n = false; // 구매자가 상품명 입력 허용할지 말지
//        form.is_r_p = false; // 구매자가 가격 입력 허용할지 말지
//        form.is_addr = false; // 주소창 추가 할지 말지
//        form.is_da = false; // 배송비 추가 할지 말지
//        form.is_memo = false;  // 구매자로부터 메모를 받을 지
//        form.tfp = 0d; // 비과세 금액
//        form.ip = 10000d; // 아이템 판매금액
//        form.dp = 0d; // 디스플레이용 가격, 할인전 가격을 의미함, 쿠폰이나 프로모션에 의한 가격 디스카운트 개념 필요 - 페이코 때문에 생긴 개념
//        form.dap = 0d;  // 기본배송비
//        form.dap_jj = 0d; // 제주 배송비
//        form.dap_njj = 0d; // 제주 외 지역 도서산간 추가비용
//
//
//       try {
//        HttpResponse res = api.remote_form(form);
//        String str = IOUtils.toString(res.getEntity().getContent(), "UTF-8");
//        System.out.println(str);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
}

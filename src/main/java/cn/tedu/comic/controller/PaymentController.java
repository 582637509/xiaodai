package cn.tedu.comic.controller;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.time.FastDateFormat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/*import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;*/
import com.alipay.config.AlipayConfig;

import cn.tedu.comic.entity.Flow;
import cn.tedu.comic.entity.ResponseResult;
import cn.tedu.comic.entity.User;
import cn.tedu.comic.service.IPayService;
import cn.tedu.comic.service.IVIPService;

@Controller
@RequestMapping("/pay")
public class PaymentController extends BaseController {

    @Autowired
    private IPayService iPayService;

    @Autowired
    private IVIPService iVIPService;

    @RequestMapping("/pay.do")
    @ResponseBody
    public String pay(HttpServletRequest request,
                      String WIDout_trade_no, String WIDtotal_amount, String WIDsubject, String WIDbody) throws Exception {
        //获得初始化的AlipayClient
        //  AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        System.out.println(WIDout_trade_no + "," + WIDtotal_amount + "," + WIDsubject + "," + WIDbody);
        //设置请求参数
       /* AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + WIDout_trade_no + 11 + "\","
                + "\"total_amount\":\"" + WIDtotal_amount + "\","
                + "\"subject\":\"" + "s" + "\","
                + "\"body\":\"" + "s" + "\","
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        //请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();*/
        String result = "";
        return result;
    }


    /**
     * 付款成功后,自动跳转到页面
     */
    @RequestMapping("/showOk.do")
    public String showOnOrder(HttpSession session, String out_trade_no, String total_amount) {
        System.out.println(out_trade_no + "," + total_amount);
        Flow flow = getFlow(session, out_trade_no, new BigDecimal(total_amount));
        iPayService.insertPayRecord(flow);
        iVIPService.addVIPData(getUid(session), new BigDecimal(total_amount), session);
        System.out.println(getUid(session));
        return "redirect:/index.do";
    }

    /**
     * 获得充值记录的信息包装成Flow的实例
     *
     * @param session
     * @param out_trade_no
     * @param total_amount
     * @return
     */
    private Flow getFlow(HttpSession session, String out_trade_no, BigDecimal total_amount) {
        FastDateFormat fdf = FastDateFormat.getInstance("yyyy-MM-dd");
        String time = fdf.format(Calendar.getInstance().getTime());
        Flow flow = new Flow();
        Integer uid = getUid(session);
        flow.setUid(uid);
        flow.setOutTradeNo(out_trade_no);
        flow.setTotalAmount(total_amount);
        flow.setTransMethod(10);
        flow.setSellerId(time);
        return flow;
    }

    /**
     * 生成一条订单号
     *
     * @return
     */
    @RequestMapping("/get_trade_no.do")
    @ResponseBody
    private ResponseResult<Flow> getOutTradeNo(HttpSession session) {
        FastDateFormat fdf = FastDateFormat.getInstance("yyyyMMddHHmmsss");
        String time = fdf.format(Calendar.getInstance().getTime());
        //2.获取四位随机数
        Random ran = new Random();
        StringBuilder num = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            num.append(ran.nextInt(10));
        }
        String WIDout_trade_no = time + num + 25;
        System.out.println(WIDout_trade_no);
        ResponseResult<Flow> rr = new ResponseResult<Flow>();
        Flow flow = new Flow();
        flow.setOutTradeNo(WIDout_trade_no);
        rr.setData(flow);
        return rr;
    }

    private Integer getUid(HttpSession session) {
        User user = (User) session.getAttribute("user");
        return user.getId();
    }
}

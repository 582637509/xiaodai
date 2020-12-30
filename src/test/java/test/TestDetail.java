package test;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.tedu.comic.entity.Message;
import cn.tedu.comic.mapper.DetailsMapper;
import cn.tedu.comic.service.IDetailMapper;


public class TestDetail {

	AbstractApplicationContext ac;
	DetailsMapper detailsMapper;
	IDetailMapper iDetailMapper;
	
	@Before
	public void defore(){
		ac = new ClassPathXmlApplicationContext("spring-dao.xml");
		detailsMapper = ac.getBean("detailsMapper",DetailsMapper.class);
	}
	
	@After
	public void after(){
		
		ac.close();
	}
	
	@Test
	public void test10(){
		// 根据作者ID查询留言
		System.out.println(detailsMapper.deleteWords(24));
	}
	
	@Test
	public void test1(){
		Integer num = detailsMapper.collect(2, 144);
		System.out.println("num:"+num);
	}


	public void test3(){
		Message message = new Message();
		message.setAddress("珠海");
		message.setMess("sadsadsad");
		message.setBookid(147);
		message.setSystem("win8.1");
		message.setTime("2008.01.01 10:22:12");
		message.setUid(1);
		Integer num = detailsMapper.leaveMessage(message);
		System.out.println("num:"+num);
	}
	
	@Test
	public void test4(){
		List<Message> message = detailsMapper.selectMessage(174);
		for (Message string : message) {
			System.out.println(string);
		}
	}
	
	@Test
	public void test5(){
		detailsMapper.deleteById(122);
	}
	
	@Test
	public void test6(){
		List<Message> message = detailsMapper.selectMessage(174);
		for (Message string : message) {
			System.out.println(string);
		}
	}
	
	@Test
	public void test7(){
		String message = "撒旦撒行部分但是结束不到返回北京饭店是框架第三方框架少年地方s;dfl";
	
	}
}

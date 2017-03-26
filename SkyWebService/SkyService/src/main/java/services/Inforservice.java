package services;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.codehaus.jackson.map.ObjectMapper;
import org.hibernate.Query;
import org.hibernate.Session;

import entity.InforRating;
import entity.Information;
import utils.MySessionFactory;

@SuppressWarnings("unchecked")
public class Inforservice {

	public List<Information> search(String column, String value) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E." + column + " like " + "'%" + value + "%'";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchProvince(int partner, String province) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'" + province + "' and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvince(int partner, String province, String distric) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'" + province + "'" + "and E.district = " + "'"
					+ distric + "'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchTypeAndProvince(int partner, String province, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'" + province + "'" + "and E.type = " + "'" + type
					+ "' and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<Information> searchDistrictAndProvinceAndType(int partner, String province, String distric,
			String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.province = " + "'" + province + "'" + "and E.district = " + "'"
					+ distric + "'" + "and E.type = " + "'" + type + "'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public List<Information> searchType(int partner, String type) {
		List<Information> lst = new ArrayList<>();
		try {
			String str = "from Information E where E.type = " + "'" + type + "'" + "and E.partner = " + partner;
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public List<InforRating> rating() {
		List<InforRating> lst = new ArrayList<>();
		try {
			String str = "SELECT  E,N.rating  FROM ( select information ,count(information) rating from Rating Group By information ) N, Information E where N.information = Information.id order by N.rating DESC";
			Session session = MySessionFactory.getSessionFactory().openSession();
			Query query = (Query) session.createQuery(str);
			lst = query.list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;

	}

	public List<Information> listAllInfor() {
		List<Information> lst = new ArrayList<>();
		try {
			Session session = MySessionFactory.getSessionFactory().openSession();
			lst = session.createCriteria(Information.class).list();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return lst;
	}

	public String listType() {
		ArrayList<String> lst = new ArrayList<>();
		List<Information> lstInfor = new ArrayList<>();
		lstInfor = listAllInfor();
		String result = null;
		try {
			for (Information information : lstInfor) {
				lst.add(information.getType());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		removeDuplicate(lst);

		try {
			ObjectMapper mapper = new ObjectMapper();
			result = mapper.writeValueAsString(lst);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return result;
	}

	public static ArrayList<String> removeDuplicate(ArrayList<String> arrList) {
		HashSet<String> h = new HashSet<String>(arrList);
		arrList.clear();
		arrList.addAll(h);
		return arrList;

	}

}

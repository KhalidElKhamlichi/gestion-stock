package dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import entity.StockProduit;

public class ProduitDAO {
	
	private static SessionFactory factory;
	
	public static void initFactory()
	{
		if(factory == null)
			factory = new Configuration()
					.configure()
					.addAnnotatedClass(StockProduit.class)
					.buildSessionFactory();
	}
	
	public static boolean save(StockProduit pdt)
	{
		initFactory();
		
		Session s = factory.getCurrentSession();
		
		try {						
			s.beginTransaction();
			
			s.save(pdt);
			
			s.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
		return true;
	}
	
	public static List<StockProduit> getAll() {
		
		List<StockProduit> produits = null;
		
		initFactory();
		Session s = factory.getCurrentSession();
		
		try {						
			s.beginTransaction();
			
			produits = s.createQuery("from produits_stock").list();
			
			s.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return produits;
	}
	
	public static StockProduit getProduit(int codePdt) {
		StockProduit pdt = null;
		initFactory();
		Session s = factory.getCurrentSession();
		
		try {						
			s.beginTransaction();
			String hql  = "from produits_stock p where p.codePdt = :codePdt";
			Query q = s.createQuery(hql).setParameter("codePdt", codePdt);
			pdt = (StockProduit) q.list().get(0);

			s.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pdt;
	}
	
	public static boolean updateQte(int codeStock, int qte) {
		
		initFactory();
		Session s = factory.getCurrentSession();
		
		try {						
			s.beginTransaction();
			
			StockProduit pdt = (StockProduit) s.get(StockProduit.class, codeStock);
			pdt.setQtePdt(qte);
			s.update(pdt);
			s.getTransaction().commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}

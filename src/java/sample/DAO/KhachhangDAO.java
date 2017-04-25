/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.DAO;

import entity.Asskhachhang;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import util.HibernateUtil;

/**
 *
 * @author Iris Nguyen
 */
public class KhachhangDAO {
    public static List<Asskhachhang> layDanhSachKH(String tenkh){
        List<Asskhachhang> list = null;
         Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String sql = "from Asskhachhang";
        if(tenkh.length()>0){
            sql += "where hoVaTen like '%"+tenkh+"%'";
        }
        Query query = session.createQuery(sql);
        list = query.list();
        return list;
    }
    public KhachhangDAO(){
    }
    public static boolean xoaKhachHang(String maKhachHang){
        Asskhachhang kh = KhachhangDAO.layThongTinKH(maKhachHang);
        if(kh == null)
            return false;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
            session.getTransaction().begin();
            session.delete(kh);
            session.getTransaction().commit();
            return true;
        }catch(Exception e){
            session.getTransaction().rollback();
            System.out.print(e);
            return false;
        }
    }
    public static Asskhachhang layThongTinKH(String makh){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.beginTransaction();
        Asskhachhang kh = (Asskhachhang) session.get(Asskhachhang.class,makh);
        session.close();
        return kh;
    }
    public static void themKhachhang(Asskhachhang kh){
        Session session = HibernateUtil.getSessionFactory().openSession();
        try{
           session.beginTransaction();
           session.save(kh);
           session.getTransaction().commit();
           
        }catch(Exception e){
            session.getTransaction().rollback();
            System.out.println(e);
           
       }
         
    }
    public static boolean capNhatThongTinKhachHang(Asskhachhang kh){
        if(KhachhangDAO.layThongTinKH(kh.getMaKhachHang()) != null)
            return false;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try{
            session.getTransaction().begin();
            session.update(kh);
            session.getTransaction().commit();
            return true;
        }catch(Exception e){
            session.getTransaction().rollback();
            System.out.print(e);
            return false;
        }
    }
}
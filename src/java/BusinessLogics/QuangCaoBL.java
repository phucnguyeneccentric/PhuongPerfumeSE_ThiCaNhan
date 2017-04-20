/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BusinessLogics;

import JavaBeans.QuangCao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author hv
 */
public class QuangCaoBL {
    public static List<QuangCao> listAll(){
        List<QuangCao> listqc = new ArrayList<>();
        try {
            Connection ketNoi = ConnectionDB.connect();
            Statement stm = ketNoi.createStatement();
            ResultSet rs = stm.executeQuery("select * from quangcao");
            while(rs.next()){
                QuangCao qc =  new QuangCao();
                qc.setId(rs.getString("id"));
                qc.setHinhAnh(rs.getString("hinhanh"));
                qc.setThongDiep(rs.getString("thongdiep"));
                qc.setThongTinChiTiet(rs.getString("thongtinchitiet"));
                qc.setNgayDang(rs.getString("ngaydang"));
                listqc.add(qc);
                
        }
            
        } catch (SQLException ex) {
            Logger.getLogger(QuangCaoBL.class.getName()).log(Level.SEVERE, null, ex);
        }
            
       return listqc;
    }
    
}

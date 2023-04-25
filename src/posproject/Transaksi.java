/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject;


import javax.swing.JOptionPane;

/**
 *
 * @author NALDO
 */
public class Transaksi extends DBConnector{
    public int id_transaksi;
    public float total_harga;
    public float total_dibayar;
    public float kembalian;
    
    public void simpanData()
    {
        try {
            String sql = "INSERT INTO transaksi VALUES ('"+total_harga+"','"+total_dibayar+"','"+kembalian+"')";
            JOptionPane.showMessageDialog(null, "Data berhasil disimpan ");
        } catch(Exception ex) {
            JOptionPane.showMessageDialog(null, "Gagal Menyimpan Data");
        }
    }
    
//    private void simpanData() 
//    {
//        try {
//
//            // buat prepared statement untuk menyimpan data transaksi
//            String query = "INSERT INTO transaksi (waktu_transaksi, total_harga, total_dibayar, kembalian) VALUES (?, ?, ?, ?)";
//            PreparedStatement ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//
//            // set parameter untuk prepared statement
//            ps.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
//            ps.setFloat(2, transaksi.total_harga);
//            ps.setFloat(3, transaksi.total_dibayar);
//            ps.setFloat(4, transaksi.kembalian);
//
//            // jalankan perintah SQL
//            ps.executeUpdate();
//
//            // ambil ID transaksi yang baru saja disimpan
//            ResultSet rs = ps.getGeneratedKeys();
//            if (rs.next()) {
//                int idTransaksi = rs.getInt(1);
//                transaksi.id_transaksi = idTransaksi;
//            }
//
//            // tutup koneksi ke database
//            ps.close();
//            conn.close();
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//    }

}



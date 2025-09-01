package springbootjsp.repository;

import springbootjsp.model.Hang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public class HangRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<Hang> findAll() {
        String sql = "SELECT * FROM tblHang";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            Hang h = new Hang();
            h.setMaHang(rs.getString("MaHang"));
            h.setTenHang(rs.getString("TenHang"));
            h.setDonGia(rs.getInt("DonGia"));
            h.setSoLuong(rs.getInt("SoLuong"));
            return h;
        });
    }

    public void insert(Hang h) {
        String sql = "INSERT INTO tblHang VALUES (?, ?, ?, ?)";
        jdbcTemplate.update(sql, h.getMaHang(), h.getTenHang(), h.getDonGia(), h.getSoLuong());
    }

    public void update(Hang h) {
        String sql = "UPDATE tblHang SET TenHang=?, DonGia=?, SoLuong=? WHERE MaHang=?";
        jdbcTemplate.update(sql, h.getTenHang(), h.getDonGia(), h.getSoLuong(), h.getMaHang());
    }

    public void delete(String maHang) {
        String sql = "DELETE FROM tblHang WHERE MaHang=?";
        jdbcTemplate.update(sql, maHang);
    }
}

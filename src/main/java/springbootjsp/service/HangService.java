package springbootjsp.service;

import springbootjsp.model.Hang;
import springbootjsp.repository.HangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class HangService {

    @Autowired
    private HangRepository repo;

    public List<Hang> getAll() {
        return repo.findAll();
    }

    public void add(Hang h) {
        repo.insert(h);
    }

    public void edit(Hang h) {
        repo.update(h);
    }

    public void remove(String maHang) {
        repo.delete(maHang);
    }
}

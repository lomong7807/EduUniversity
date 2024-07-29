package standardhompage.admin.company.service;

import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import standardhompage.admin.company.mapper.CompanyMapper;
import standardhompage.dto.company.CompanyRes;

import java.util.ArrayList;
import java.util.List;

@Log4j2
@Service
public class CompanyService {

    @Autowired
    CompanyMapper companyMapper;

    public List<CompanyRes> getCompanyList() {
        List<CompanyRes> companyResList = new ArrayList<>();

        companyResList = companyMapper.getCompanyList();

        return companyResList;
    }
}

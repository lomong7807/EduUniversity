package standardhompage.admin.company.mapper;

import org.apache.ibatis.annotations.Mapper;
import standardhompage.dto.company.CompanyRes;

import java.util.List;

@Mapper
public interface CompanyMapper {

    public List<CompanyRes> getCompanyList();
}

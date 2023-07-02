package com.example.tai_zadanie1.Repository;

import com.example.tai_zadanie1.Model.ProblemReportRecord;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProblemReportRepository extends CrudRepository<ProblemReportRecord, Long> {
}

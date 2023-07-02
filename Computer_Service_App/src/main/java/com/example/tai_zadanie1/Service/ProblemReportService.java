package com.example.tai_zadanie1.Service;

import com.example.tai_zadanie1.Model.ProblemReportRecord;

import java.util.List;
import java.util.Optional;

public interface ProblemReportService {
    List<ProblemReportRecord> findProblemReports();
    void save(ProblemReportRecord customer);
    void delete(ProblemReportRecord customer);
    Optional<ProblemReportRecord> findProblemReport(int id);
    void update(ProblemReportRecord customer);
}

package com.example.tai_zadanie1.Service;

import com.example.tai_zadanie1.Model.ProblemReportRecord;
import com.example.tai_zadanie1.Repository.ProblemReportRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service("problemReportServiceImpl")
public class ProblemReportServiceImpl implements ProblemReportService {

    private final ProblemReportRepository problemReportRepository;

    public ProblemReportServiceImpl(ProblemReportRepository problemReportRepository) {
        this.problemReportRepository = problemReportRepository;
    }

    @Override
    public List<ProblemReportRecord> findProblemReports() {
        return (List<ProblemReportRecord>) problemReportRepository.findAll();
    }

    @Override
    @Transactional
    public void save(ProblemReportRecord customer) {
        problemReportRepository.save(customer);
    }

    @Override
    public void delete(ProblemReportRecord customer) {
        problemReportRepository.delete(customer);
    }

    @Override
    public Optional<ProblemReportRecord> findProblemReport(int id) {
        return problemReportRepository.findById((long) id);
    }

    @Override
    public void update(ProblemReportRecord customer) {
        problemReportRepository.save(customer);
    }
}

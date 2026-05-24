$filePath = "C:\Users\user\.gemini\antigravity\scratch\academic-poster-website\index.html"
$content = [System.IO.File]::ReadAllText($filePath, [System.Text.Encoding]::UTF8)

# Define the replacement text with correct Greek characters
$replacement = @"
                    <div class="poster-overlay">
                        <span class="overlay-btn">
                            <svg width="20" height="20" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0zM10 7v6m3-3H7"/></svg>
                            Μεγέθυνση Poster
                        </span>
                        <span class="overlay-hint">Κάντε κλικ για μεγέθυνση σε πλήρη οθόνη</span>
                    </div>
                </div>

                <!-- Action Area (Download PDF) -->
                <div class="action-area">
                    <a href="research-poster.pdf" class="btn btn-primary" download="research-poster.pdf">
                        <svg width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" style="margin-right: 0.5rem;"><path stroke-linecap="round" stroke-linejoin="round" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/></svg>
                        Λήψη Πλήρους PDF (Full Resolution)
                    </a>
                </div>
            </section>

            <!-- Collapsible Bibliography Accordion Section -->
            <section class="card accordion-card">
                <button class="accordion-header" id="accordionHeader" aria-expanded="false" aria-controls="accordionContent">
                    <span id="bib-title">Βιβλιογραφία / References</span>
                    <span class="accordion-icon">
                        <svg width="24" height="24" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" d="M19 9l-7 7-7-7"/></svg>
                    </span>
                </button>
                <div class="accordion-content" id="accordionContent">
                    <div class="accordion-inner">
                        <div class="citation-list">
                            <div class="citation-item">
                                Al-Ashkar, F., Mehra, R. and Mazzone, P.J., 2003. Interpreting pulmonary function tests: recognize the pattern, and the diagnosis will follow. <em>Cleveland Clinic Journal of Medicine</em>, 70(10), pp. 866–866. Available from: <a href="https://doi.org/10.3949/ccjm.70.10.866" target="_blank" rel="noopener">https://doi.org/10.3949/ccjm.70.10.866</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Bhakta, N.R., McGowan, A., Ramsey, K.A., Borg, B., Kivastik, J., Knight, S.L., Sylvester, K., Burgos, F., Swenson, E.R., McCarthy, K., Cooper, B.G., García-Río, F., Skloot, G., McCormack, M., Mottram, C., Irvin, C.G., Steenbruggen, I., Coates, A.L. and Kaminsky, D.A., 2023. European Respiratory Society/American Thoracic Society technical statement: standardisation of the measurement of lung volumes, 2023 update. <em>European Respiratory Journal</em>, 62(5), p. 2201519. Available from: <a href="https://doi.org/10.1183/13993003.01519-2022" target="_blank" rel="noopener">https://doi.org/10.1183/13993003.01519-2022</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Borland, C.D.R. and Hughes, M., 2020. Transfer Factor (Tl) for carbon monoxide (CO) and nitric oxide (NO). In: R.L. Maynard et al., eds. <em>Cotes’ Lung Function</em>. 1st ed. Wiley, pp. 313–352. Available from: <a href="https://doi.org/10.1002/9781118597309.ch18" target="_blank" rel="noopener">https://doi.org/10.1002/9781118597309.ch18</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Coates, A.L., Graham, B.L., McFadden, R.G., McParland, C., Moosa, D., Provencher, S. and Road, J., 2013. Spirometry in Primary Care. <em>Canadian Respiratory Journal</em>, 20(1), pp. 11–22. Available from: <a href="https://doi.org/10.1155/2013/615281" target="_blank" rel="noopener">https://doi.org/10.1155/2013/615281</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Coertjens, P.C., Knorst, M.M., Dumke, A., Pasqualoto, A.S., Riboldi, J. and Barreto, S.S.M., 2013. Can the single-breath helium dilution method predict lung volumes as measured by whole-body plethysmography? <em>Jornal Brasileiro de Pneumologia</em>, 39(6), pp. 675–685. Available from: <a href="https://doi.org/10.1590/S1806-37132013000600006" target="_blank" rel="noopener">https://doi.org/10.1590/S1806-37132013000600006</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Criée, C.P., Sorichter, S., Smith, H.J., Kardow, P., Köhler, D. and Magnussen, H., 2011. Body plethysmography-Its principle and clinical use. <em>Respiratory Medicine</em>, 105(7), pp. 959–971.
                            </div>
                            <div class="citation-item">
                                D’Ascanio, M., Viccaro, F., Calabrò, N., Guerrieri, G., Salvucci, C., Pizzirusso, D., Mancini, R., De Vitis, C., Pezzuto, A. and Ricci, A., 2020. Assessing Static Lung Hyperinflation by Whole-Body Plethysmography, Helium Dilution, and Impulse Oscillometry System (IOS) in Patients with COPD. <em>International Journal of Chronic Obstructive Pulmonary Disease</em>, 15, pp. 2583–2589. Available from: <a href="https://doi.org/10.2147/COPD.S264261" target="_blank" rel="noopener">https://doi.org/10.2147/COPD.S264261</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Dubois, A.B., Botelho, S.Y., Bedell, G.N., Marshall, R. and Comroe, J.H., 1956. A rapid plethysmographic method for measuring thoracic gas volume: A comparison with a nitrogen washout method for measuring functional residual capacity in normal subjects. <em>Journal of Clinical Investigation</em>, 35(3), pp. 322–326.
                            </div>
                            <div class="citation-item">
                                Enright, P., 2016. Office-based DLCO tests help pulmonologists to make important clinical decisions. <em>Respiratory Investigation</em>, 54(5), pp. 305–311. Available from: <a href="https://doi.org/10.1016/j.resinv.2016.03.006" target="_blank" rel="noopener">https://doi.org/10.1016/j.resinv.2016.03.006</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Goldin, J. and Cascella, M., 2025. Diffusing Capacity of the Lungs for Carbon Monoxide. <em>StatPearls</em>. Treasure Island (FL): StatPearls Publishing. Available from: <a href="http://www.ncbi.nlm.nih.gov/books/NBK556149/" target="_blank" rel="noopener">http://www.ncbi.nlm.nih.gov/books/NBK556149/</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Graham, B.L., Brusasco, V., Burgos, F., Cooper, B.G., Jensen, R., Kendrick, A., MacIntyre, N.R., McCarthy, K., Miller, M.R., Mottram, C., Pellegrino, R., Viegi, G. and Van der Grinten, C.P., 2017. 2017 ERS/ATS standards for single-breath carbon monoxide uptake in the lung. <em>European Respiratory Journal</em>, 49(1), p. 1600016. Available from: <a href="https://doi.org/10.1183/13993003.00016-2016" target="_blank" rel="noopener">https://doi.org/10.1183/13993003.00016-2016</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Graham, B.L., Steenbruggen, I., Miller, M.R., Barjaktarevic, I.Z., Cooper, B.G., Hall, G.L., Hallstrand, T.S., Kaminsky, D.A., McCarthy, K., McCormack, M.C., Oropez, C.E., Rosenfeld, M., Stanojevic, S., Swanney, M.P. and Thompson, B.R., 2019. Standardization of Spirometry 2019 Update. An Official American Thoracic Society and European Respiratory Society Technical Statement. <em>American Journal of Respiratory and Critical Care Medicine</em>, 200(8), pp. e70–e88. Available from: <a href="https://doi.org/10.1164/rccm.201908-1590ST" target="_blank" rel="noopener">https://doi.org/10.1164/rccm.201908-1590ST</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Hall, J.E., 2021. <em>Guyton and Hall Textbook of Medical Physiology</em>. 14th ed. Philadelphia: Elsevier.
                            </div>
                            <div class="citation-item">
                                Hertz Lungen Praxis, 2026. <em>Body Plethysmography (Large Lung Function Test)</em>. Available from: <a href="https://www.herzlungenpraxis.ch/en/body-plethysmography-large-lung-function-test" target="_blank" rel="noopener">https://www.herzlungenpraxis.ch/en/body-plethysmography-large-lung-function-test</a> [viewed 21 May 2026].
                            </div>
                            <div class="citation-item">
                                Hyatt, R.E., Scanlon, P.D. and Nakamura, M., 2014. <em>Interpretation of Pulmonary Function Tests: A Practical Guide</em>. 4th ed. Philadelphia: Wolters Kluwer.
                            </div>
                            <div class="citation-item">
                                Indian Pediatrics, 2003. Editorial: Spirometry in children. <em>Indian Pediatrics</em>, 40(7), pp. 626–632. Available from: <a href="https://www.indianpediatrics.net/july2003/july-626-632.htm" target="_blank" rel="noopener">https://www.indianpediatrics.net/july2003/july-626-632.htm</a> [viewed 19 March 2026].
                            </div>
                            <div class="citation-item">
                                Johnson, J.D. and Theurer, W.M., 2014. A Stepwise Approach to the Interpretation of Pulmonary Function Tests. <em>American Family Physician</em>, 89(5), pp. 359–366.
                            </div>
                            <div class="citation-item">
                                Lamb, K., Theodore, D. and Bhutta, B.S., 2026. Spirometry. <em>StatPearls</em>. Treasure Island (FL): StatPearls Publishing. Available from: <a href="http://www.ncbi.nlm.nih.gov/books/NBK560526/" target="_blank" rel="noopener">http://www.ncbi.nlm.nih.gov/books/NBK560526/</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Liang, B.M., Lam, D.C.L. and Feng, Y.L., 2012. Clinical applications of lung function tests: A revisit. <em>Respirology</em>, 17(4), pp. 611–619. Available from: <a href="https://doi.org/10.1111/j.1440-1843.2012.02149.x" target="_blank" rel="noopener">https://doi.org/10.1111/j.1440-1843.2012.02149.x</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Liou, T.G. and Kanner, R.E., 2009. Spirometry. <em>Clinical Reviews in Allergy & Immunology</em>, 37(3), pp. 137–152. Available from: <a href="https://doi.org/10.1007/s12016-009-8128-z" target="_blank" rel="noopener">https://doi.org/10.1007/s12016-009-8128-z</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Luo, J., 2017. Clinical Roles of Lung Volumes Detected by Body Plethysmography and Helium Dilution in Asthmatic Patients: A Correlation and Diagnosis Analysis. <em>Scientific Reports</em>, 7, p. 40870. Available from: <a href="https://doi.org/10.1038/srep40870" target="_blank" rel="noopener">https://doi.org/10.1038/srep40870</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                MacIntyre, N., Crapo, R.O., Viegi, G., Johnson, D.C., Van der Grinten, C.P.M. and Brusasco, V., 2005. Standardisation of the single-breath determination of carbon monoxide uptake in the lung. <em>European Respiratory Journal</em>, 26(4), pp. 720–735.
                            </div>
                            <div class="citation-item">
                                Madsen, A.C., Hanel, B., Lindholm, S.R. and Maribo, T., 2023. Pulmonary diffusing capacity to nitric oxide and carbon monoxide during exercise and in the supine position: a test–retest reliability study. <em>Experimental Physiology</em>, 108(2), pp. 307–317. Available from: <a href="https://doi.org/10.1113/EP090883" target="_blank" rel="noopener">https://doi.org/10.1113/EP090883</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Marciniuk, D.D., 2012. Cardiopulmonary Exercise Testing. In: <em>ACCP Pulmonary Medicine Board Review</em>. 26th ed. United States: American College of Chest Physicians, pp. 103–119.
                            </div>
                            <div class="citation-item">
                                McLintic, A. and Webb, M., 2024. Measuring Carbon Monoxide Diffusing Capacity/Transfer Factor. In: C. Birch et al., eds. <em>Physics and Measurement for Anesthesia: Basic Science Essentials for Anesthesia and Critical Care Exams</em>. Cham: Springer Nature Switzerland, pp. 243–246. Available from: <a href="https://doi.org/10.1007/978-3-031-65060-4_26" target="_blank" rel="noopener">https://doi.org/10.1007/978-3-031-65060-4_26</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Miller, M.R., Crapo, R., Hankinson, J., Brusasco, V., Burgos, F., Casaburi, R., Coates, A., Enright, P., Van der Grinten, C.P.M. and Gustafsson, P., 2005. General considerations for lung function testing. <em>European Respiratory Journal</em>, 26(1), pp. 153–161.
                            </div>
                            <div class="citation-item">
                                Moore, V.C., 2012. Spirometry: Step by step. <em>Breathe</em>, 8(3), pp. 232–240. Available from: <a href="https://doi.org/10.1183/20734735.0021711" target="_blank" rel="noopener">https://doi.org/10.1183/20734735.0021711</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Ora, J., Giorgino, F.M., Bettin, F.R., Gabriele, M. and Rogliani, P., 2024. Pulmonary Function Tests: Easy Interpretation in Three Steps. <em>Journal of Clinical Medicine</em>, 13(13), p. 3655. Available from: <a href="https://doi.org/10.3390/jcm13133655" target="_blank" rel="noopener">https://doi.org/10.3390/jcm13133655</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Ora, J., Laveneziana, P., Wadell, K., Jensen, R., Ruppel, G. and others, 2024. Pulmonary Function Tests: Easy Interpretation in Three Steps. <em>Breathe</em>, 20(1), pp. 1–14.
                            </div>
                            <div class="citation-item">
                                Pellegrino, R., Viegi, G., Brusasco, V., Crapo, R.O., Burgos, F., Casaburi, R., Coates, A., Van der Grinten, C.P.M., Gustafsson, P. and Hankinson, J., 2005. Interpretative strategies for lung functional tests. <em>European Respiratory Journal</em>, 26(5), pp. 948–968.
                            </div>
                            <div class="citation-item">
                                Ponce, M.C., Sankari, A. and Sharma, S., 2023. <em>Pulmonary Function Tests</em>. Treasure Island (FL): StatPearls Publishing.
                            </div>
                            <div class="citation-item">
                                Puente Maestú, L. and García de Pedro, J., 2012. Lung Function Tests in Clinical Decision-Making. <em>Archivos de Bronconeumología</em>, 48(5), pp. 161–169. Available from: <a href="https://doi.org/10.1016/j.arbr.2011.12.007" target="_blank" rel="noopener">https://doi.org/10.1016/j.arbr.2011.12.007</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Ranu, H., Wilde, M. and Madden, B., 2011. Pulmonary Function Tests. <em>The Ulster Medical Journal</em>, 80(2), pp. 84–90.
                            </div>
                            <div class="citation-item">
                                Sood, A., 2014. Performing a Lung Disability Evaluation. <em>Journal of Occupational and Environmental Medicine</em>, 56(10), pp. S23–S29. Available from: <a href="https://doi.org/10.1097/JOM.0000000000000282" target="_blank" rel="noopener">https://doi.org/10.1097/JOM.0000000000000282</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Sullivan, W.J., Peters, G.M. and Enright, P.L., 1984. Pneumotachographs: Theory and Clinical Application. <em>Respiratory Care</em>, 29(7), pp. 736–749. Available from: <a href="https://journals.sagepub.com/doi/abs/10.1177/194336548402900703" target="_blank" rel="noopener">https://journals.sagepub.com/doi/abs/10.1177/194336548402900703</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Tang, Y., Zhang, M., Feng, Y. and Liang, B., 2016. The measurement of lung volumes using body plethysmography and helium dilution methods in COPD patients: a correlation and diagnosis analysis. <em>Scientific Reports</em>, 6, p. 37550. Available from: <a href="https://doi.org/10.1038/srep37550" target="_blank" rel="noopener">https://doi.org/10.1038/srep37550</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                West, J.B. and Luks, A.M., 2021. <em>West's Respiratory Physiology: The Essentials</em>. 11th ed. Philadelphia: Wolters Kluwer.
                            </div>
                            <div class="citation-item">
                                Κωστή, Β.-Ε., Χανιώτου, Α., Μπακάκος, Π. και Λουκίδης, Σ., 2023. <em>Διαχυτική ικανότητα πνευμόνων: Pulmonary function testing</em>. Αθήνα: Κάλλιπος, Ανοικτές Ακαδημαϊκές Εκδόσεις. Available from: <a href="https://doi.org/10.57713/kallipos-149" target="_blank" rel="noopener">https://doi.org/10.57713/kallipos-149</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Μαθιουδάκης, Γ.Α., 2013. <em>Πνευμονικός Αερισμός</em>. Respi-gam.net. Available from: <a href="https://respi-gam.net/node/5415" target="_blank" rel="noopener">https://respi-gam.net/node/5415</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Παναγιώτου, Μ., 2016. <em>Εργοσπιρομετρία</em>. Athens Lung. Available from: <a href="https://www.athenslung.gr/services/ergospirometria/" target="_blank" rel="noopener">https://www.athenslung.gr/services/ergospirometria/</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Πανδή, Κ., 2019. <em>Εργοσπιρομετρία (VO2 max)</em>. Pneumo.gr. Available from: <a href="https://pneumo.gr/%CE%B5%CF%81%CE%B3%CE%BF%CF%83%CF%80%CE%B9%CF%81%CE%BF%CE%BC%CE%B5%CF%84%CF%81%CE%B9%CE%B1-vo2-max/" target="_blank" rel="noopener">https://pneumo.gr/%CE%B5%CF%81%CE%B3%CE%BF%CF%83%CF%80%CE%B9%CF%81%CE%BF%CE%BC%CE%B5%CF%84%CF%81%CE%B9%CE%B1-vo2-max/</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Πανεπιστήμιο Κρήτης, Τμήμα Ιατρικής, 2022. <em>Εργοσπιρομετρία</em>. Available from: <a href="https://icu.med.uoc.gr/index.php/el/ergospirometria-hid-menu-gr" target="_blank" rel="noopener">https://icu.med.uoc.gr/index.php/el/ergospirometria-hid-menu-gr</a> [viewed 24 May 2026].
                            </div>
                            <div class="citation-item">
                                Σκόπας, Β., 2020. <em>Καρδιοαναπνευστική δοκιμασία κόπωσης – Εργοσπιρομετρία</em>. Pneumonologos-Skopas.gr. Available from: <a href="https://pneumonologos-skopas.gr/%ce%ba%ce%b1%cf%81%ce%b4%ce%b9%ce%bf%ce%b1%ce%bd%ce%b1%cf%80%ce%bd%ce%b5%cf%85%cf%83%cf%84%ce%b9%ce%ba%ce%b7-%ce%b4%ce%bf%ce%ba%ce%b9%ce%bc%ce%b1%cf%83%ce%b9%ce%b1-%ce%ba%ce%bf%cf%80%cf%89%cf%83%ce%b7/" target="_blank" rel="noopener">https://pneumonologos-skopas.gr/%ce%ba%ce%b1%cf%81%ce%b4%ce%b9%ce%bf%ce%b1%ce%bd%ce%b1%cf%80%ce%bd%ce%b5%cf%85%cf%83%cf%84%ce%b9%ce%ba%ce%b7-%ce%b4%ce%bf%ce%ba%ce%b9%ce%bc%ce%b1%cf%83%ce%b9%ce%b1-%ce%ba%ce%bf%cf%80%cf%89%cf%83%ce%b7/</a> [viewed 24 May 2026].
                            </div>
                        </div>
                    </div>
                </div>
            </section>
"@

# Find the index of the start tag
$overlayIndex = $content.IndexOf('<div class="poster-overlay">')
# Find the index of the footer section start
$footerIndex = $content.IndexOf('<!-- Footer Section -->')

if ($overlayIndex -ge 0 -and $footerIndex -gt $overlayIndex) {
    # Extract the parts
    $prefix = $content.Substring(0, $overlayIndex)
    $suffix = $content.Substring($footerIndex)
    
    # Combine prefix, our replacement block, and suffix
    $newContent = $prefix + $replacement + "`r`n    " + $suffix
    
    # Write back as UTF8 (without BOM) to index.html
    $utf8NoBOM = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($filePath, $newContent, $utf8NoBOM)
    Write-Output "Successfully replaced section with correct encoding!"
} else {
    Write-Output "Could not find overlay or footer indices!"
}

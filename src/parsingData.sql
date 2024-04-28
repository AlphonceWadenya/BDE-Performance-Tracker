/* Below are the QUERY functions used in the Parsing Data sheet. */

/* Approved: How many types of approved referrals did you get for the month under review? */

=QUERY('Form Responses 1'!A2:W, "SELECT B, COUNT(D) 
WHERE D IS NOT NULL AND V = TRUE AND P = 'APPROVED'
GROUP BY B
LABEL B 'BDE', COUNT(D) 'Total Approved Referrals'")

/* Prospects: How many unverified referrals (Prospects) do you have for the month under review? */

=QUERY('Form Responses 1'!A2:W, "SELECT B, COUNT(B) 
WHERE B IS NOT NULL AND V = TRUE AND (P <> 'APPROVED') AND (P <> 'REJECTED')
GROUP BY B
LABEL B 'BDE', COUNT(B) 'Total Prospects'")

/* Rejections: How many of your leads were rejected */

=QUERY('Form Responses 1'!A2:W, "SELECT B, COUNT(B) 
WHERE D IS NOT NULL AND V = TRUE AND P = 'REJECTED'
GROUP BY B
LABEL B 'BDE', COUNT(B) 'Total Rejections'")

/* Total Entries: How many entries did you make */

=QUERY('Form Responses 1'!A2:W, "SELECT B, COUNT(B) 
WHERE D IS NOT NULL AND V = TRUE
GROUP BY B
LABEL B 'BDE', COUNT(B) 'Total Entries'")

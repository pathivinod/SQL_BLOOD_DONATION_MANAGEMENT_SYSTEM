-- Donors who donated
SELECT DISTINCT D.name
FROM Donor D
JOIN Donation DN ON D.donor_id = DN.donor_id;

-- Total blood units per bank
SELECT B.bank_name, SUM(DN.units)
FROM Blood_Bank B
JOIN Donation DN ON B.bank_id = DN.bank_id
GROUP BY B.bank_name;

-- Popular blood banks
SELECT B.bank_name, COUNT(*)
FROM Blood_Bank B
JOIN Donation DN ON B.bank_id = DN.bank_id
GROUP BY B.bank_name
HAVING COUNT(*) >= 2;

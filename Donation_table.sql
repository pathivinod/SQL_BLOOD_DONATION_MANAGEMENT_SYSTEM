CREATE TABLE Donation (
  donation_id INT PRIMARY KEY,
  donation_date DATE,
  units INT,
  donor_id INT,
  bank_id INT,
  FOREIGN KEY (donor_id) REFERENCES Donor(donor_id),
  FOREIGN KEY (bank_id) REFERENCES Blood_Bank(bank_id)
);

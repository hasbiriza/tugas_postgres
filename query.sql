syntax sql 
=== Buat database ===
enter, masukkan port, dan password 
setelah memasukkan password 

// Buat DATABASE
# CREATE DATABASE tokohasbi;

//Connect ke database yang sudah dibuat
# \c tokohasbi; 

// membuat tabel 
# CREATE TABLE pembeli (id pembeli SERIAL PRIMARY KEY, nama VARCHAR NOT NULL, jenis_kelamin VARCHAR NOT NULL,kota VARCHAR NOT NULL); 
# CREATE TABLE laptop (id laptop SERIAL PRIMARY KEY, merek_laptop VARCHAR NOT NULL, ram INT NOT NULL,tahun VARCHAR NOT NULL); 
# CREATE TABLE pemesanan (id_order SERIAL PRIMARY KEY, id_pembeli INT NOT NULL, id_laptop INT NOT NULL,tanggal DATE NOT NULL); 

// untuk melihat semua table
# \dt

/// untuk melihat isi tabel
# SELECT * FROM nama_tabel; 

// Masukkan data ke table
# INSERT INTO pemesan (id_pemesanan, id_pembeli, id_laptop, tanggal) VALUES (3,2,1003,'2024-01-12'),(4,3,1004,'2024-01-12'), (1,1,1001,'2024-01-12'),(2,1,1002,'2024-01-12');

# INSERT INTO pembeli (id_pembeli, nama, jenis_kelamin, kota) VALUES (3,'Wira','L','Jakarta'),(4,'William','L','Bekasi'), (1,'Hasbi','L','Bogor'),(2,'Yohanes','L','2020'),(1004,'HP',8,'2019');

#INSERT INTO laptop (id_laptop, merek_laptop, ram, tahun) VALUES (1002,'Lenovo',16,'2019'),(1003,'Apple',32,'2020'),(1004,'HP',8,'2019'), (1001,'Asus',8,'2020');

// untuk melihat data table berdasarkan id
# SELECT * FROM nama_tabel WHERE id = value_field_id;

// untuk melihat data table berdasarkan nama_field
# SELECT * FROM nama_tabel WHERE nama_field = value_nama_field;

// untuk mengubah data di table
# UPDATE nama_tabel SET nama_field = value_nama_field yang sudah diganti WHERE id = value_field_id;

// untuk menghapus data di table
# DELETE FROM nama_tabel WHERE id = value_field_id

//Memasukkan Foreign KEY
#ALTER TABLE pemesanan ADD FOREIGN KEY (id_laptop) REFERENCES laptop (id_pembeli);
#ALTER TABLE pemesanan ADD FOREIGN KEY (id_pembeli) REFERENCES pembeli (id_pembeli);

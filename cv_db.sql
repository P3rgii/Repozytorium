CREATE DATABASE IF NOT EXISTS cv_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE cv_db;

CREATE TABLE cv (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(200),
  email VARCHAR(200),
  phone VARCHAR(100),
  city VARCHAR(100),
  birth_date DATE,
  relocation TINYINT(1),
  intro TEXT,
  education TEXT,
  experience TEXT,
  skills TEXT,
  languages TEXT,
  photo VARCHAR(255)
);

INSERT INTO cv (name, email, phone, city, birth_date, relocation, intro, education, experience, skills, languages, photo)
VALUES (
  'Tomasz Nowak',
  'tomasz.nowak@box.com',
  '+48 543 210 000',
  'Warszawa',
  '1994-03-02',
  1,
  'Jestem absolwentem dziennikarstwa. Pierwsze doświadczenia zdobywałem w opiniotwórczym tygodniku. Swój rozwój zawodowy wiążę z content marketingiem.',
  '10.2018 – obecnie | 6 mies.: Szkoła Główna Handlowa <br>Kierunek: marketing internetowy<br>Poziom wyksztalcenia: studia podyplomowe<br><br>10.2013 – 06.2018 | 5 lat: Uniwersytet Warszawski<br>Kierunek: dziennikarstwo i medioznawstwo<br>Specjalność: public relations i marketing medialny<br>Poziom wyksztalcenia: magister',
  '01.2017 – obecnie | 1 rok: Reporter – praktykant | Tygodnik "Ten i ten"<br>- Zbieranie informacji i przeprowadzanie wywiadów<br>- Przyjmowanie telefonów od czytelników',
  'obsluga MS Office (Word, Excel), Photoshop',
  'Angielski – zaawansowany (C1)',
  'profile-photo.jpg'
);

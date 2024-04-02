# Lab 4 - Programowanie w chmurze obliczeniowej

To repozytorium zawiera Dockerfile i inne pliki potrzebne do skonstruowania obrazu Dockera zawierającego serwer Apache nasłuchujący na porcie 8080.

## Instrukcje

Aby skonstruować obraz i uruchomić kontener Docker, postępuj zgodnie z poniższymi krokami:

1. **Klonowanie repozytorium:**

    Sklonuj to repozytorium na swój lokalny komputer:

    ```bash
    git clone https://github.com/s97640/DockerLab4
    ```

2. **Budowa obrazu Docker:**

    Przejdź do katalogu z repozytorium i zbuduj obraz Docker za pomocą polecenia `docker build`.

    ```bash
    cd nazwa_katalogu
    docker build -t web100 .
    ```

3. **Uruchomienie kontenera:**

    Po zakończeniu budowy obrazu, uruchom kontener Docker, używając polecenia `docker run`.

    ```bash
    docker run -d -p 8080:8080 web100
    ```

4. **Sprawdzenie działania:**

    Otwórz przeglądarkę internetową i przejdź do adresu `http://localhost:8080/`, aby sprawdzić, czy serwer Apache działa poprawnie.


[![image.png](https://i.postimg.cc/vTN8qVTb/image.png)](https://postimg.cc/Mf18XX1F)
[![image.png](https://i.postimg.cc/BZxdmD8g/image.png)](https://postimg.cc/nMhRzXGj)

## Struktura katalogów

- `Dockerfile`: Plik Dockerfile definiujący budowę obrazu Docker.
- `index.html`: Plik HTML zawierający informacje o autorze.
- `apache_config_8080.conf`: Konfiguracja serwera Apache dla portu 8080.
- `ports.conf`: Konfiguracja nasłuchiwania portu 8080.
- `readme.md`: Plik README zawierający instrukcje i opis zadania.

## Autor

- Imię i nazwisko: Jakub Kopacki
- Email: s97640@pollub.edu.pl

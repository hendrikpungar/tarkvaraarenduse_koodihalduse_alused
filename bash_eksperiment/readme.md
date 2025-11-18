# Bash Eksperiment

## Kirjeldus

See projekt demonstreerib Bash-i põhilisi käske ja skriptimist. Eksperiment genereerib juhuslikke andmeid Python skripti abil ning analüüsib neid Bash käskude ja torude abil.

Projekt loob 10 andmefaili, millest igaüks sisaldab 200 juhuslikku täisarvu vahemikus 1-100. Seejärel analüüsitakse kõiki faile koos ja leitakse iga unikaalse arvu esinemissagedus.

## Kataloogide struktuur

```
bash_eksperiment/
├── data/              # Genereeritud andmefailid 
├── scripts/           # Skriptid andmete genereerimiseks ja töötlemiseks
│   ├── generate_data.py      # Python skript juhuslike arvude genereerimiseks
│   ├── generate_data.sh      # Bash skript, mis käivitab Python skripti N korda
│   └── analyze_data.sh       # Bash skript andmete analüüsimiseks
├── results/           # Analüüsi tulemused
│   └── summary_total_unique_numbers_counted.txt
└── readme.md          # See fail
```

## Kasutatud käsud

### 1. Kataloogide loomine
```bash
mkdir -p bash_eksperiment/{data,scripts,results}
cd bash_eksperiment
```

### 2. Python skripti loomine
```bash
nano scripts/generate_data.py
```

### 3. Bash skriptide loomine
```bash
nano scripts/generate_data.sh
nano scripts/analyze_data.sh
```

### 4. Skriptidele käivitamisõiguste andmine
```bash
chmod +x scripts/generate_data.sh
chmod +x scripts/analyze_data.sh
```

### 5. Andmete genereerimine
```bash
cd scripts
./generate_data.sh
# või määratud arv kordi:
./generate_data.sh 10
```

### 6. Andmete analüüs
Ühe käsuna:
```bash
cat data/*.txt | sort -n | uniq -c | sort -rn > results/summary_total_unique_numbers_counted.txt
```

Või kasutades skripti:
```bash
./scripts/analyze_data.sh
```

### 7. Tulemuste vaatamine
```bash
less results/summary_total_unique_numbers_counted.txt
# või
head -n 20 results/summary_total_unique_numbers_counted.txt
```

## Kasutatud Bash käskude seletus

- `cat data/*.txt` - Ühendab kõikide data kataloogi .txt failide sisu
- `sort -n` - Sorteerib read numbriliselt
- `uniq -c` - Eemaldab duplikaadid ja loendab iga unikaalse rea esinemisi
- `sort -rn` - Sorteerib numbriliselt vastupidises järjekorras
- `>` - Suunab väljundi faili


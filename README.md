# Materi Flutter & Cloud Computing

Materi pembelajaran berbentuk HTML untuk pelatihan Flutter dan Google Cloud Platform.

## Struktur File

- `index.html` - Halaman utama dengan daftar isi
- `flutter.html` - Materi Flutter (instalasi, setup, praktik)
- `cloud.html` - Materi Google Cloud Platform

## Cara Menggunakan

### Opsi 1: Buka Langsung di Browser
```bash
# Buka index.html di browser
open index.html  # macOS
start index.html # Windows
```

### Opsi 2: Jalankan dengan Docker

#### Build Docker Image
```bash
docker build -t materi-flutter-cloud .
```

#### Run Container
```bash
docker run -d -p 8080:80 --name materi-web materi-flutter-cloud
```

Akses di browser: `http://localhost:8080`

#### Stop Container
```bash
docker stop materi-web
docker rm materi-web
```

### Opsi 3: Deploy ke Google Cloud Run

#### Deploy langsung dari source
```bash
gcloud run deploy materi-flutter-cloud \
  --source . \
  --region=asia-southeast1 \
  --allow-unauthenticated
```

#### Atau build dan deploy dengan Docker
```bash
# Build image
docker build -t gcr.io/PROJECT_ID/materi-flutter-cloud .

# Push ke Container Registry
docker push gcr.io/PROJECT_ID/materi-flutter-cloud

# Deploy ke Cloud Run
gcloud run deploy materi-flutter-cloud \
  --image gcr.io/PROJECT_ID/materi-flutter-cloud \
  --region=asia-southeast1 \
  --allow-unauthenticated
```

## Fitur

- ✅ Tampilan minimalis hitam putih
- ✅ Fokus pada praktik langsung (hands-on)
- ✅ Bahasa Indonesia
- ✅ Navigasi antar halaman
- ✅ Siap print/save as PDF
- ✅ Responsive design

## Teknologi

- HTML5
- CSS (inline)
- Nginx (untuk serving via Docker)
- Docker
- Google Cloud Run (opsional)

## Lisensi

Materi ini dibuat untuk keperluan pelatihan.

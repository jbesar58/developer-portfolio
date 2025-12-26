# Next.js Developer Portfolio - Cloud Full-Stack Deployment

Proyek ini adalah aplikasi portofolio profesional berbasis Next.js yang di-deploy ke AWS EC2 menggunakan pipeline CI/CD otomatis melalui GitHub Actions dan Docker.

## Project Links
* **Live Demo:** [http://3.0.209.203/](http://ec2-3-0-209-203.ap-southeast-1.compute.amazonaws.com/)
* **CI/CD Pipeline:** [https://github.com/jbesar58/developer-portfolio/actions/workflows/ci-cd.yml]

## Tech Stack
* **Framework:** Next.js 14
* **Containerization:** Docker & Docker Hub
* **CI/CD:** GitHub Actions
* **Cloud Provider:** AWS (EC2 Instance)
* **Operating System:** Ubuntu Linux

## Architecture Diagram
Aplikasi ini mengikuti alur kerja DevOps:
1. **Push Code:** Developer melakukan push kode ke branch `main`.
2. **CI Pipeline:** GitHub Actions memicu proses build Docker Image.
3. **Registry:** Image yang berhasil di-build di-push ke Docker Hub secara otomatis.
4. **CD Pipeline:** Developer melakukan pull image terbaru di server AWS dan menjalankan kontainer.



## Security Measures
* **Secret Management:** Kredensial Docker Hub disimpan dengan aman menggunakan **GitHub Repository Secrets**, bukan di-hardcode dalam file YAML.
* **Environment Isolation:** Menggunakan Docker untuk mengisolasi dependensi aplikasi dari lingkungan host (AWS).
* **Dockerignore:** Menggunakan `.dockerignore` untuk memastikan file sensitif seperti `.env` tidak terunggah ke Docker Hub.

## Local Installation
Untuk menjalankan proyek ini secara lokal, ikuti langkah berikut:

```bash
# Clone repository
git clone [https://github.com/jbesar58/developer-portfolio.git](https://github.com/jbesar58/developer-portfolio.git)

# Masuk ke direktori
cd developer-portfolio

# Install dependensi
npm install --legacy-peer-deps

# Jalankan mode development
npm run dev
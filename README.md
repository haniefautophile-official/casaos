# Instalasi CasaOS di Armbian Linux STB

![CasaOS](https://raw.githubusercontent.com/IceWhaleTech/CasaOS/main/docs/images/logo.png)

CasaOS adalah sistem operasi berbasis web yang memudahkan pengelolaan aplikasi dan layanan di server pribadi. Berikut adalah panduan langkah demi langkah untuk menginstal CasaOS di Armbian Linux STB.

## Persyaratan
Sebelum memulai instalasi, pastikan:
- Anda memiliki akses root atau menggunakan `sudo`
- Sistem Armbian Linux sudah berjalan di STB
- Koneksi internet stabil

## 1. Update Sistem
Jalankan perintah berikut untuk memastikan sistem Anda diperbarui:

```bash
sudo apt update && sudo apt upgrade -y
```

## 2. Instal Dependensi
CasaOS memerlukan beberapa dependensi. Pastikan semuanya terinstal dengan perintah berikut:

```bash
sudo apt install -y curl wget apt-transport-https ca-certificates
```

## 3. Instal CasaOS
Jalankan perintah berikut untuk menginstal CasaOS secara otomatis:

```bash
curl -fsSL https://get.casaos.io | bash
```

Proses ini akan mengunduh dan menginstal CasaOS beserta komponennya.

## 4. Akses CasaOS
Setelah instalasi selesai, akses CasaOS melalui browser dengan IP STB Anda:

```
http://IP-STB:8080
```

Contoh:

```
http://192.168.1.100:8080
```

Gunakan akun yang dibuat saat pertama kali mengakses CasaOS.

## 5. (Opsional) Cek Status CasaOS
Pastikan layanan CasaOS berjalan dengan baik:

```bash
systemctl status casaos
```

Jika ingin menghentikan, memulai ulang, atau mengaktifkan otomatis saat boot:

```bash
systemctl stop casaos
systemctl start casaos
systemctl enable casaos
```

## 6. (Opsional) Hapus CasaOS
Jika ingin menghapus CasaOS, jalankan:

```bash
curl -fsSL https://get.casaos.io/uninstall | bash
```

## Kesimpulan
Sekarang CasaOS sudah terinstal di Armbian Linux STB Anda dan siap digunakan! 🚀

Jika mengalami kendala, silakan cek [dokumentasi resmi CasaOS](https://github.com/IceWhaleTech/CasaOS) atau hubungi komunitas pengguna.


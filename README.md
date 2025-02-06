# Instalasi CasaOS di Armbian Linux STB

![CasaOS]([https://scontent-cgk1-1.xx.fbcdn.net/v/t39.30808-6/475794704_2327825944243261_9181982750804430447_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_ohc=gfnV35ZzoaQQ7kNvgF5E_WG&_nc_zt=23&_nc_ht=scontent-cgk1-1.xx&_nc_gid=AIFsOFUgQ5cCj9XaRKoBqXC&oh=00_AYAkvavQCFY928WFVyeY2vcuexKZ7L8pbmpH4QVACzKquA&oe=67A9E847)

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


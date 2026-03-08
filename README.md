# 🦁 SCLOUDS-OMNI
> **The Ultimate Infrastructure Suite for Digital Entrepreneurs.**

[![System Status](https://img.shields.io/badge/System-Operational-3fb950?style=for-the-badge&logo=statuspage)](https://setup.rdp.n8n.kuma.api.sclouds.web.id/setup.sh)
[![Platform](https://img.shields.io/badge/OS-Ubuntu_22.04+-blue?style=for-the-badge&logo=ubuntu)](https://ubuntu.com)

**Sclouds Omni** adalah framework otomasi *all-in-one* yang dirancang khusus untuk skalabilitas bisnis digital. Script ini melakukan deploy ekosistem lengkap mulai dari VPN Management, Automation Hub, hingga Cloud Browser (RDP) dalam satu baris perintah.

---

## ⚡ Quick Deployment

Gunakan perintah (freeloader) di bawah ini pada VPS bersih (**Fresh Install**). Pastikan DNS sudah diarahkan ke IP server sebelum mengeksekusi.

```bash
Please Wait Until The Freeloader has been tested, we provide your vps safe and clean
```

---

## 🏗️ What's Inside the Box?

Script ini mengintegrasikan layanan kelas industri terbaik untuk menunjang operasional komersial kamu:

| Service | Function | Key Feature |
| --- | --- | --- |
| **🦁 Marzban** | VPN Management | Multi-protocol (VLESS, VMess, Trojan) + Node Management. |
| **🤖 n8n** | Workflow Automation | Otomatisasi bisnis & integrasi API tanpa batas. |
| **🖥️ Kasm Workspaces** | Desktop-as-a-Service | RDP berbasis browser untuk AFK Gaming (Roblox) & Browsing. |
| **📊 Uptime Kuma** | Monitoring | Pantau kesehatan server & kirim notifikasi via Telegram. |
| **📦 Auto-Backup** | Data Security | Backup database otomatis ke Telegram setiap 6 jam. |
|**⚙️ Auto-Configuration Sync** | Sync Data | Sync Nginx, Docker Config, dan Database. | 
|**📁 Configure Files** | Files Management | Kelola Seluruh Service Files. |
|**🩺 Self Medic** | Restart Docker Container | Otomatis Melakukan Restart Docker Jika Docker Mati. |
|**🧹 Self Janitor** | Cleaning Cache | Otomatis Melakukan Penghapusan Log / Cache agar tidak memenuhi disk. |
|**🚀 BBR+ Turbo** | Network Accelerator | Mempercepat koneksi VPN & Web di level kernel. |
|**👤 SSH Stealth** | Security Port | Pindah ke Port 2202 untuk hindari bot brute-force. |
|**📊 Daily Report** | Server Monitoring |	Kirim laporan RAM & Disk ke Telegram tiap pagi. |
|**🛡️ UFW Shield** | Firewall Access | Proteksi ketat akses port masuk dan keluar server. |
|**🔄 Smart Restore** |	Disaster Recovery |	Satu perintah untuk restore seluruh data backup. |

---

## 🛠️ Infrastructure Overview

### Pre-Requisites

* **OS:** Ubuntu 22.04 LTS atau lebih tinggi.
* **Resources:** Minimal 2GB RAM (Recommended 4GB+ for Kasm).
* **DNS Setup:** Buat 6 Subdomain (Type A) yang mengarah ke IP VPS Anda:
1. `marzban.sclouds.web.id`
2. `node.sclouds.web.id`
3. `n8n.sclouds.web.id`
4. `kasm.sclouds.web.id`
5. `monitor.sclouds.web.id`
6. `files.sclouds.web.id`

**Jika kalian pengen mengakses seluruh website tersebut tanpa menulusuri 1 per 1 kalian bisa minta source code dari @paii_event (di discord yah).**



---

## 📝 Critical Notes

* **Hardcoded Config:** Script ini menggunakan konfigurasi *hardcoded* untuk domain `sclouds.web.id`.
* **Auto-Optimization:** Mengaktifkan SWAP 2GB secara otomatis untuk mencegah *crash* pada sistem RAM rendah.
* **Security:** Dilengkapi dengan Fail2Ban dan Firewall (UFW) yang sudah terkonfigurasi.

---

## ✨ Current Version

***Freeloader Version:** V10
***Oncoming Premium Version:** V12

## 🚀 Future Updates
* [ ] Pelican Panel (??)
* [ ] Clear All Modules (Freeloader & Premium)
* [ ] Installing Using Apikey (Premium Access)

**Created with ❤️ by Paii & SeraPH (Sclouds Corporation)**

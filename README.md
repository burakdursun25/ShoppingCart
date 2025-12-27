# 🛒 Shopping Cart Application

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Status](https://img.shields.io/badge/Status-Completed-success.svg)
![React](https://img.shields.io/badge/Made%20with-React-61DAFB.svg)

> **Kullanıcı dostu, dinamik ve responsive bir alışveriş sepeti simülasyonu.**
>
> Bu proje, modern web geliştirme pratikleri kullanılarak; ürün listeleme, sepete ekleme/çıkarma ve dinamik fiyat hesaplama işlemlerini gerçekleştiren bir React uygulamasıdır.

---

## 📖 Proje Hakkında

Bu uygulama, tipik bir e-ticaret sitesinin "Sepet" mantığını simüle eder. Kullanıcılar ürünleri inceleyebilir, sepetlerine ekleyebilir, adetleri güncelleyebilir ve anlık olarak toplam tutarı görebilirler.

Projenin temel amacı; **State Management (Durum Yönetimi)**, **Component Lifecycle** ve **Veri Akışı** konularındaki yetkinliği sergilemektir.

### 🎯 Öne Çıkan Özellikler

* **Ürün Listeleme:** Ürünlerin görsel, isim ve fiyat bilgileriyle kartlar halinde listelenmesi.
* **Sepet Yönetimi:**
    * Tek tıkla sepete ürün ekleme.
    * Sepetteki ürün adetini artırma/azaltma.
    * Ürünü sepetten tamamen çıkarma.
* **Dinamik Hesaplama:** Sepet güncellemelerinde ara toplam ve genel toplamın anlık (real-time) hesaplanması.
* **Responsive Tasarım:** Mobil ve masaüstü cihazlarla tam uyumlu arayüz.
* **Bildirimler:** (Varsa) Ürün eklendiğinde/çıkarıldığında kullanıcıya toast mesajları gösterimi.

## 🛠️ Kullanılan Teknolojiler

Bu projeyi geliştirirken aşağıdaki teknoloji yığınını (tech stack) kullandım:

* **Frontend:** [React.js / Vue.js?]
* **State Management:** [Context API / Redux Toolkit / Redux?] *(Burayı mutlaka güncelle)*
* **Styling:** [CSS3 / SASS / Tailwind CSS / Bootstrap?]
* **Paket Yöneticisi:** NPM / Yarn
* **Veri Kaynağı:** [DummyJSON / Mock Data / Local JSON]

## 📸 Ekran Görüntüleri

| Ürün Listesi | Sepet Detayı |
|:---:|:---:|
| ![Product List](./screenshots/home.png) | ![Cart](./screenshots/cart.png) |

*(Not: Projenin ana dizinine `screenshots` klasörü açıp ekran görüntülerini oraya ekleyebilirsiniz.)*

## 🚀 Kurulum ve Çalıştırma

Projeyi yerel ortamınızda (Localhost) çalıştırmak için aşağıdaki adımları izleyin:

1.  **Repoyu klonlayın:**
    ```bash
    git clone [https://github.com/burakdursun25/ShoppingCart.git](https://github.com/burakdursun25/ShoppingCart.git)
    cd ShoppingCart
    ```

2.  **Bağımlılıkları yükleyin:**
    ```bash
    npm install
    # veya
    yarn install
    ```

3.  **Uygulamayı başlatın:**
    ```bash
    npm start
    # veya
    yarn start
    ```

4.  Tarayıcınızda `http://localhost:3000` adresine gidin.

## 📂 Dosya Yapısı

```text
ShoppingCart/
├── public/
├── src/
│   ├── components/      # Ürün Kartı, Sepet, Header vb. bileşenler
│   ├── context/         # (Varsa) State yönetimi dosyaları
│   ├── styles/          # CSS/SCSS dosyaları
│   ├── App.js           # Ana uygulama bileşeni
│   └── index.js
├── package.json
└── README.md

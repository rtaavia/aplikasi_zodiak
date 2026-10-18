import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()));

// Model Data Zodiak
class ZodiakModel {
  final String nama;
  final String tanggal;
  final String assetGambar;
  final String umum;
  final String karir;
  final String keuangan;
  final String link;

  ZodiakModel({
    required this.nama,
    required this.tanggal,
    required this.assetGambar,
    required this.umum,
    required this.karir,
    required this.keuangan,
    required this.link,
  });
}

// Data 12 Zodiak
final List<ZodiakModel> daftarZodiak = [
  ZodiakModel(
    nama: 'ARIES',
    tanggal: '21 Maret - 19 April',
    assetGambar: 'assets/images/aries.png',
    umum: 'Semangat tinggi hari ini akan membantumu menyelesaikan berbagai tantangan.',
    karir:
        '•  Fokus untuk menuntaskan apa yang sudah berjalan, alih-alih memulai sesuatu yang baru.\n' 
        '•  Kedisiplinan Anda mulai diperhatikan.\n' 
        '•  Tetaplah bersabar meski kemajuannya terasa lambat.\n',
    keuangan:
        '•  Tinjau sumber daya Anda sebelum mengambil keputusan. Hindari pengeluaran impulsif.\n'
        '•  Pilihan yang cermat dan praktis hari ini akan menjaga stabilitas Anda di masa depan.\n'
        '•  Tabungan dalam jumlah kecil pun akan terkumpul menjadi besar.\n',
    link: 'https://zodiacroots.com/daily-horoscope/aries/',
  ),
  ZodiakModel(
    nama: 'TAURUS',
    tanggal: '20 April - 20 Mei',
    assetGambar: 'assets/images/taurus.png',
    umum:'Kenyamanan dan ketenangan rumah adalah prioritas utama Anda saat ini.',
    karir:
        '•  Peluang datang melalui upaya yang konsisten, bukan langkah-langkah mendadak.\n'
        '•  Fokuslah pada satu prioritas dan tuntaskan hingga selesai.\n'
        '•  Kesabaran akan membuahkan pengakuan.\n',
    keuangan:
        '•  Venus mendukung pengambilan keputusan terkait nilai, namun hindari pengeluaran yang impulsif.\n'
        '•  Periksa anggaran Anda dan buatlah satu keputusan yang matang demi meningkatkan keamanan finansial Anda.\n'
        '•  Langkah yang perlahan namun pasti akan membuahkan hasil hari ini.\n',
    link: 'https://zodiacroots.com/daily-horoscope/taurus/',
  ),
  ZodiakModel(
    nama: 'GEMINI',
    tanggal: '21 Mei - 20 Juni',
    assetGambar: 'assets/images/gemini.png',
    umum: 'Kemampuan komunikasi yang baik membuka jalan keluar dari kesalahpahaman.',
    karir: 
        '•  Momentum karier Anda sedang stabil.\n' 
        '•  Planet penguasa Anda, Merkurius, mempertajam cara Anda menyampaikan gagasan serta ketepatan waktu Anda.\n' 
        '•  Satu percakapan yang terarah bisa membuka sebuah peluang.\n',
    keuangan: 
        '•  Soal keuangan, kehati-hatian dan peninjauan sangat penting.\n'
        '•  Periksa langganan Anda, pengeluaran kecil, dan biaya rutin.\n'
        '•  Penyesuaian praktis sekarang dapat mencegah pengeluaran yang lebih besar di kemudian hari.\n'
        '•  Hindari pembelian impulsif hari ini.\n',
    link: 'https://zodiacroots.com/daily-horoscope/gemini/',
  ),
  ZodiakModel(
    nama: 'CANCER',
    tanggal: '21 Juni - 22 Juli',
    assetGambar: 'assets/images/cancer.png',
    umum: 'Intuisi Anda sedang kuat-kuatnya. Dengarkan kata hati.',
    karir: 
        '•  Momentum karier Anda stabil, bukan eksplosif.\n' 
        '•  Gunakan energi Anda untuk menyelesaikan satu tugas prioritas daripada menyebar fokus.\n'
        '•  Penguasa Anda, Bulan, mendukung produktivitas praktis.\n'
        '•  Rekan kerja mungkin memperhatikan keandalan Anda.\n',
    keuangan: 
        '•  Urusan keuangan menuntut pola pikir yang mengutamakan keamanan.\n' 
        '•  Tinjau kembali anggaran atau rencana tabungan Anda.\n' 
        '•  Penyesuaian kecil saat ini dapat mencegah tekanan di masa depan.\n'
        '•  Hindari pembelian impulsif; pilihan yang praktis selaras dengan kondisi keuangan yang stabil saat ini.\n',
    link: 'https://zodiacroots.com/daily-horoscope/cancer/',
  ),
  ZodiakModel(
    nama: 'LEO',
    tanggal: '22 Juli - 22 Agustus',
    assetGambar: 'assets/images/leo.png',
    umum: 'Kamu dikelilingi orang-orang yang suportif. Keluarga dan sahabat-sahabatmu akan selalu mendukungmu.',
    karir: 
        '•  Kemajuan yang stabil lebih baik daripada pengumuman yang muluk-muluk.\n'
        '•  Fokuskan energi Anda pada satu tugas dalam satu waktu; selesaikan apa yang sedang berjalan sebelum memulai sesuatu yang baru.\n'
        '•  Kehadiran Anda hari ini memiliki pengaruh yang berarti.\n'
        '•  Tunjukkan kepemimpinan melalui konsistensi, bukan dengan banyak bicara atau membuat kehebohan.\n',
    keuangan:
        '•  Skor keuangan Anda solid, tetapi ini adalah hari evaluasi, bukan hari pengeluaran.\n'
        '•  Periksa langganan, kebocoran kecil, dan biaya berulang.\n'
        '•  Audit diam-diam sekarang akan melindungi sumber daya Anda di kemudian hari.\n'
        '•  Pilih keamanan daripada impulsif, dan diri Anda di masa depan akan berterima kasih.\n',
    link: 'https://zodiacroots.com/daily-horoscope/leo/',
  ),
  ZodiakModel(
    nama: 'VIRGO',
    tanggal: '23 Agustus - 22 September',
    assetGambar: 'assets/images/virgo.png',
    umum: 'Hari ini adalah waktu yang tepat untuk merapikan kembali rencana jangka panjangmu.',
    karir: 
        '•  Energi dalam karier bersifat stabil, bukan meledak-ledak.\n'
        '•  Fokuslah pada satu tugas yang dapat mendorong tercapainya tujuan yang lebih besar.\n'
        '•  Pikiran Anda, yang dipengaruhi oleh Merkurius, mampu menangkap detail yang terlewatkan oleh orang lain.\n'
        '•  Manfaatkan ketelitian tersebut untuk menyelesaikan apa yang telah Anda mulai.\n',
    keuangan:
        '•  Dalam urusan keuangan, bersikaplah hati-hati dan lakukan peninjauan.\n'
        '•  Periksa anggaran Anda sebelum berbelanja.\n'
        '•  Penyesuaian kecil saat ini dapat mencegah tekanan yang lebih besar di kemudian hari.\n'
        '•  Utamakan keamanan daripada kecepatan.\n',
    link: 'https://zodiacroots.com/daily-horoscope/virgo/',
  ),
  ZodiakModel(
    nama: 'LIBRA',
    tanggal: '23 September - 22 Oktober',
    assetGambar: 'assets/images/libra.png',
    umum: 'Menjaga keseimbangan antara pekerjaan dan waktu istirahat sangat penting.',
    karir: 
        '•  Momentum karier sedang stabil.\n'
        '•  Fase Bulan Sabit Awal (Waxing Crescent) mendukung penyelesaian satu tugas yang bermakna.\n'
        '•  Pilihlah pekerjaan yang mencerminkan prioritas Anda yang sesungguhnya, lalu selesaikanlah sebelum memulai sesuatu yang baru.\n',
    keuangan: 
        '•  Urusan keuangan memerlukan tinjauan praktis.\n'
        '•  Periksalah anggaran Anda atau pengeluaran yang terjadi secara rutin.\n'
        '•  Penyesuaian kecil saat ini dapat meningkatkan rasa aman Anda di kemudian hari.\n'
        '•  Hindari pembelian yang bersifat impulsif.\n',
    link: 'https://zodiacroots.com/daily-horoscope/libra/',
  ),
  ZodiakModel(
    nama: 'SCORPIO',
    tanggal: '23 Oktober - 21 November',
    assetGambar: 'assets/images/scorpio.png',
    umum: 'Fokus dan tekad kuat membantumu menuntaskan urusan tertunda.',
    karir: 
        '•  Berkolaborasilah dengan orang lain untuk mendapatkan momentum.\n'
        '•  Langkah yang stabil akan membuahkan hasil yang lebih baik dibandingkan terburu-buru.\n',
    keuangan: 
        '•  Urusan keuangan menuntut kehati-hatian. Tinjau anggaran Anda dan hindari pembelian impulsif.\n'
        '•  Pendekatan yang konservatif akan melindungi sumber daya Anda.\n'
        '•  Langkah-langkah kecil yang konsisten akan membawa Anda pada keamanan finansial.\n',
    link: 'https://zodiacroots.com/daily-horoscope/scorpio/',
  ),
  ZodiakModel(
    nama: 'SAGITTARIUS',
    tanggal: '22 November - 21 Desember',
    assetGambar: 'assets/images/sagitarius.png',
    umum: 'Energi positif membawa suasana ceria di sekitar Anda.',
    karir: 
        '•  Energi dalam karier cenderung stabil.\n'
        '•  Fokuslah untuk menyelesaikan apa yang telah Anda mulai, alih-alih meluncurkan sesuatu yang baru.\n'
        '•  Jupiter, planet yang menaungi Anda, lebih mendukung upaya yang konsisten daripada langkah-langkah besar yang berisiko.\n'
        '•  Satu tugas yang tuntas jauh lebih berharga daripada tiga tugas yang baru setengah jalan.\n',
    keuangan: 
        '•  Uang menuntut pilihan-pilihan praktis hari ini.\n'
        '•  Pertimbangkanlah sebelum Anda membelanjakannya.\n'
        '•  Mengelola sumber daya dengan cermat jauh lebih menguntungkan daripada sekadar berjudi secara gegabah.\n'
        '•  Keputusan-keputusan kecil yang bijaksana akan terakumulasi secara diam-diam untuk mendukung kepentingan Anda.\n',
    link: 'https://zodiacroots.com/daily-horoscope/sagittarius/',
  ),
  ZodiakModel(
    nama: 'CAPRICORN',
    tanggal: '22 Desember - 19 Januari',
    assetGambar: 'assets/images/capricorn.png',
    umum: 'Dedikasi tinggi Anda membuahkan hasil manis di akhir pekan ini.',
    karir: 
        '•  Momentum karier Anda stabil, tidak meledak-ledak.\n'
        '•  Fokuslah pada satu prioritas yang mencerminkan tujuan jangka panjang Anda.\n'
        '•  Saturnus menghargai kedisiplinan, jadi selesaikan apa yang telah Anda mulai.\n'
        '•  Langkah kecil yang nyata hari ini jauh lebih berarti daripada rencana besar.\n'
        '•  Bersabarlah terhadap rekan kerja.\n',
    keuangan: 
        '•  Urusan keuangan menuntut pertimbangan yang mengutamakan keamanan.\n'
        '•  Tinjau anggaran Anda sebelum melakukan pengeluaran.\n'
        '•  Saturn mendukung pilihan-pilihan yang praktis, jadi hindari pembelian impulsif.\n'
        '•  Pendekatan yang hati-hati hari ini akan melindungi sumber daya Anda dan membangun stabilitas untuk masa depan.\n',
    link: 'https://zodiacroots.com/daily-horoscope/capricorn/',
  ),
  ZodiakModel(
    nama: 'AQUARIUS',
    tanggal: '20 Januari - 18 Februari',
    assetGambar: 'assets/images/aquarius.png',
    umum: 'Pemikiran inovatif Anda menjadi solusi bagi masalah bersama.',
    karir: 
        '•  Momentum karier Anda stabil, tidak meledak-ledak.\n'
        '•  Manfaatkan fokus khas tanda zodiak berelemen Udara yang Anda miliki untuk menyelesaikan satu tugas prioritas.\n'
        '•  Hindari mengambil terlalu banyak tanggung jawab. Menetapkan batasan yang jelas di tempat kerja akan menjaga kesehatan Anda.\n',
    keuangan: 
        '•  Kondisi keuangan tampak stabil dengan skor 64.\n'
        '•  Pengaruh Saturnus mendukung pilihan-pilihan yang praktis.\n'
        '•  Periksa kembali langganan atau pengeluaran-pengeluaran kecil yang tidak perlu.\n'
        '•  Tunda pembelian yang tidak mendesak hingga esok hari.\n',
    link: 'https://zodiacroots.com/daily-horoscope/aquarius/',
  ),
  ZodiakModel(
    nama: 'PISCES',
    tanggal: '19 Februari - 20 Maret',
    assetGambar: 'assets/images/pisces.png',
    umum: 'Kreativitas seni dan imajinasi Anda sedang berada di puncaknya.',
    karir:
        '•  Kemajuan karier berjalan stabil, meski tidak terlalu mencolok.\n'
        '•  Posisi Bulan di rumah ke-11 Anda menyoroti pentingnya kerja sama tim dan membangun jejaring.\n'
        '•  Berkolaborasilah alih-alih bersaing. Intuisi Anda mengenai suatu urusan pekerjaan layak untuk dipercaya.\n'
        '•  Fokuslah pada satu tugas yang dapat mendorong tercapainya tujuan jangka panjang.\n',
    keuangan: 
        '•  Saturnus di rumah ke-2 Anda menuntut kehati-hatian dalam pengeluaran.\n'
        '•  Tinjau kembali anggaran Anda dan prioritaskan keamanan daripada tindakan impulsif.\n'
        '•  Pilihan yang bijak saat ini akan mencegah stres di masa depan.\n'
        '•  Hindari meminjamkan uang hari ini, kecuali jika Anda siap menanggung risiko kehilangan uang tersebut.\n',
    link: 'https://zodiacroots.com/daily-horoscope/pisces/',
  ),
];

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int indexNav = 0, selectedZodiakIndex = 0;

  void navigate(int index) {
    setState(() => indexNav = index);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Color(0xFFF97DA6);
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (ctx) => IconButton(
            icon: ImageIcon(
              AssetImage('assets/images/moon-and-stars.png'),
              color: Colors.white,
            ),
            tooltip: 'Buka Menu',
            onPressed: () => Scaffold.of(ctx).openDrawer(),
          ),
        ),
        title: Text(indexNav == 0 ? 'Home' : 'Zodiak Ramalan'),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Text(
                'Menu Utama',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => navigate(0),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Zodiak (12 Zodiak)'),
              onTap: () => navigate(1),
            ),
          ],
        ),
      ),
      body: indexNav == 0
          ? HomePage(
              onSelectZodiak: (i) => setState(() {
                selectedZodiakIndex = i;
                indexNav = 1;
              }),
            )
          : ZodiakScreen(
              key: ValueKey(selectedZodiakIndex),
              initialIndex: selectedZodiakIndex,
            ),
    );
  }
}

// Halaman Home
class HomePage extends StatelessWidget {
  final ValueChanged<int> onSelectZodiak;
  const HomePage({super.key, required this.onSelectZodiak});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFF97DA6), Colors.pinkAccent],
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '✨ Selamat Datang!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Pilih salah satu zodiak di bawah untuk melihat ramalan hari ini:',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              'Daftar 12 Zodiak',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9,
            ),
            itemCount: daftarZodiak.length,
            itemBuilder: (context, i) {
              final z = daftarZodiak[i];
              return InkWell(
                onTap: () => onSelectZodiak(i),
                borderRadius: BorderRadius.circular(16),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                    border: Border.all(color: Colors.pink.shade100),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        z.assetGambar,
                        width: 60,
                        height: 60,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: 10),
                      Text(
                        z.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        z.tanggal,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Halaman Detail Zodiak
class ZodiakScreen extends StatefulWidget {
  final int initialIndex;
  const ZodiakScreen({super.key, this.initialIndex = 0});

  @override
  State<ZodiakScreen> createState() => ZodiakScreenState();
}

class ZodiakScreenState extends State<ZodiakScreen> {
  late int currentIndex = widget.initialIndex;

  void shiftZodiak(int step) => setState(
    () => currentIndex =
        (currentIndex + step + daftarZodiak.length) % daftarZodiak.length,
  );

  // Fungsi pembuka link URL
  Future<void> bukaLink(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Tidak dapat membuka link')),
        );
      }
    }
  }

  Widget buildSection(String title, String content) => Padding(
    padding: EdgeInsets.only(bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 6), // Menambah jarak spasi judul ke teks bawahnya
        Text(
          content,
          style: TextStyle(
            fontSize: 14,
            height: 1.6, // Mengatur jarak antar baris teks agar lebih lega dan
          ),
        ),
      ],
    ),
  );

  Widget navBtn(
    String label,
    IconData icon,
    VoidCallback onTap,
    Color bg,
    Color fg,
    Color ic,
  ) => ElevatedButton.icon(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
      backgroundColor: bg,
      foregroundColor: fg,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    ),
    icon: CircleAvatar(
      backgroundColor: Colors.white,
      radius: 12,
      child: Icon(icon, size: 16, color: ic),
    ),
    label: Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final zodiak = daftarZodiak[currentIndex];
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    zodiak.assetGambar,
                    width: 110,
                    height: 110,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        zodiak.nama,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Tanggal : ${zodiak.tanggal}',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(height: 32, thickness: 1),
            buildSection('UMUM', zodiak.umum),
            buildSection('KARIR', zodiak.karir),
            buildSection('KEUANGAN', zodiak.keuangan),

            // untuk klik link yg di tampikna
            if (zodiak.link.isNotEmpty) ...[
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () => bukaLink(zodiak.link),
                  icon: Icon(Icons.open_in_new, color: Colors.white, size: 18),
                  label: Text(
                    'Baca Selengkapnya di Wikipedia',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF97DA6),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                navBtn(
                  'Back',
                  Icons.arrow_back,
                  () => shiftZodiak(-1),
                  Colors.grey[200]!,
                  Colors.black87,
                  Colors.black54,
                ),
                navBtn(
                  'Next',
                  Icons.arrow_forward,
                  () => shiftZodiak(1),
                  Colors.amber,
                  Colors.deepPurple,
                  Colors.orange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../application/app/app.locator.dart';
import '../../../application/app/app.router.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  Future initialize() async {
    setBusy(true);
    setBusy(false);
  }

  Future navigateToPraInformasi() async {
    await _navigationService.navigateTo(Routes.praInformasiView);
  }

  Future navigateToInformasiDataDiri() async {
    await _navigationService.navigateTo(Routes.informasiDataDiriView);
  }

  List<String> termsAndConditions = [
    'Warga Negara Indonesia (WNI)',
    'Usia calon debitur/debitur minimal 21 tahun atau sudah menikah sebelum berusia 21 tahun. Batasan maksimal usia calon debitur/debitur Kredit Pinang PARI Maksima ditambah dengan jangka waktu kredit adalah maksimal 65 tahun',
    'Akta nikah / akta cerai / Surat Keterangan (SK) belum menikah',
    'Rekening koran 6 (enam) bulan terakhir',
    'Tidak termasuk dalam Daftar Hitam Nasional Bank Indonesia (DHN-BI), baik badan usaha maupun perorangan',
    'Memiliki Kartu Tanda Penduduk elektronik (KTP-el) calon debitur/debitur dan suami/isteri calon debitur/debitur dan harus dicocokkan dengan data kependudukan',
    'Memiliki Nomor Pokok Wajib Pajak (NPWP); Memiliki Surat Perizinan Usaha (SIUP, TDP, NIB, dan sejenisnya). Untuk calon debitur/debitur yang belum mempunyai',
    'Surat Perizinan Usaha (SIUP, TDP, NIB, dan sejenisnya) dapat menggunakan Surat Keterangan Usaha minimal dari Kepala Desa/Lurah setempat',
    'Calon debitur memiliki usaha produktif yang layak dibiayai dengan minimal telah menjalankan usaha aktif selama 2 (dua) tahun berturut-turut dan telah memperoleh laba bersih pada 1 (satu) tahun terakhir serta dapat dibuktikan dengan legalitas usaha dan laporan keuangan',
  ];
}

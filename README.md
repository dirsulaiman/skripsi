# Skripsi
Template Skripsi LaTex, Program Studi Ilmu Komputer, Fakultas MIPA, Universitas Hasanuddin Makassar


### Universitas Hasanuddin
<p align="center">
    <img alt="Logo Unhas" src="https://raw.githubusercontent.com/dirsulaiman/Skripsi/master/images/logoUH-tumbnail.png" width="170px">
</p>


### Quick Start
#### Windows, Linux, Mac OS
- Install TexLive, dan package yang dibutuhkan jika perlu
- Download atau clone Template Skripsi ini. Anda juga dapat [Fork](https://docs.github.com/en/free-pro-team@latest/github/getting-started-with-github/fork-a-repo) repository ini ke akun Github anda
- Kemudian lakukan modifikasi sesuai keinginan dan kebutuhan
- Jalankan `$ pdflatex seminar-proposal.tex` untuk men-compile file `seminar-proposal.tex` menjadi `seminar-proposal.pdf`
> TexLive hanya tersedia untuk [Linux](http://www.tug.org/texlive/quickinstall.html) dan [Windows](http://www.tug.org/texlive/windows.html), untuk Mac OS gunakan [MacTex](http://www.tug.org/mactex/). 
> [MikTex](https://miktex.org/) juga dapat digunakan sebagai alternatif TexLive di Windows. 
> Template Skripsi ini menggunakan PdfLatex sebagai engine, bagi pengguna LuaLatex atau XeLatex mungkin memerlukan sedikit penyesuaikan dan perbaikan. 


#### Overleaf (Online LaTex Editor)
Jika anda mengalami banyak masalah dalam proses install LaTex dan konfigurasi packagenya mungkin Online LaTex Editor bisa menjadi solusinya. Overleaf adalah salah satu layanan LaTex editor berbasis web. Anda hanya perlu melakukan registrasi untuk memulai menulis project LaTex. [Overleaf Project](https://www.overleaf.com/read/xvdzphmvntrb)
- Registrasi di [Overleaf.com](https://www.overleaf.com/login) kemudian login 
- Download [Skripsi.zip](https://github.com/dirsulaiman/Skripsi/files/5500599/Skripsi_v0.1.zip) atau clone project ini kemudian compress dalam bentuk zip
- Buat project baru pada Overleaf.com dengan klik "New Project" kemudian pilih "Upload Project"
- Upload [Skripsi.zip](https://github.com/dirsulaiman/Skripsi/files/5500599/Skripsi_v0.1.zip) pada halaman yang disediakan
- Mulai menulis
> Selain Overleaf masih banyak juga LaTex editor online yang bagus seperti [Papeeria](https://www.papeeria.com), [ShareLaTex](https://www.sharelatex.com/). Kunjungi [The Latex Project](https://www.latex-project.org/get/) untuk info lebih lanjut. 
> Jika anda menggunakan [Papeeria](https://www.papeeria.com), ingat untuk mengganti engine menjadi PdfLaTex dan TexLive 2019 sebelum men-compile project ini


### Contents

```
Skripsi/
    ├── bibtex/
    │   └── daftar-pustaka.bib
    ├── images/
    │   └── logoUH.png
    ├── include/
    │   ├── bab1.tex
    │   ├── bab2.tex
    │   ├── bab3.tex
    │   ├── bab4.tex
    │   ├── bab5.tex
    │   ├── halaman-abstrak.tex
    │   ├── halaman-pernyataan-persetujuan-publikasi-karya-ilmiah.tex
    │   ├── kata-pengantar.tex
    │   └── lampiran.tex
    ├── lib/
    │   └── myskripsi.cls
    ├── tables/
    ├── seminar-hasil.tex
    ├── seminar-proposal.tex
    └── skripsi.tex
```


### Features
#### Tabel
Menampilkan [tables/hasil-fps.csv](https://github.com/dirsulaiman/Skripsi/blob/master/tables/hasil-fps.csv) sebagai tabel dalam dokumen
```
\begin{atable}
    \caption{Perbandingan waktu komputasi}
    \label{table:hasil-fps}
    \csvreader[
        head to column names,
        tabular=lcc,
        before table=\rowcolors{2}{gray!15}{gray!30},
        table head= \rowcolor{gray!50!black} 
            \color{white} Filter & 
            \color{white} Tanpa FPGA & 
            \color{white} Dengan FPGA \\]
        {tables/hasil-fps.csv}
        {filter=\filter, tanpafpga=\tanpafpga, denganfpga=\denganfpga}
        {\filter & \tanpafpga & \denganfpga }
\end{atable}
```
<p align="center">
    <img alt="Contoh tabel" src="https://raw.githubusercontent.com/dirsulaiman/Skripsi/master/images/contoh-tabel.png">
</p>


#### Gambar
Menampilkan gambar [images/jenis-jenis-citra.png](https://github.com/dirsulaiman/Skripsi/blob/master/tables/hasil-fps.csv) pada dokumen
```
\begin{afigure}
    \includegraphics[width=0.85\textwidth, center]{images/jenis-jenis-citra.png}
    \caption{(a) Contoh citra biner, (b) contoh citra grayscale, (c) contoh citra warna.}
    \label{fig:jenis-citra}
\end{afigure}
```
<p align="center">
    <img alt="Jenis-jenis citra" src="https://raw.githubusercontent.com/dirsulaiman/Skripsi/master/images/contoh-gambar.png">
</p>


#### Persamaan Matematika
```
\begin{equation}
    \label{eq:conv2}
    \begin{split}
        h(x) = f(x) * g(x) = \int_{-\infty}^{\infty} f(a) g(x-a) da
    \end{split}
\end{equation}
```
<p align="center">
<img src="https://render.githubusercontent.com/render/math?math=h(x) = f(x) * g(x) = \int_{-\infty}^{\infty} f(a) g(x-a) da">
</p>


#### Daftar Pustaka
[bibtex/daftar-pustaka.bib](https://github.com/dirsulaiman/Skripsi/blob/master/bibtex/daftar-pustaka.bib)
```
@MISC{site:biswas,
    HOWPUBLISHED = "\url{https://towardsdatascience.com/introduction-to-fpga-and-its-architecture-20a62c14421c}",
    AUTHOR = "Priyabrata Biswas",
    TITLE = "Introduction to FPGA and its Architecture",
    YEAR = "2019",
    NOTE = "Accessed on 2020-06-18"
}
@ARTICLE{soa:castellano,
    AUTHOR = "G. Castellano and D. De Caro and D. Esposito and P. Bifulco and E. Napoli and N. Petra and E. Andreozzi and M. Cesarelli and A. G. M. Strollo",
    TITLE = "An FPGA-Oriented Algorithm for Real-Time Filtering of Poisson Noise in Video Streams, with Application to X-Ray Fluoroscopy",
    JOURNAL = "Circuits, Systems, and Signal Processing",
    YEAR = "2019",
    MONTH = "January",
    DOI = "10.1007/s00034-018-01020-x"
}
```
Tambahkan pada preamble dokumen latex
```
\usepackage[
    backend=biber,
    style=authoryear,
    citestyle=authoryear,
    sorting=nty,
    giveninits=false,
    maxbibnames=3
    ]{biblatex}
\addbibresource{bibtex/daftar-pustaka.bib}
```
```
...
\thecite{soa:castellano}
...
\thecite{site:biswas}
```
<p align="center">
    <img alt="Jenis-jenis citra" src="https://raw.githubusercontent.com/dirsulaiman/Skripsi/master/images/contoh-daftar-pustaka.png">
</p>


#### Makefile
Compile file seminar-proposal.tex dan update referensi pada citasi
```
make run file=seminar-proposal
```
Menghapus file hasil compile yang tidak diperlukan 
```
make clear file=seminar-proposal
```


### Required Package
- indentfirst
- ragged2e
- hyphenat
- newtxtext, newtxmath
- graphicx
- adjustbox
- xcolor
- csvsimple
- setspace
- tocloft
- fancyhdr
- hyperref
- chngcntr
- caption
- enumitem
- background


### Latex Version
>pdfTeX 3.14159265-2.6-1.40.19 (TeX Live 2019/dev/Debian)
>kpathsea version 6.3.1/dev
>Copyright 2018 Han The Thanh (pdfTeX) et al.
>There is NO warranty.  Redistribution of this software is
>covered by the terms of both the pdfTeX copyright and
>the Lesser GNU General Public License.
>For more information about these matters, see the file
>named COPYING and the pdfTeX source.
>Primary author of pdfTeX: Han The Thanh (pdfTeX) et al.
>Compiled with libpng 1.6.34; using libpng 1.6.36
>Compiled with zlib 1.2.11; using zlib 1.2.11
>Compiled with xpdf version 4.00


### Notes
- ...
- ...

> Mawar bukan setangkai, kumbang bukan seekor. 
> Patah tumbuh, hilang berganti.


### Issues, Feedback and Suggestions
> Penulis sadar template skripsi ini masih perlu banyak perbaikan, untuk itu kami menerima masukan, saran dan laporan apabila terdapat error atau masalah dalam template ini.
- Klik [New issue](https://github.com/dirsulaiman/Skripsi/issues/new) untuk melaporkan masalah yang harus kami perbaiki dalam template ini.
- Terima kasih kepada semua pihak dan kami berharap template skripsi ini dapat membantu dalam penulisan skripsi teman-teman.


### License
Source file: [BSD License](https://github.com/dirsulaiman/Skripsi/blob/master/LICENSE)
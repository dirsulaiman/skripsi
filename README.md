# Skripsi
Program Studi Ilmu Komputer, Fakultas MIPA, Universitas Hasanuddin Makassar


### Universitas Hasanuddin
<p align="center">
    <img alt="Logo Unhas" src="https://raw.githubusercontent.com/dirsulaiman/Skripsi/master/images/logoUH-tumbnail.png" width="170px">
</p>



### Quick Start
manual cara pakai
#### Windows
#### Linux

#### Overleaf
https://www.overleaf.com/read/xvdzphmvntrb


### Contents

```
Skripsi/
    ├── bibtex/
    │   └── daftar-pustaka.bib
    ├── images/
    ├── include/
    │   ├── bab1.tex
    │   ├── bab2.tex
    │   ├── bab3.tex
    │   ├── bab4.tex
    │   ├── bab5.tex
    │   └── lampiran.tex
    ├── lib/
    │   └── myskripsi.cls
    ├── tables/
    ├── hasil.tex
    ├── proposal.tex
    └── skripsi.tex
```


### Fitur
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
Compile file proposal.tex dan update referensi pada citasi
```
make run file=proposal
```
Menghapus file hasil compile yang tidak diperlukan 
```
make clear file=proposal
```

### Required Package
- indentfirst
- ragged2e
- hyphenat
- newtxtext, newtxmath
- graphicx
- xcolor
- csvsimple
- setspace
- tocloft
- fancyhdr
- hyperref
- chngcntr
- caption
- enumitem


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
- Apabila setelah terjadi bla-blabla
- Setelah file.tex dicompile maka .....

> We're living the future so
> the present is our past.


### License
Source file: [BSD License](https://github.com/dirsulaiman/Skripsi/blob/master/LICENSE)
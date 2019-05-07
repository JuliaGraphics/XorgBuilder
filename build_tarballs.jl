# Note that this script can accept some limited command-line arguments, run
# `julia build_tarballs.jl --help` to see a usage message.
using BinaryBuilder
using BinaryProvider

name = "Xorg"
version = v"7.5"
# url = "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.34/util-linux-2.34-rc1.tar.gz"
# path = download(url)
# hash = open(path) do io
#     bytes2hex(BinaryProvider.sha256(io))
# end

# libs = [
#     "bigreqsproto-1.1.2.tar.bz2",
#     "compositeproto-0.4.2.tar.bz2",
#     "damageproto-1.2.1.tar.bz2",
#     "dmxproto-2.3.1.tar.bz2",
#     "dri2proto-2.8.tar.bz2",
#     "dri3proto-1.0.tar.bz2",
#     "fixesproto-5.0.tar.bz2",
#     "fontsproto-2.1.3.tar.bz2",
#     "glproto-1.4.17.tar.bz2",
#     "inputproto-2.3.2.tar.bz2",
#     "kbproto-1.0.7.tar.bz2",
#     "presentproto-1.1.tar.bz2",
#     "randrproto-1.5.0.tar.bz2",
#     "recordproto-1.14.2.tar.bz2",
#     "renderproto-0.11.1.tar.bz2",
#     "resourceproto-1.2.0.tar.bz2",
#     "scrnsaverproto-1.2.2.tar.bz2",
#     "videoproto-2.3.3.tar.bz2",
#     "xcmiscproto-1.2.2.tar.bz2",
#     "xextproto-7.3.0.tar.bz2",
#     "xf86bigfontproto-1.2.0.tar.bz2",
#     "xf86dgaproto-2.1.tar.bz2",
#     "xf86driproto-2.1.1.tar.bz2",
#     "xf86vidmodeproto-2.3.1.tar.bz2",
#     "xineramaproto-1.2.1.tar.bz2",
#     "xproto-7.0.31.tar.bz2",
# ]
# open("deps.jl", "w") do fio
#     println(fio, "sources = [")
#     for lib in libs
#         url = "https://www.x.org/pub/individual/proto/" * lib
#         println(url)
#         path = download(url)
#         hash = open(path) do io
#             bytes2hex(BinaryProvider.sha256(io))
#         end
#         println(fio, repr(url), " => ", repr(hash), ",")
#     end
#     println(fio, "]")
# end
#> Collection of sources required to build Fontconfig
#

sources = [
    "http://xcb.freedesktop.org/dist/libpthread-stubs-0.3.tar.bz2" => "35b6d54e3cc6f3ba28061da81af64b9a92b7b757319098172488a660e3d87299",
    "https://ftp.gnu.org/gnu/pth/pth-2.0.7.tar.gz" => "72353660c5a2caafd601b20e12e75d865fd88f6cf1a088b306a3963f0bc77232",
    "http://xorg.freedesktop.org/releases/individual/util/util-macros-1.19.0.tar.bz2" => "2835b11829ee634e19fa56517b4cfc52ef39acea0cd82e15f68096e27cbed0ba",
    "ftp://ftp.gnu.org/gnu/gettext/gettext-0.19.tar.gz" => "a9f9c7764bc68782aca57687a1f16c228bc321069c538325923513b841bd847c",
    # xorg protocol headers
    "https://www.x.org/pub/individual/proto/bigreqsproto-1.1.2.tar.bz2" => "462116ab44e41d8121bfde947321950370b285a5316612b8fce8334d50751b1e",
    "https://www.x.org/pub/individual/proto/compositeproto-0.4.2.tar.bz2" => "049359f0be0b2b984a8149c966dd04e8c58e6eade2a4a309cf1126635ccd0cfc",
    "https://www.x.org/pub/individual/proto/damageproto-1.2.1.tar.bz2" => "5c7c112e9b9ea8a9d5b019e5f17d481ae20f766cb7a4648360e7c1b46fc9fc5b",
    "https://www.x.org/pub/individual/proto/dmxproto-2.3.1.tar.bz2" => "e72051e6a3e06b236d19eed56368117b745ca1e1a27bdc50fd51aa375bea6509",
    "https://www.x.org/pub/individual/proto/dri2proto-2.8.tar.bz2" => "f9b55476def44fc7c459b2537d17dbc731e36ed5d416af7ca0b1e2e676f8aa04",
    "https://www.x.org/pub/individual/proto/dri3proto-1.0.tar.bz2" => "01be49d70200518b9a6b297131f6cc71f4ea2de17436896af153226a774fc074",
    "https://www.x.org/pub/individual/proto/fixesproto-5.0.tar.bz2" => "ba2f3f31246bdd3f2a0acf8bd3b09ba99cab965c7fb2c2c92b7dc72870e424ce",
    "https://www.x.org/pub/individual/proto/fontsproto-2.1.3.tar.bz2" => "259046b0dd9130825c4a4c479ba3591d6d0f17a33f54e294b56478729a6e5ab8",
    "https://www.x.org/pub/individual/proto/glproto-1.4.17.tar.bz2" => "adaa94bded310a2bfcbb9deb4d751d965fcfe6fb3a2f6d242e2df2d6589dbe40",
    "https://www.x.org/pub/individual/proto/inputproto-2.3.2.tar.bz2" => "893a6af55733262058a27b38eeb1edc733669f01d404e8581b167f03c03ef31d",
    "https://www.x.org/pub/individual/proto/kbproto-1.0.7.tar.bz2" => "f882210b76376e3fa006b11dbd890e56ec0942bc56e65d1249ff4af86f90b857",
    "https://www.x.org/pub/individual/proto/presentproto-1.1.tar.bz2" => "f69b23a8869f78a5898aaf53938b829c8165e597cda34f06024d43ee1e6d26b9",
    "https://www.x.org/pub/individual/proto/randrproto-1.5.0.tar.bz2" => "4c675533e79cd730997d232c8894b6692174dce58d3e207021b8f860be498468",
    "https://www.x.org/pub/individual/proto/recordproto-1.14.2.tar.bz2" => "a777548d2e92aa259f1528de3c4a36d15e07a4650d0976573a8e2ff5437e7370",
    "https://www.x.org/pub/individual/proto/renderproto-0.11.1.tar.bz2" => "06735a5b92b20759204e4751ecd6064a2ad8a6246bb65b3078b862a00def2537",
    "https://www.x.org/pub/individual/proto/resourceproto-1.2.0.tar.bz2" => "3c66003a6bdeb0f70932a9ed3cf57cc554234154378d301e0c5cfa189d8f6818",
    "https://www.x.org/pub/individual/proto/scrnsaverproto-1.2.2.tar.bz2" => "8bb70a8da164930cceaeb4c74180291660533ad3cc45377b30a795d1b85bcd65",
    "https://www.x.org/pub/individual/proto/videoproto-2.3.3.tar.bz2" => "c7803889fd08e6fcaf7b68cc394fb038b2325d1f315e571a6954577e07cca702",
    "https://www.x.org/pub/individual/proto/xcmiscproto-1.2.2.tar.bz2" => "b13236869372256c36db79ae39d54214172677fb79e9cdc555dceec80bd9d2df",
    "https://www.x.org/pub/individual/proto/xextproto-7.3.0.tar.bz2" => "f3f4b23ac8db9c3a9e0d8edb591713f3d70ef9c3b175970dd8823dfc92aa5bb0",
    "https://www.x.org/pub/individual/proto/xf86bigfontproto-1.2.0.tar.bz2" => "ba9220e2c4475f5ed2ddaa7287426b30089e4d29bd58d35fad57ba5ea43e1648",
    "https://www.x.org/pub/individual/proto/xf86dgaproto-2.1.tar.bz2" => "ac5ef65108e1f2146286e53080975683dae49fc94680042e04bd1e2010e99050",
    "https://www.x.org/pub/individual/proto/xf86driproto-2.1.1.tar.bz2" => "9c4b8d7221cb6dc4309269ccc008a22753698ae9245a398a59df35f1404d661f",
    "https://www.x.org/pub/individual/proto/xf86vidmodeproto-2.3.1.tar.bz2" => "45d9499aa7b73203fd6b3505b0259624afed5c16b941bd04fcf123e5de698770",
    "https://www.x.org/pub/individual/proto/xineramaproto-1.2.1.tar.bz2" => "977574bb3dc192ecd9c55f59f991ec1dff340be3e31392c95deff423da52485b",
    "https://www.x.org/pub/individual/proto/xproto-7.0.31.tar.bz2" => "c6f9747da0bd3a95f86b17fb8dd5e717c8f3ab7f0ece3ba1b247899ec1ef7747",

    "http://downloads.sourceforge.net/expat/expat-2.1.0.tar.gz" => "823705472f816df21c8f6aa026dd162b280806838bb55b3432b0fb1fcca7eb86",
    "https://mirrors.edge.kernel.org/pub/linux/utils/util-linux/v2.34/util-linux-2.34-rc1.tar.gz" => "f97d7725509f53c690c3c65c4432f97857ca398651fb06fded61fa17c19bef9f",

    "http://xcb.freedesktop.org/dist/xcb-proto-1.11.tar.bz2" => "b4aceee6502a0ce45fc39b33c541a2df4715d00b72e660ebe8c5bb444771e32e",
    "http://xorg.freedesktop.org/releases/individual/lib/libXau-1.0.8.tar.bz2" => "fdd477320aeb5cdd67272838722d6b7d544887dfe7de46e1e7cc0c27c2bea4f2",
    "http://xcb.freedesktop.org/dist/libxcb-1.11.tar.bz2" => "03635d70045b9ede90778e67516135828a57de87ac508f987024f43c03620ff7",
    "http://xorg.freedesktop.org/releases/individual/lib/xtrans-1.3.4.tar.bz2" => "054d4ee3efd52508c753e9f7bc655ef185a29bd2850dd9e2fc2ccc33544f583a",
    "http://xorg.freedesktop.org/releases/individual/lib/libX11-1.6.2.tar.bz2" => "2aa027e837231d2eeea90f3a4afe19948a6eb4c8b2bec0241eba7dbc8106bd16",
    "http://xorg.freedesktop.org/releases/individual/lib/libXext-1.3.3.tar.bz2" => "b518d4d332231f313371fdefac59e3776f4f0823bcb23cf7c7305bfb57b16e35",
    "http://xorg.freedesktop.org/releases/individual/lib/libFS-1.0.6.tar.bz2" => "9007fcfbd37bfa6ede4000ec4b5c2dc6dc0f52789358361b43f68e9ae4d6aed7",
    "http://xorg.freedesktop.org/releases/individual/lib/libICE-1.0.9.tar.bz2" => "8f7032f2c1c64352b5423f6b48a8ebdc339cc63064af34d66a6c9aa79759e202",
    "http://xorg.freedesktop.org/releases/individual/lib/libSM-1.2.2.tar.bz2" => "0baca8c9f5d934450a70896c4ad38d06475521255ca63b717a6510fdb6e287bd",
    "http://xorg.freedesktop.org/releases/individual/lib/libXScrnSaver-1.2.2.tar.bz2" => "8ff1efa7341c7f34bcf9b17c89648d6325ddaae22e3904e091794e0b4426ce1d",
    "http://xorg.freedesktop.org/releases/individual/lib/libXt-1.1.4.tar.bz2" => "843a97a988f5654872682a4120486d987d853a71651515472f55519ffae2dd57",
    "http://xorg.freedesktop.org/releases/individual/lib/libXmu-1.1.2.tar.bz2" => "756edc7c383254eef8b4e1b733c3bf1dc061b523c9f9833ac7058378b8349d0b",
    "http://xorg.freedesktop.org/releases/individual/lib/libXpm-3.5.11.tar.bz2" => "c5bdafa51d1ae30086fac01ab83be8d47fe117b238d3437f8e965434090e041c",
    "http://xorg.freedesktop.org/releases/individual/lib/libXaw-1.0.12.tar.bz2" => "96fc314874fce9979556321d1d6ee00b5baf32fb333b7278853b4983bc3cdbf6",
    "http://xorg.freedesktop.org/releases/individual/lib/libXfixes-5.0.1.tar.bz2" => "63bec085084fa3caaee5180490dd871f1eb2020ba9e9b39a30f93693ffc34767",
    "http://xorg.freedesktop.org/releases/individual/lib/libXcomposite-0.4.4.tar.bz2" => "ede250cd207d8bee4a338265c3007d7a68d5aca791b6ac41af18e9a2aeb34178",
    "http://xorg.freedesktop.org/releases/individual/lib/libXrender-0.9.8.tar.bz2" => "1d14b02f0060aec5d90dfdcf16a996f17002e515292906ed26e3dcbba0f4fc62",
    "http://xorg.freedesktop.org/releases/individual/lib/libXcursor-1.1.14.tar.bz2" => "9bc6acb21ca14da51bda5bc912c8955bc6e5e433f0ab00c5e8bef842596c33df",
    "http://xorg.freedesktop.org/releases/individual/lib/libXdamage-1.1.4.tar.bz2" => "7c3fe7c657e83547f4822bfde30a90d84524efb56365448768409b77f05355ad",
    "http://xorg.freedesktop.org/releases/individual/lib/libfontenc-1.1.2.tar.bz2" => "a9a4efed3359b2e80161bb66b65038fac145137fa134e71335264cbc23b02f62",
    "http://xorg.freedesktop.org/releases/individual/lib/libXfont-1.5.0.tar.bz2" => "3a3c52c4adf9352b2160f07ff0596af17ab14f91d6509564e606678a1261c25f",
    "http://xorg.freedesktop.org/releases/individual/lib/libXft-2.3.2.tar.bz2" => "f5a3c824761df351ca91827ac221090943ef28b248573486050de89f4bfcdc4c",
    "http://xorg.freedesktop.org/releases/individual/lib/libXi-1.7.4.tar.bz2" => "2cffc2686618dc1803725636cd92b36342c512dc60a7a35cba34bf7192a42244",
    "http://xorg.freedesktop.org/releases/individual/lib/libXinerama-1.1.3.tar.bz2" => "7a45699f1773095a3f821e491cbd5e10c887c5a5fce5d8d3fced15c2ff7698e2",
    "http://xorg.freedesktop.org/releases/individual/lib/libXrandr-1.4.2.tar.bz2" => "caa7b31ac769be51a532343c65376f1d4df3f307afaed58e34fb5e82e8b825ad",
    "http://xorg.freedesktop.org/releases/individual/lib/libXres-1.0.7.tar.bz2" => "26899054aa87f81b17becc68e8645b240f140464cf90c42616ebb263ec5fa0e5",
    "http://xorg.freedesktop.org/releases/individual/lib/libXtst-1.2.2.tar.bz2" => "ef0a7ffd577e5f1a25b1663b375679529663a1880151beaa73e9186c8309f6d9",
    "http://xorg.freedesktop.org/releases/individual/lib/libXv-1.0.10.tar.bz2" => "55fe92f8686ce8612e2c1bfaf58c057715534419da700bda8d517b1d97914525",
    "http://xorg.freedesktop.org/releases/individual/lib/libXvMC-1.0.8.tar.bz2" => "5e1a401efa433f959d41e17932b8c218c56b931348f494b8fa4656d7d798b204",
    "http://xorg.freedesktop.org/releases/individual/lib/libXxf86dga-1.1.4.tar.bz2" => "8eecd4b6c1df9a3704c04733c2f4fa93ef469b55028af5510b25818e2456c77e",
    "http://xorg.freedesktop.org/releases/individual/lib/libXxf86vm-1.1.3.tar.bz2" => "da5e86c32ee2069b9e6d820e4c2e4242d4877cb155a2b2fbf2675a1480ec37b8",
    "http://xorg.freedesktop.org/releases/individual/lib/libdmx-1.1.3.tar.bz2" => "c97da36d2e56a2d7b6e4f896241785acc95e97eb9557465fd66ba2a155a7b201",
    "http://xorg.freedesktop.org/releases/individual/lib/libpciaccess-0.13.2.tar.bz2" => "abab8c2b050afb89bc29280e9c6b50ec5867174960d88bfb81a01036ec20de19",
    "http://xorg.freedesktop.org/releases/individual/lib/libxkbfile-1.0.8.tar.bz2" => "8aa94e19c537c43558f30906650cea6e15fa012591445d9f927658c3b32a8f3a",
    "http://xorg.freedesktop.org/releases/individual/lib/libxshmfence-1.1.tar.bz2" => "dbc2db2925ca9f216fd1e9c63d0974db9f4d49aaf5877ffb606d2d8d7e58cebe",
]

# # Bash recipe for building across all platforms
script = sprint() do io
    println(io, raw"cd $WORKSPACE/srcdir")
    println(io, raw"""
    pathappend () {
        local PATHVARIABLE=${2:-PATH}
        export $PATHVARIABLE="${!PATHVARIABLE:+${!PATHVARIABLE}:}$1"
    }
    export XORG_PREFIX=$prefix
    export XORG_CONFIG="--prefix=$prefix --host=$target --sysconfdir=/etc --localstatedir=/var --disable-static LANG=C"

    pathappend $XORG_PREFIX/bin             PATH
    pathappend $XORG_PREFIX/lib/pkgconfig   PKG_CONFIG_PATH
    pathappend $XORG_PREFIX/share/pkgconfig PKG_CONFIG_PATH

    pathappend $XORG_PREFIX/lib             LIBRARY_PATH
    pathappend $XORG_PREFIX/include         C_INCLUDE_PATH
    pathappend $XORG_PREFIX/include         CPLUS_INCLUDE_PATH
    LINGUAS="de nl en"

    ACLOCAL='aclocal -I $XORG_PREFIX/share/aclocal'

    export PATH PKG_CONFIG_PATH ACLOCAL LIBRARY_PATH C_INCLUDE_PATH CPLUS_INCLUDE_PATH
    """)
    for (url, hash) in sources
        name = replace(basename(url), r"(.tar.bz2)|(.tar.gz)" => "")
        println(io, "cd $name")
        if match(r"pth-[0-9]*", name) !== nothing
            println(io, raw"sed -i 's#$(LOBJS): Makefile#$(LOBJS): pth_p.h Makefile#' Makefile.in")
        end
        if name == "libxb"
            println(io, raw"""
            sed "s/pthread-stubs//" -i configure
            ./configure $XORG_CONFIG --enable-xinput --docdir='${datadir}'/doc/libxcb-1.11
            """)
        elseif match(r"libXfont-[0-9]*", name) !== nothing
            println(io, raw"./configure $XORG_CONFIG --disable-devel-docs")
        elseif match(r"libXt-[0-9]*", name) !== nothing
            println(io, raw"./configure $XORG_CONFIG --with-appdefaultdir=/etc/X11/app-defaults")
        else
            println(io, raw" ./configure $XORG_CONFIG")
        end
        println(io, raw"""
        make
        make install
        cd ..
        """)
    end
end


# println(script)
# These are the platforms we will build for by default, unless further
# platforms are passed in on the command line
platforms = [
    Linux(:x86_64, libc=:glibc)
]

# The products that we will ensure are always built
products(prefix) = [
    LibraryProduct(prefix, "libxorg", :libxorg),
]

# Dependencies that must be installed before this package can be built
dependencies = [
    "https://github.com/JuliaGraphics/FreeTypeBuilder/releases/download/v2.9.1-1/build_FreeType2.v2.9.1.jl",
    "https://github.com/bicycle1885/ZlibBuilder/releases/download/v1.0.2/build_Zlib.v1.2.11.jl",
    "https://github.com/bjarthur/FontconfigBuilder/releases/download/v2.13.1/build_Fontconfig.v2.13.1.jl",
]

# Build the tarballs, and possibly a `build.jl` as well.
args = String[]
build_tarballs(args, name, version, sources, script, platforms, products, dependencies)

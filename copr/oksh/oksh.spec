%global _hardened_build 1
%define debug_package %{nil}

Name:           oksh
Version:        6.5
Release:        2%{?dist}
Summary:        OpenBSD Kornshell

License:        ISC
URL:            https://github.com/ibara/oksh
Source0:        https://github.com/ibara/oksh/releases/download/oksh-%{version}/oksh-%{version}.tar.gz

BuildRequires:  musl-gcc
Conflicts:      ksh


%description
Portable OpenBSD ksh, based on the Public Domain Korn Shell (pdksh).


%prep
%setup -q


%build
export CC=musl-gcc
./configure --enable-ksh --enable-static --prefix=/usr --mandir=/usr/share/man
make %{?_smp_mflags}


%install
make install DESTDIR=%{buildroot}


%files
%doc
%{_bindir}/ksh
%{_mandir}/man1/ksh.1.gz


%changelog
* Sun May 12 2019 David Goerger - 6.5-2
- enable static build

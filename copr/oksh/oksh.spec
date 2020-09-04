%global _hardened_build 1
%define debug_package %{nil}

Name:           oksh
Version:        6.7
Release:        1%{?dist}
Summary:        OpenBSD Kornshell

License:        ISC
URL:            https://github.com/ibara/oksh
Source0:        https://github.com/ibara/oksh/releases/download/oksh-%{version}/oksh-%{version}.tar.gz

BuildRequires:  gcc
Conflicts:      ksh


%description
Portable OpenBSD ksh, based on the Public Domain Korn Shell (pdksh).


%prep
%setup -q


%build
./configure --enable-ksh --prefix=/usr --bindir=/usr/bin --mandir=/usr/share/man
make %{?_smp_mflags}


%install
make install DESTDIR=%{buildroot}


%files
%doc
%{_bindir}/ksh
%{_mandir}/man1/ksh.1.gz


%changelog
* Thu Sep 03 2020 David Goerger - 6.7-1
- update to 6.7-release

* Thu Dec 26 2019 David Goerger - 6.6-1
- disable static build
- update to 6.6-release

* Sun May 12 2019 David Goerger - 6.5-2
- enable static build

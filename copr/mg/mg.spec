%global _hardened_build 1
%define debug_package %{nil}

Name:           mg
Version:        6.7
Release:        1%{?dist}
Summary:        emacs-like text editor

License:        ISC
URL:            https://github.com/ibara/mg
Source0:        https://github.com/ibara/mg/releases/download/mg-%{version}/mg-%{version}.tar.gz

BuildRequires:  gcc


%description
mg is intended to be a small, fast, and portable editor for people who
can't (or don't want to) run emacs for one reason or another, or are not
familiar with the vi(1) editor.  It is compatible with emacs because
there shouldn't be any reason to learn more editor types than emacs or
vi(1).


%prep
%setup -q


%build
./configure --prefix=/usr --mandir=/usr/share/man
make %{?_smp_mflags}


%install
make install DESTDIR=%{buildroot}


%files
%doc
%{_bindir}/mg
%{_mandir}/man1/mg.1.gz


%changelog
* Thu Sep 03 2020 David Goerger - 6.7-1
- initial release

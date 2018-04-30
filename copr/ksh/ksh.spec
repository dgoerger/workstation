%define debug_package %{nil}

Summary:          OpenBSD's Korn Shell
Name:             ksh
Epoch:            1
Version:          6.3
Release:          1%{?dist}
License:          ISC
Group:            System Environment/Shells
URL:              https://github.com/ibara/oksh
Source0:          https://github.com/ibara/oksh/archive/OpenBSD-%{version}.tar.gz
Conflicts:        filesystem < 3
Provides:         /bin/ksh
Requires(post):   grep
Requires(postun): sed
BuildRequires:    util-linux, ed
BuildRoot:        %{_tmppath}/%{name}-%{version}-%{release}-root-%(%{__id_u} -n)

%description
ksh is the OpenBSD-enhanced version of the Public Domain Korn shell (pdksh),
a bourne-compatible shell which is largely similar to the original AT&T Korn
shell. It includes bug fixes and feature improvements in order to produce a
modern, robust shell good for interactive and especially script use, being a
bourne shell replacement, pdksh successor and an alternative to the C shell.

%prep
%setup -q -n oksh-OpenBSD-%{version}
./configure --prefix=/usr --mandir=%{_mandir} --enable-ksh

%build
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT
make install DESTDIR=$RPM_BUILD_ROOT

%check

%post
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
grep -q "^/bin/%{name}$" %{_sysconfdir}/shells 2>/dev/null || \
  echo "/bin/%{name}" >> %{_sysconfdir}/shells
%endif
grep -q "^%{_bindir}/%{name}$" %{_sysconfdir}/shells 2>/dev/null || \
  echo "%{_bindir}/%{name}" >> %{_sysconfdir}/shells

%postun
if [ ! -x %{_bindir}/%{name} ]; then
%if 0%{?fedora} >= 17 || 0%{?rhel} >= 7
  sed -e 's@^/bin/%{name}$@POSTUNREMOVE@' -e '/^POSTUNREMOVE$/d' -i %{_sysconfdir}/shells
%endif
  sed -e 's@^%{_bindir}/%{name}$@POSTUNREMOVE@' -e '/^POSTUNREMOVE$/d' -i %{_sysconfdir}/shells
fi

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%doc CONTRIBUTORS LEGAL PROJECTS README.md README.pdksh
%{_bindir}/%{name}
%{_mandir}/man1/%{name}.1*

%changelog
* Mon Apr 30 2018 David Goerger - 6.3-1
- update to 6.3

* Sun Dec 10 2017 David Goerger - 6.2-1
- initial packaging of oksh

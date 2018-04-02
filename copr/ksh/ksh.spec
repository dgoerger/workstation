%define debug_package %{nil}

Summary:          OpenBSD's Korn Shell
Name:             ksh
Epoch:            1
Version:          6.2
Release:          1%{?dist}
License:          ISC
Group:            System Environment/Shells
URL:              https://github.com/dimkr/loksh
Source0:          https://github.com/dimkr/loksh/archive/%{version}.tar.gz
Conflicts:        filesystem < 3
Provides:         /bin/ksh, /bin/oksh
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
%setup -q -n loksh-%{version}

%build
make %{?_smp_mflags}

%install
rm -rf $RPM_BUILD_ROOT
make install DESTDIR=$RPM_BUILD_ROOT
rm -f %{buildroot}/%{_mandir}/man1/sh.1.gz
mv %{buildroot}/%{_docdir}/loksh %{buildroot}/%{_docdir}/%{name}
mv %{buildroot}/%{_docdir}/%{name}/PROJETCS %{buildroot}/%{_docdir}/%{name}/PROJECTS

%check
rm -f %{buildroot}/%{_mandir}/man1/sh.1.gz

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
%doc CONTRIBUTORS LEGAL PROJECTS README README.upstream
%{_bindir}/%{name}
%{_mandir}/man1/%{name}.1*

%changelog
* Sun Dec 10 2017 David Goerger - 6.2-1
- initial packaging of oksh

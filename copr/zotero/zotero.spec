%define debug_package %{nil}

Name:     zotero
Version:  5.0.41
Release:  1%{?dist}
Summary:  Collect, organize, cite, and share research sources
License:  AGPLv3
URL:      https://github.com/zotero/zotero
Source0:  https://www.zotero.org/download/client/dl?channel=release&platform=linux-x86_64&version=%{version}
Source1:  zotero.desktop

Requires: firefox

%description
Zotero [zoh-TAIR-oh] is a free, easy-to-use tool to help you collect, organize, cite, and share your research sources.

%prep
%autosetup -n Zotero_linux-x86_64

%build

%install
mkdir -p %{buildroot}/{%{_bindir},%{_libdir}/%{name}}
cp -r %{_builddir}/Zotero_linux-x86_64/* %{buildroot}/%{_libdir}/%{name}/
ln -sf %{_libdir}/%{name}/zotero %{buildroot}/%{_bindir}/%{name}
install -Dm644 %{SOURCE1} %{buildroot}/%{_datadir}/applications/%{name}.desktop
install -Dm644 %{buildroot}/%{_libdir}/%{name}/chrome/icons/default/default16.png %{buildroot}/%{_datadir}/icons/hicolor/16x16/apps/%{name}.png
install -Dm644 %{buildroot}/%{_libdir}/%{name}/chrome/icons/default/default32.png %{buildroot}/%{_datadir}/icons/hicolor/32x32/apps/%{name}.png
install -Dm644 %{buildroot}/%{_libdir}/%{name}/chrome/icons/default/default48.png %{buildroot}/%{_datadir}/icons/hicolor/48x48/apps/%{name}.png
install -Dm644 %{buildroot}/%{_libdir}/%{name}/chrome/icons/default/default256.png %{buildroot}/%{_datadir}/icons/hicolor/256x256/apps/%{name}.png

%files
%doc
%{_bindir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/zotero.png
%{_libdir}/%{name}


%changelog
* Wed Mar 28 2018 David Goerger - 5.0.41-1
- update to 5.0.41

* Sun Dec 03 2017 David Goerger - 5.0.29-1
- update to 5.0.29

* Thu Aug 17 2017 David Goerger - 5.0.12-1
- initial package
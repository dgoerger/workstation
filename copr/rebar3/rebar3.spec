Name:     rebar3
Version:  3.9.0	
Release:  1%{?dist}
Summary:  Erlang build tool that makes it easy to compile and test Erlang applications and releases

License:  Apache v2	
URL:      https://www.rebar3.org/
Source0:  https://s3.amazonaws.com/rebar3/rebar3

Requires:	erlang

%description
Rebar3 is an Erlang tool that makes it easy to create, develop, and release Erlang libraries, applications, and systems in a repeatable manner.

Rebar3 will:
* respect and enforce standard Erlang/OTP conventions for project structure so they are easily reusable by the community;
* manage source dependencies and Erlang packages while ensuring repeatable builds;
* handle build artifacts, paths, and libraries such that standard development tools can be used without a headache;
* adapt to projects of all sizes on almost any platform;
* treat documentation as a feature, and errors or lack of documentation as a bug.

Rebar3 is also a self-contained Erlang script. It is easy to distribute or embed directly in a project. Tasks or behaviours can be modified or expanded with a plugin system flexible enough that even other languages on the Erlang VM will use it as a build tool.

%prep

%build

%install
mkdir -p %{buildroot}%{_bindir}
mv %{_sourcedir}/%{name} %{buildroot}/%{_bindir}/%{name}
chmod +x %{buildroot}/%{_bindir}/%{name}

%files
%{_bindir}/%{name}


%changelog
* Sun Feb 10 2019 David Goerger - 3.9.0-1
- update to 3.9.0

* Wed Jul 25 2018 Grace Petegorsky - 3.6.1-1
- Initial package.

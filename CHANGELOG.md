# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v2.1.2]
### Changed

- Correct alphabetical order of allowed volumes ([#7])

## [v2.1.1]
### Added

- Add `hostPath` to the list of allowed volumes of the Openshift security context constraint objects ([#6])

## [v2.1.0]
### Added

- Security context constraints object for openshift that allows mounting of nfs volumes ([#5])


## [v2.0.0]
### Added

- Support for multiple instantiation ([#4])

### Changed

- Update helm chart to version 4.0.6
- The parameter `release_name` is now instance-specific by default


## [v1.0.0]
### Added

- Initial open-source implementation ([#1])

[Unreleased]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/compare/v1.0.0...HEAD
[v1.0.0]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/releases/tag/v1.0.0
[v2.0.0]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/releases/tag/v2.0.0
[v2.1.0]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/releases/tag/v2.1.0
[v2.1.1]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/releases/tag/v2.1.1
[v2.1.2]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/releases/tag/v2.1.2

[#1]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/1
[#4]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/4
[#5]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/5
[#6]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/6
[#7]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/7

# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [v2.1.0]
### Added

- Security context constraints object for openshift that allows mounting of nfs volumes [#5]


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

[#1]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/1
[#4]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/4
[#5]: https://github.com/projectsyn/component-nfs-subdir-external-provisioner/pull/5

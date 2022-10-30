# [Vlang Project Workflow](https://github.com/initdc/vlang-project-workflow)

> Project written by vlang, you just need build once time.

## Build on Linux Host

1. deps 

    - vlang
    - ruby
    - tree
    - sha256sum
    - docker

2. build 

    > edit config and build CMD as you need

    ```
    # build binarys
    ruby build.rb
    ruby build.rb --run-test
    ruby build.rb v0.0.1
    ruby build.rb less ## build bin for LESS_OS_ARCH

    echo > version.rb 'VERSION = "fix-bug-001"'
    ruby build.rb test --run-test
    
    # build docker images
    ruby docker-tag.rb
    ruby docker-tag.rb v0.0.1
    ruby docker-tag.rb dev
    ruby docker-tag.rb v$(TZ=Asia/Shanghai date +%Y.%m.%d)
    ```

## GitHub actions

- build binarys
- upload release files
- build docker images

## More about docker

Check https://github.com/initdc/ssh-proxy-by-caddy-l4

## License

MPL 2.0
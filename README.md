Current behavior:

```

$ bundle exec inspec exec ./profile --input-file $PWD/test-inputs.yml
[2019-12-06T14:10:18+01:00] WARN: Input 'foo' does not have a value. Use --input-file to provide a value for 'foo' or specify a  value with `attribute('foo', value: 'somevalue', ...)`.
[2019-12-06T14:10:18+01:00] WARN: Input 'bar' does not have a value. Use --input-file to provide a value for 'bar' or specify a  value with `attribute('bar', value: 'somevalue', ...)`.

Profile: default
Version: (not specified)
Target:  local://

  ×  some control: Command: `ls` (2 failed)
     ×  Command: `ls` exit_status should cmp == 42

     expected: 42
          got: 0

     (compared using `cmp` matcher)

     ×  File test-file content should cmp == "hello"

     expected: "hello"
          got: "foobar\n"

     (compared using `cmp` matcher)



Profile Summary: 0 successful controls, 1 control failure, 0 controls skipped
Test Summary: 0 successful, 2 failures, 0 skipped
```

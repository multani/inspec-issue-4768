foo = input('foo')
bar = input('bar')

control 'some control' do
  describe command('ls') do
    its('exit_status') { should cmp foo }
  end

  describe file('test-file') do
    its('content') { should cmp bar }
  end
end

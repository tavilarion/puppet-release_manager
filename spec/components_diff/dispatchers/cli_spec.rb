describe ReleaseManager::ComponentsDiff::Dispatchers::CLI do
  subject { ReleaseManager::ComponentsDiff::Dispatchers::CLI.new(%w{master y}) }

  context 'interface' do
    it { is_expected.to respond_to(:trigger!) }
  end

  context 'behaviour' do
    after(:each) { subject.trigger! }

    it 'calls the request object builder' do
      expect(ReleaseManager::ComponentsDiff::Builders::CLIBuilder).to receive(:build)
    end

    it 'runs the required action' do
      expect_any_instance_of(ReleaseManager::ComponentsDiff::DiffAction).to receive(:run)
    end
  end
end

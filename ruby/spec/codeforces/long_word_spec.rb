require_relative '../../src/codeforces/long_word'

RSpec.describe LongWord do
  context 'when word char size is less or same with 10' do
    it 'is not have short number' do
      word = 'a' * 10
      long_word = LongWord.new(word)
      expect(long_word.short_version).to eq word
    end

    it 'is not have short number' do
      word = 'a' * 9
      long_word = LongWord.new(word)
      expect(long_word.short_version).to eq word
    end
  end

  context 'when word char size is more than 10' do
    it 'is returns another short version' do
      word = 'localization'
      long_word = LongWord.new(word)
      expect(long_word.short_version).to eq 'l10n'
    end

    it 'is returns another short version' do
      word = 'internationalization'
      long_word = LongWord.new(word)
      expect(long_word.short_version).to eq 'i18n'
    end

    it 'is returns another short version' do
      word = 'pneumonoultramicroscopicsilicovolcanoconiosis'
      long_word = LongWord.new(word)
      expect(long_word.short_version).to eq 'p43s'
    end
  end
end

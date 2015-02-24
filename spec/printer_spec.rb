require_relative 'spec_helper'

describe Tapp::Printer do
  describe 'tapp provide printer' do
    describe 'pretty_print printer' do
      subject { Tapp::Printer.instance(:pretty_print) }

      it { should be_instance_of Tapp::Printer::PrettyPrint }
    end

    describe 'puts printer' do
      subject { Tapp::Printer.instance(:puts) }

      it { should be_instance_of Tapp::Printer::Puts }
    end

    describe 'puts printer' do
      subject { Tapp::Printer.instance(:awesome_print) }

      it { should be_instance_of Tapp::Printer::AwesomePrint }
    end
  end

  describe 'original printer' do
    class StringIoPrinter < Tapp::Printer::Base; end

    subject { Tapp::Printer.instance(:string_io_printer) }

    it { should be_instance_of StringIoPrinter }
  end
end

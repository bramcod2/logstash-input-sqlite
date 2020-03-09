# encoding: utf-8
require "logstash/devutils/rspec/spec_helper"
require "logstash/devutils/rspec/shared_examples"
require "logstash/inputs/sqlite"
require "logstash/codecs/plain"

describe LogStash::Inputs::Sqlite do
  describe "stopping" do
    let(:config) { {"path" => "testdb.sqlite3"} }
    it_behaves_like "an interruptible input plugin"
  end
end

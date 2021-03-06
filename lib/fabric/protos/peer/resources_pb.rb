# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: peer/resources.proto

require 'google/protobuf'

require 'common/configtx_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'protos.ChaincodeIdentifier' do
    optional :hash, :bytes, 1
    optional :version, :string, 2
  end
  add_message 'protos.ChaincodeValidation' do
    optional :name, :string, 1
    optional :argument, :bytes, 2
  end
  add_message 'protos.VSCCArgs' do
    optional :endorsement_policy_ref, :string, 1
  end
  add_message 'protos.ChaincodeEndorsement' do
    optional :name, :string, 1
  end
  add_message 'protos.ConfigTree' do
    optional :channel_config, :message, 1, 'common.Config'
    optional :resources_config, :message, 2, 'common.Config'
  end
end

module Protos
  ChaincodeIdentifier = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ChaincodeIdentifier').msgclass
  ChaincodeValidation = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ChaincodeValidation').msgclass
  VSCCArgs = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.VSCCArgs').msgclass
  ChaincodeEndorsement = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ChaincodeEndorsement').msgclass
  ConfigTree = Google::Protobuf::DescriptorPool.generated_pool.lookup('protos.ConfigTree').msgclass
end

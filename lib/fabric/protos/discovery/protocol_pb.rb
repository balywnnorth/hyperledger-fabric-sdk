# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: discovery/protocol.proto

require 'google/protobuf'

require 'gossip/message_pb'
require 'msp/msp_config_pb'
require 'msp/identities_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message 'discovery.SignedRequest' do
    optional :payload, :bytes, 1
    optional :signature, :bytes, 2
  end
  add_message 'discovery.Request' do
    optional :authentication, :message, 1, 'discovery.AuthInfo'
    repeated :queries, :message, 2, 'discovery.Query'
  end
  add_message 'discovery.Response' do
    repeated :results, :message, 1, 'discovery.QueryResult'
  end
  add_message 'discovery.AuthInfo' do
    optional :client_identity, :bytes, 1
    optional :client_tls_cert_hash, :bytes, 2
  end
  add_message 'discovery.Query' do
    optional :channel, :string, 1
    oneof :query do
      optional :config_query, :message, 2, 'discovery.ConfigQuery'
      optional :peer_query, :message, 3, 'discovery.PeerMembershipQuery'
      optional :cc_query, :message, 4, 'discovery.ChaincodeQuery'
      optional :local_peers, :message, 5, 'discovery.LocalPeerQuery'
    end
  end
  add_message 'discovery.QueryResult' do
    oneof :result do
      optional :error, :message, 1, 'discovery.Error'
      optional :config_result, :message, 2, 'discovery.ConfigResult'
      optional :cc_query_res, :message, 3, 'discovery.ChaincodeQueryResult'
      optional :members, :message, 4, 'discovery.PeerMembershipResult'
    end
  end
  add_message 'discovery.ConfigQuery' do
  end
  add_message 'discovery.ConfigResult' do
    map :msps, :string, :message, 1, 'msp.FabricMSPConfig'
    map :orderers, :string, :message, 2, 'discovery.Endpoints'
  end
  add_message 'discovery.PeerMembershipQuery' do
    optional :filter, :message, 1, 'discovery.ChaincodeInterest'
  end
  add_message 'discovery.PeerMembershipResult' do
    map :peers_by_org, :string, :message, 1, 'discovery.Peers'
  end
  add_message 'discovery.ChaincodeQuery' do
    repeated :interests, :message, 1, 'discovery.ChaincodeInterest'
  end
  add_message 'discovery.ChaincodeInterest' do
    repeated :chaincodes, :message, 1, 'discovery.ChaincodeCall'
  end
  add_message 'discovery.ChaincodeCall' do
    optional :name, :string, 1
    repeated :collection_names, :string, 2
  end
  add_message 'discovery.ChaincodeQueryResult' do
    repeated :content, :message, 1, 'discovery.EndorsementDescriptor'
  end
  add_message 'discovery.LocalPeerQuery' do
  end
  add_message 'discovery.EndorsementDescriptor' do
    optional :chaincode, :string, 1
    map :endorsers_by_groups, :string, :message, 2, 'discovery.Peers'
    repeated :layouts, :message, 3, 'discovery.Layout'
  end
  add_message 'discovery.Layout' do
    map :quantities_by_group, :string, :uint32, 1
  end
  add_message 'discovery.Peers' do
    repeated :peers, :message, 1, 'discovery.Peer'
  end
  add_message 'discovery.Peer' do
    optional :state_info, :message, 1, 'gossip.Envelope'
    optional :membership_info, :message, 2, 'gossip.Envelope'
    optional :identity, :bytes, 3
  end
  add_message 'discovery.Error' do
    optional :content, :string, 1
  end
  add_message 'discovery.Endpoints' do
    repeated :endpoint, :message, 1, 'discovery.Endpoint'
  end
  add_message 'discovery.Endpoint' do
    optional :host, :string, 1
    optional :port, :uint32, 2
  end
end

module Discovery
  SignedRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.SignedRequest').msgclass
  Request = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Request').msgclass
  Response = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Response').msgclass
  AuthInfo = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.AuthInfo').msgclass
  Query = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Query').msgclass
  QueryResult = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.QueryResult').msgclass
  ConfigQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ConfigQuery').msgclass
  ConfigResult = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ConfigResult').msgclass
  PeerMembershipQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.PeerMembershipQuery').msgclass
  PeerMembershipResult = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.PeerMembershipResult').msgclass
  ChaincodeQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ChaincodeQuery').msgclass
  ChaincodeInterest = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ChaincodeInterest').msgclass
  ChaincodeCall = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ChaincodeCall').msgclass
  ChaincodeQueryResult = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.ChaincodeQueryResult').msgclass
  LocalPeerQuery = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.LocalPeerQuery').msgclass
  EndorsementDescriptor = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.EndorsementDescriptor').msgclass
  Layout = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Layout').msgclass
  Peers = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Peers').msgclass
  Peer = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Peer').msgclass
  Error = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Error').msgclass
  Endpoints = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Endpoints').msgclass
  Endpoint = Google::Protobuf::DescriptorPool.generated_pool.lookup('discovery.Endpoint').msgclass
end
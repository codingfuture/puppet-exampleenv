
# Please make sure "module_data" module is not used as it poisons lookup() processing.
# See https://tickets.puppetlabs.com/browse/PUP-5952 for more details.
lookup('classes', Array[String], 'unique').include

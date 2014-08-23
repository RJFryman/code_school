# Before

limbs_hashes = @limbs.map do |limb|
  { owner_name: limb.zombie.name }
end
# TODO: Output JSON version of limbs_hashes.

# After

limbs_hashes = @limbs.map do |limb|
  { kind: limb.kind, owner_name: limb.zombie.name }
end
limbs_hashes.to_json

$distro_info = ARGV[0]

def distro_update_command(distro)
  case distro
  when 'fedora'
    `dnf check-update | wc -l`
  when 'arch'
    `checkupdates | wc -l`
  end
end

def distro_icon(distro)
  case distro
  when 'fedora'
    '  '
  when 'arch'
    '  '
  end
end

def check_for_updates
  result = distro_update_command($distro_info)
  message = result.to_s
  return distro_icon($distro_info) + message if result.to_i > 1

  distro_icon($distro_info) + '0'
end

puts check_for_updates


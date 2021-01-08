# Defined in - @ line 1
function ping --wraps=gping --description 'alias ping=gping'
  gping  $argv;
end

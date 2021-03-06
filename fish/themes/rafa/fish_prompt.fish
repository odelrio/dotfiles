function fish_prompt
  set -l last_command_status $status
  set -l cwd

  set cwd (prompt_pwd)

  set -l lambda   "λ"
  set -l ahead    " ↑"
  set -l behind   " ↓"
  set -l diverged " ⥄ "
  set -l dirty    " ✗"
  set -l none     " ✓"

  set -l normal_color     (set_color normal)
  set -l success_color    (set_color green ^/dev/null; or set_color green)
  set -l error_color      (set_color $fish_color_error ^/dev/null; or set_color red --bold)
  set -l directory_color  (set_color $fish_color_quote ^/dev/null; or set_color brown)
  set -l repository_color (set_color $fish_color_cwd ^/dev/null; or set_color green)

  set fish_color_command cyan
  set fish_color_param d3d0c8
  set fish_color_autosuggestion 8c8c8c
  set fish_color_search_match --background='04577A'

  if test $last_command_status -eq 0
    echo -n -s $success_color $lambda $normal_color
  else
    echo -n -s $error_color $lambda $normal_color
  end

  if git_is_repo
    echo -n -s " " $directory_color $cwd $normal_color

    echo -n -s " on " $repository_color (git_branch_name) $normal_color

    if git_is_touched
      echo -n -s $dirty " "
    else
      echo -n -s (git_ahead $ahead $behind $diverged $none) " "
    end
  else
    echo -n -s " " $directory_color $cwd $normal_color " "
  end
end

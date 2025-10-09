local M = { timer = {} }

--- Check if a week has passed since the marker file was created
local function week_passed(marker_path)
  local stat = vim.loop.fs_stat(marker_path)
  if not stat then
    return true
  end

  local now = vim.loop.hrtime()
  local week_ns = 7 * 24 * 60 * 60 * 1000000000 -- 7 days in nanoseconds

  return now - stat.birthtime.nsec > week_ns
end

--- Create or update the marker file
local function create_marker(marker_path)
  local dir = vim.fn.fnamemodify(marker_path, ':h')

  -- Ensure directory exists
  if dir ~= '' and not vim.loop.fs_stat(dir) then
    vim.loop.fs_mkdir(dir, -1)
  end

  -- Create/update marker file
  local fd = vim.loop.fs_open(marker_path, 'w', 420)
  if fd then
    vim.loop.fs_close(fd)
  end
end

--- Background checker function
local function background_checker()
  local marker_path = vim.fn.stdpath 'config' .. '/.update-mark'

  if week_passed(marker_path) then
    create_marker(marker_path)
    vim.pack.update(nil, { force = true })
    vim.schedule(function()
      vim.notify('Plugins updated silently in background!', vim.log.levels.INFO)
    end)
  end
end

--- Start the background checker
function M.timer.start_background_checks()
  -- Initial check
  background_checker()

  -- Schedule periodic checks every 30 minutes
  vim.loop.new_timer():start(
    1800000,
    0,
    vim.schedule_wrap(function()
      background_checker()
    end)
  )
end

return M

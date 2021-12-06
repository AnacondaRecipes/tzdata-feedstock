try:
    from importlib import resources
except ImportError:
    import importlib_resources as resources

# America/New_York
with resources.open_binary("tzdata.zoneinfo.America", "New_York") as f:
    assert f.read(4) == b"TZif", "Failed to validate tzdata package"
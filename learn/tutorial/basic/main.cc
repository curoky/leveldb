#include <cassert>
#include <leveldb/db.h>
#include <spdlog/spdlog.h>

int main(int argc, char const* argv[]) {
  leveldb::DB* db;
  leveldb::Options options;
  options.create_if_missing = true;
  leveldb::Status status = leveldb::DB::Open(options, "main.db", &db);
  if (!status.ok()) {
    spdlog::error("db::open ", status.ToString());
  }
  spdlog::info("db::open success!");
  leveldb::WriteOptions write_options;
  leveldb::ReadOptions read_options;

  status = db->Put(write_options, "1", "2");
  if (!status.ok()) {
    spdlog::error("db::Put ", status.ToString());
  }

  std::string value;
  status = db->Get(read_options, "1", &value);
  if (!status.ok()) {
    spdlog::error("db::Get ", status.ToString());
  }
  spdlog::info("db::Get value={}", value);

  return 0;
}

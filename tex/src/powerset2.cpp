int main(void) {
  size_t s = 4;
  boost::scoped_array<bool> pB(new bool [s]);
  powerset(s, 0, pB.get(), [] (std::vector<size_t> v) {
    std::cout << "{";
    std::for_each(v.begin(), v.end(), [] (size_t e) {
      std::cout << " " << e;
    });
    std::cout << " }" << std::endl;
  });
  return 0;
}
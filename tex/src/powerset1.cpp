void powerset(size_t s, size_t n, bool b[],
    std::function<void(std::vector<size_t>)> yield){
  for(size_t i = 0; i <= 1; ++i) {
    b[n] = i ? true : false;
    if (n < (s - 1))
      powerset(s, n + 1, b, yield);
    else {
      std::vector<size_t> v;
      for (size_t j = 0; j < s; ++j)
        if (b[j])
          v.push_back(j);
      yield(v);
    }
  }
}

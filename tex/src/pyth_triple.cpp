void PythTriples(int limit,
    std::function<void(int,int,int)> yield) {
  for (int x = 1; x < limit; ++x)
    for (int y = x + 1; y < limit; ++y)
      for (int z = y + 1; z <= limit; ++z)
        if (x*x + y*y == z*z)
          yield(x, y, z);
}
int main() {
  PythTriples(20, [] (int x, int y, int z) {
    std::cout << x << "," << y << "," << z << "\n";
  });
}
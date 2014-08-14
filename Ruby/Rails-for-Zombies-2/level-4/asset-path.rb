# Before

h2#newUser {
  text-indent: -9999px;
}

h2#newUser a {
  height: 64px;
  width: 50px;
  display: block;
  background: url(/assets/rails.png) no-repeat;
}

# After

h2#newUser {
  text-indent: -9999px;
  a {
    height: 64px;
    width: 50px;
    display: block;
    background: url(<%= asset_path('rails.png') %>) no-repeat;
  }
}

enum ProjectRequestPath { bag, phone, computer, shoes, users }

extension ProjectRequestPathExtension on ProjectRequestPath {
  String toPathCategory() {
    return 'category/$name.json';
  }

  String toPathAccount() {
    return 'account/$name.json';
  }
}

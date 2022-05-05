import 'dart:convert';

import 'dart:ui';

List<Repos> reposFromJson(String str) =>
    List<Repos>.from(json.decode(str).map((x) => Repos.fromMap(x)));

/*
  *
  * Repos declaration
  *
*/
class Repos {
  const Repos({
    required this.repo_id,
    required this.repo_name,
    this.description,
    required this.url,
    required this.repo_status,
    this.commits_all_time,
    this.issues_all_time,
    required this.rg_name,
    required this.repo_group_id,
    required this.base64_url,
  });

  final int repo_id;
  final String repo_name;
  final String? description;
  final String url;
  final String repo_status;
  final double? commits_all_time;
  final double? issues_all_time;
  final String rg_name;
  final int repo_group_id;
  final String base64_url;

  factory Repos.fromMap(Map<String, dynamic> json) => Repos(
      repo_id: json["repo_id"],
      repo_name: json["repo_name"],
      description: json["description"],
      url: json["url"],
      repo_status: json["repo_status"],
      commits_all_time: json["commits_all_time"],
      issues_all_time: json["issues_all_time"],
      rg_name: json["rg_name"],
      repo_group_id: json["repo_group_id"],
      base64_url: json["base64_url"]);
}

/*
  *
  * color declarations
  *
*/
class AppColors {
  static const palePink = Color(0xFFF9E1E0);
  static const brightPink = Color(0xFFFEADB9);
  static const plumPurple = Color(0xFFBC85A3);
  static const darkPurple = Color(0xFF9799BA);
  static const indigoBlue = Color(0xFF4A7BA6);
}

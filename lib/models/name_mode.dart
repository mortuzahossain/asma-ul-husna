class Name {
  String _name;
  String _nameEn;
  String _meaning;
  String _audio;
  String _link;

  Name(this._name,this._nameEn,this._meaning,this._audio,this._link);

  String get externalLink => _link;
  String get audio => _audio;
  String get meaning => _meaning;
  String get nameEn => _nameEn;
  String get name => _name;
}
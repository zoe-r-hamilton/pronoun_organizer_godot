extends Node

# Original based on PronounOrganizer.cs by Celechii found here: https://github.com/celechii/Unity-Tools/blob/master/PronounOrganizer.cs

# Call get_pronoun function with the pronoun type and the subject pronoun you want to return a string with the requested pronoun

enum PRONOUN_TYPE {Sub, Obj, Pos_Adj, Pos_Pro, Ref}
enum PRONOUN {Co, En, Ey, He, It, She, They, Xe, Xie, Yo, Ve, Ze, New}

func get_pronoun(pronoun_type, pronoun_enum) -> String:
	match(pronoun_type):
		PRONOUN_TYPE.Sub:
			return get_sub(pronoun_enum)
		PRONOUN_TYPE.Obj:
			return get_obj(pronoun_enum)
		PRONOUN_TYPE.Pos_Adj:
			return get_pos_adj(pronoun_enum)
		PRONOUN_TYPE.Pos_Pro:
			return get_pos_pro(pronoun_enum)
		PRONOUN_TYPE.Ref:
			return get_ref(pronoun_enum)
		_:
			return 'Unknown Pronoun Type'

func get_sub(pronoun_enum) -> String:
	match(pronoun_enum):
		PRONOUN.Co:
			return 'co'
		PRONOUN.En:
			return 'en'
		PRONOUN.Ey:
			return 'ey'
		PRONOUN.He:
			return 'he'
		PRONOUN.It:
			return 'it'
		PRONOUN.She:
			return 'she'
		PRONOUN.They:
			return 'they'
		PRONOUN.Xe:
			return 'xe'
		PRONOUN.Xie:
			return 'xie'
		PRONOUN.Yo:
			return 'yo'
		PRONOUN.Ve:
			return 've'
		PRONOUN.Ze:
			return 'ze'
		_:
			return 'New Pronoun'

func get_obj(pronoun_enum) -> String:
	match(pronoun_enum):
		PRONOUN.Co:
			return 'co'
		PRONOUN.En:
			return 'en'
		PRONOUN.Ey:
			return 'em'
		PRONOUN.He:
			return 'him'
		PRONOUN.It:
			return 'it'
		PRONOUN.She:
			return 'her'
		PRONOUN.They:
			return 'them'
		PRONOUN.Xe:
			return 'xem'
		PRONOUN.Xie:
			return 'hir'
		PRONOUN.Yo:
			return 'yo'
		PRONOUN.Ve:
			return 'vis'
		PRONOUN.Ze:
			return 'zir'
		_:
			return 'New Pronoun'

func get_pos_adj(pronoun_enum) -> String:
	match(pronoun_enum):
		PRONOUN.Co:
			return 'cos'
		PRONOUN.En:
			return 'ens'
		PRONOUN.Ey:
			return 'eir'
		PRONOUN.He:
			return 'his'
		PRONOUN.It:
			return 'its'
		PRONOUN.She:
			return 'her'
		PRONOUN.They:
			return 'their'
		PRONOUN.Xe:
			return 'xyr'
		PRONOUN.Xie:
			return 'hir'
		PRONOUN.Yo:
			return 'yos'
		PRONOUN.Ve:
			return 'ver'
		PRONOUN.Ze:
			return 'zir'
		_:
			return 'New Pronoun'

func get_pos_pro(pronoun_enum) -> String:
	match(pronoun_enum):
		PRONOUN.Co:
			return 'cos'
		PRONOUN.En:
			return 'ens'
		PRONOUN.Ey:
			return 'eirs'
		PRONOUN.He:
			return 'his'
		PRONOUN.It:
			return 'its'
		PRONOUN.She:
			return 'hers'
		PRONOUN.They:
			return 'theirs'
		PRONOUN.Xe:
			return 'xyrs'
		PRONOUN.Xie:
			return 'hirs'
		PRONOUN.Yo:
			return 'yos'
		PRONOUN.Ve:
			return 'ver'
		PRONOUN.Ze:
			return 'zirs'
		_:
			return 'New Pronoun'

func get_ref(pronoun_enum) -> String:
	match(pronoun_enum):
		PRONOUN.Co:
			return 'coself'
		PRONOUN.En:
			return 'enself'
		PRONOUN.Ey:
			return 'emself'
		PRONOUN.He:
			return 'himself'
		PRONOUN.It:
			return 'itself'
		PRONOUN.She:
			return 'herself'
		PRONOUN.They:
			return 'themself'
		PRONOUN.Xe:
			return 'xemself'
		PRONOUN.Xie:
			return 'hirself'
		PRONOUN.Yo:
			return 'yoself'
		PRONOUN.Ve:
			return 'verself'
		PRONOUN.Ze:
			return 'zirself'
		_:
			return 'New Pronoun'

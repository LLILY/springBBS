package app.enums;

public enum MessageType {
	Text(101), Voice(102), Image(103), RichText(105), RemindText(106), SysMessage(401), TopMessage(402);
	private final int value;

	private MessageType(int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public static MessageType toMessageType(int value) {
		for (final MessageType type : values()) {
			if (type.value == value) {
				return type;
			}
		}
		return null;
	}

	public String getString() {
		switch (this) {
		case Image:
			return "[图片]";
		case Voice:
			return "[语音]";
		case RichText:
			return "[富文本]";
		default:
			return "";
		}
	}
}

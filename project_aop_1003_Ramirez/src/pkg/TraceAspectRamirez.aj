package pkg;

public aspect TraceAspectRamirez { 
	pointcut methodToTrace(): within(*App) && execution(* pkg.*App.get*(..));
	
	before(): methodToTrace() {
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() + ", "//
				+ thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
	
}
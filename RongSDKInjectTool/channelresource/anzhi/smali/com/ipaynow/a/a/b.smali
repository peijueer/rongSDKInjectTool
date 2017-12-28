.class public final Lcom/ipaynow/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/ipaynow/a/a/c;

.field public static i:Z

.field public static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ipaynow/a/a/c;

    invoke-direct {v0}, Lcom/ipaynow/a/a/c;-><init>()V

    sput-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ipaynow/a/a/b;->i:Z

    const-string v0, ""

    sput-object v0, Lcom/ipaynow/a/a/b;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/a/a/c;->a(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/a/a/c;->a(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/a/a/c;->d(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/a/a/c;->c(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/a/a/c;->c(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/ipaynow/a/a/c;->b(Ljava/lang/StackTraceElement;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/a/a/b;->h:Lcom/ipaynow/a/a/c;

    invoke-static {}, Lcom/ipaynow/a/a/a/b;->b()Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ipaynow/a/a/c;->b(Ljava/lang/StackTraceElement;Ljava/lang/Object;)V

    return-void
.end method

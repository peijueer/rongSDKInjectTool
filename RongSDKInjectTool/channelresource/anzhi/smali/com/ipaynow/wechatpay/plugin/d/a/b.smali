.class public final Lcom/ipaynow/wechatpay/plugin/d/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aN:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "int"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "java.lang.String"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "boolean"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "char"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 20
    const-string v2, "float"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "double"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "long"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "short"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "byte"

    aput-object v2, v0, v1

    .line 19
    sput-object v0, Lcom/ipaynow/wechatpay/plugin/d/a/b;->aN:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    const-string v0, "Object{object is null}"

    .line 59
    :goto_0
    return-object v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 35
    array-length v6, v5

    move v1, v2

    :goto_1
    if-lt v1, v6, :cond_1

    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string v2, "}"

    invoke-virtual {v4, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 35
    :cond_1
    aget-object v7, v5, v1

    .line 36
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    sget-object v8, Lcom/ipaynow/wechatpay/plugin/d/a/b;->aN:[Ljava/lang/String;

    array-length v9, v8

    move v0, v2

    :goto_2
    if-lt v0, v9, :cond_3

    move v0, v2

    .line 53
    :goto_3
    if-nez v0, :cond_2

    .line 54
    const-string v0, "%s=%s, "

    new-array v8, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v2

    const-string v7, "Object"

    aput-object v7, v8, v3

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 38
    :cond_3
    aget-object v10, v8, v0

    .line 39
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 41
    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {v7, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 47
    :goto_4
    const-string v8, "%s=%s, "

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 48
    if-nez v0, :cond_4

    const-string v0, "null"

    :goto_5
    aput-object v0, v9, v3

    .line 47
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v3

    .line 49
    goto :goto_3

    .line 48
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 38
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 59
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 45
    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v8

    goto :goto_4
.end method

.method public static q()Ljava/lang/StackTraceElement;
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

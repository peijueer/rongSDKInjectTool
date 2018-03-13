.class public Lcom/muzhiwan/plugin/reflect/Reflect;
.super Ljava/lang/Object;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muzhiwan/plugin/reflect/Reflect$NULL;
    }
.end annotation


# instance fields
.field private final isClass:Z

.field private final object:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->isClass:Z

    .line 122
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->isClass:Z

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/muzhiwan/plugin/reflect/Reflect;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/muzhiwan/plugin/reflect/Reflect;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "accessible":Ljava/lang/reflect/AccessibleObject;, "TT;"
    if-nez p0, :cond_1

    .line 79
    const/4 p0, 0x0

    .line 98
    :cond_0
    :goto_0
    return-object p0

    .line 82
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/Member;

    if-eqz v1, :cond_2

    move-object v0, p0

    .line 83
    check-cast v0, Ljava/lang/reflect/Member;

    .line 85
    .local v0, "member":Ljava/lang/reflect/Member;
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    .end local v0    # "member":Ljava/lang/reflect/Member;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_0
.end method

.method private exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v1

    .line 295
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 302
    :goto_0
    return-object v2

    .line 299
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 303
    :catch_1
    move-exception v2

    .line 306
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 310
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-direct {v2}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v2
.end method

.method private field0(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v1

    .line 196
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 203
    :goto_0
    return-object v2

    .line 200
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :cond_0
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 204
    :catch_1
    move-exception v2

    .line 207
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 209
    if-nez v1, :cond_0

    .line 211
    new-instance v2, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v2, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 559
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .param p1, "possiblyMatchingMethod"    # Ljava/lang/reflect/Method;
    .param p2, "desiredMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 348
    .local p3, "desiredParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/muzhiwan/plugin/reflect/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "declaredTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "actualTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 452
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_2

    .line 453
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    .line 454
    aget-object v2, p2, v0

    const-class v3, Lcom/muzhiwan/plugin/reflect/Reflect$NULL;

    if-ne v2, v3, :cond_1

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v3}, Lcom/muzhiwan/plugin/reflect/Reflect;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return v1

    .line 463
    .restart local v0    # "i":I
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static on(Ljava/lang/Class;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/muzhiwan/plugin/reflect/Reflect;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/muzhiwan/plugin/reflect/Reflect;

    invoke-direct {v0, p0}, Lcom/muzhiwan/plugin/reflect/Reflect;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 63
    new-instance v0, Lcom/muzhiwan/plugin/reflect/Reflect;

    invoke-direct {v0, p0}, Lcom/muzhiwan/plugin/reflect/Reflect;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Class;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method private static varargs on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/muzhiwan/plugin/reflect/Reflect;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :try_start_0
    invoke-static {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static varargs on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 507
    :try_start_0
    invoke-static {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->accessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 509
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 510
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v1

    .line 513
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v1, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 437
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 438
    const-string v1, ""

    .line 442
    :goto_0
    return-object v1

    .line 439
    :cond_0
    if-ne v0, v3, :cond_1

    .line 440
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 442
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v2

    .line 321
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v0, v5, v3

    .line 322
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p1, p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v1, v0

    .line 331
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v1

    .line 321
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_2
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    .line 330
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p1, p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 331
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 329
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 335
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 337
    if-nez v2, :cond_1

    .line 339
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No similar method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with params "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could be found on type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static varargs types([Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .param p0, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 537
    if-nez p0, :cond_1

    .line 539
    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/Class;

    .line 549
    :cond_0
    return-object v1

    .line 542
    :cond_1
    array-length v3, p0

    new-array v1, v3, [Ljava/lang/Class;

    .line 544
    .local v1, "result":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 545
    aget-object v2, p0, v0

    .line 546
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_2

    const-class v3, Lcom/muzhiwan/plugin/reflect/Reflect$NULL;

    :goto_1
    aput-object v3, v1, v0

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1
.end method

.method private static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 524
    instance-of v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;

    if-eqz v0, :cond_0

    .line 525
    check-cast p0, Lcom/muzhiwan/plugin/reflect/Reflect;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object p0

    .line 528
    :cond_0
    return-object p0
.end method

.method public static wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 585
    const/4 p0, 0x0

    .line 608
    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p0

    .line 586
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    .line 588
    const-class p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 589
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    .line 590
    const-class p0, Ljava/lang/Integer;

    goto :goto_0

    .line 591
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    .line 592
    const-class p0, Ljava/lang/Long;

    goto :goto_0

    .line 593
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    .line 594
    const-class p0, Ljava/lang/Short;

    goto :goto_0

    .line 595
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    .line 596
    const-class p0, Ljava/lang/Byte;

    goto :goto_0

    .line 597
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    .line 598
    const-class p0, Ljava/lang/Double;

    goto :goto_0

    .line 599
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    .line 600
    const-class p0, Ljava/lang/Float;

    goto :goto_0

    .line 601
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_9

    .line 602
    const-class p0, Ljava/lang/Character;

    goto :goto_0

    .line 603
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    .line 604
    const-class p0, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TP;>;)TP;"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, "proxyType":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    iget-object v2, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    instance-of v1, v2, Ljava/util/Map;

    .line 402
    .local v1, "isMap":Z
    new-instance v0, Lcom/muzhiwan/plugin/reflect/Reflect$1;

    invoke-direct {v0, p0, v1}, Lcom/muzhiwan/plugin/reflect/Reflect$1;-><init>(Lcom/muzhiwan/plugin/reflect/Reflect;Z)V

    .line 430
    .local v0, "handler":Ljava/lang/reflect/InvocationHandler;
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public call(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 252
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs call(Ljava/lang/String;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v3

    .line 270
    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/muzhiwan/plugin/reflect/Reflect;->exactMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 271
    .local v2, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {v2, v4, p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 279
    :goto_0
    return-object v4

    .line 276
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/muzhiwan/plugin/reflect/Reflect;->similarMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 279
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {v2, v4, p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 280
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e1":Ljava/lang/NoSuchMethodException;
    new-instance v4, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v4, v1}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public create()Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->create([Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    return-object v0
.end method

.method public varargs create([Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 372
    invoke-static {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->types([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 376
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 377
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v0, p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 385
    :goto_0
    return-object v3

    .line 381
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 384
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 385
    invoke-static {v0, p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v3

    goto :goto_0

    .line 383
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 389
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    new-instance v3, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v3, v1}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 478
    instance-of v0, p1, Lcom/muzhiwan/plugin/reflect/Reflect;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    check-cast p1, Lcom/muzhiwan/plugin/reflect/Reflect;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 482
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public field(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 185
    .local v1, "field":Ljava/lang/reflect/Field;
    iget-object v2, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/muzhiwan/plugin/reflect/Reflect;->on(Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 186
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v2, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public fields()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/muzhiwan/plugin/reflect/Reflect;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 221
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 222
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/muzhiwan/plugin/reflect/Reflect;>;"
    invoke-virtual {p0}, Lcom/muzhiwan/plugin/reflect/Reflect;->type()Ljava/lang/Class;

    move-result-object v3

    .line 225
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 226
    .local v0, "field":Ljava/lang/reflect/Field;
    iget-boolean v4, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->isClass:Z

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    xor-int/2addr v4, v9

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "name":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 230
    invoke-virtual {p0, v1}, Lcom/muzhiwan/plugin/reflect/Reflect;->field(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    :cond_2
    move v4, v5

    .line 226
    goto :goto_1

    .line 234
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 236
    if-nez v3, :cond_0

    .line 238
    return-object v2
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->field(Ljava/lang/String;)Lcom/muzhiwan/plugin/reflect/Reflect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/muzhiwan/plugin/reflect/Reflect;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/muzhiwan/plugin/reflect/Reflect;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/muzhiwan/plugin/reflect/ReflectException;
        }
    .end annotation

    .prologue
    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/reflect/Reflect;->field0(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 156
    .local v1, "field":Ljava/lang/reflect/Field;
    iget-object v2, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-static {p2}, Lcom/muzhiwan/plugin/reflect/Reflect;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object p0

    .line 158
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/muzhiwan/plugin/reflect/ReflectException;

    invoke-direct {v2, v0}, Lcom/muzhiwan/plugin/reflect/ReflectException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->isClass:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 574
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/muzhiwan/plugin/reflect/Reflect;->object:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

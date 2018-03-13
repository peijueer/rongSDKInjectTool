.class public Lcom/muzhiwan/sdk/dynamic/utils/RefUtil;
.super Ljava/lang/Object;
.source "RefUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/muzhiwan/sdk/dynamic/utils/RefUtil;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "publicOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 96
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, v2

    .line 105
    :cond_1
    :goto_0
    return-object v0

    .line 99
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    .local v1, "ms":[Ljava/lang/reflect/Method;
    :goto_1
    array-length v4, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    .line 101
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 99
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v1    # "ms":[Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_1

    .restart local v1    # "ms":[Ljava/lang/reflect/Method;
    :cond_4
    move-object v0, v2

    .line 105
    goto :goto_0
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/muzhiwan/sdk/dynamic/utils/RefUtil;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 8
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 33
    :goto_0
    return-object v2

    .line 11
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 12
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 13
    :goto_1
    if-eqz v0, :cond_3

    .line 15
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 16
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 18
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 19
    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    goto :goto_1

    .line 21
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    goto :goto_1

    .line 23
    :catch_1
    move-exception v4

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    goto :goto_1

    .line 25
    :catch_2
    move-exception v4

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    goto :goto_1

    .line 27
    :catch_3
    move-exception v4

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 31
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    throw v3

    :cond_3
    move-object v2, v3

    .line 33
    goto :goto_0
.end method

.method public static getStaticFieldValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 65
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 66
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 76
    .local v4, "ownerClass":Ljava/lang/Class;
    array-length v5, p2

    new-array v0, v5, [Ljava/lang/Class;

    .line 78
    .local v0, "argsClass":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "j":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 79
    aget-object v5, p2, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v1

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v4, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 84
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    invoke-virtual {v3, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/Object;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v0, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 44
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    goto :goto_1

    .line 49
    :catch_1
    move-exception v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    goto :goto_1

    .line 51
    :catch_2
    move-exception v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    goto :goto_1

    .line 53
    :catch_3
    move-exception v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 57
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    throw v2
.end method

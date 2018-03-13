.class public Lcom/zqhy/sdk/model/b;
.super Ljava/lang/Object;
.source "CacheManager.java"


# static fields
.field private static volatile a:Lcom/zqhy/sdk/model/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static a()Lcom/zqhy/sdk/model/b;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/zqhy/sdk/model/b;->a:Lcom/zqhy/sdk/model/b;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/zqhy/sdk/model/b;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/zqhy/sdk/model/b;->a:Lcom/zqhy/sdk/model/b;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/zqhy/sdk/model/b;

    invoke-direct {v0}, Lcom/zqhy/sdk/model/b;-><init>()V

    sput-object v0, Lcom/zqhy/sdk/model/b;->a:Lcom/zqhy/sdk/model/b;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/zqhy/sdk/model/b;->a:Lcom/zqhy/sdk/model/b;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/zqhy/sdk/db/UserBean;)V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    const-string v1, "data_cache_username"

    invoke-virtual {v0, v1}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v0, ""

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    const-string v2, "data_cache_username"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zqhy/sdk/db/UserBean;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    return-void

    .line 57
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/zqhy/sdk/db/UserBean;->setAddTime(J)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zqhy/sdk/model/a;->d(Ljava/lang/String;)Z

    .line 70
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/zqhy/sdk/db/UserBean;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zqhy/sdk/model/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/db/UserBean;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zqhy/sdk/db/UserBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/zqhy/sdk/model/a;->a(Ljava/io/File;)Lcom/zqhy/sdk/model/a;

    move-result-object v0

    const-string v2, "data_cache_username"

    invoke-virtual {v0, v2}, Lcom/zqhy/sdk/model/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 117
    :goto_0
    return-object v0

    .line 92
    :cond_0
    const-string v2, "&"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 94
    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/zqhy/sdk/model/b;->b(Ljava/lang/String;)Lcom/zqhy/sdk/db/UserBean;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_1

    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Lcom/zqhy/sdk/model/b$1;

    invoke-direct {v0, p0}, Lcom/zqhy/sdk/model/b$1;-><init>(Lcom/zqhy/sdk/model/b;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v0, v1

    .line 117
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 145
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zq_sdk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "userCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_0
    return-object v1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/io/File;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/zqhy/sdk/model/d;->a()Lcom/zqhy/sdk/model/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zqhy/sdk/model/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zqhy/sdk/model/b;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zq_sdk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "saveApk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 163
    :cond_0
    return-object v0
.end method

.method public f()Ljava/io/File;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/zqhy/sdk/model/b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zq_sdk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Screenshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    :cond_0
    return-object v0
.end method

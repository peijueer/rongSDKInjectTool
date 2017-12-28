.class public Lcom/muzhiwan/plugin/api/LPluginSearcher;
.super Ljava/lang/Object;
.source "LPluginSearcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterApk([Ljava/io/File;)Ljava/util/List;
    .locals 6
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, p0, v2

    .line 64
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v0
.end method

.method public static listAllPluginFromDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "directory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/muzhiwan/plugin/bean/LPluginInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v3

    .line 26
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 27
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 30
    invoke-static {v2}, Lcom/muzhiwan/plugin/api/LPluginSearcher;->filterApk([Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/muzhiwan/plugin/bean/LPluginInfo;>;"
    new-instance v4, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;

    invoke-direct {v4, v0, p0, v3}, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;-><init>(Ljava/util/Collection;Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

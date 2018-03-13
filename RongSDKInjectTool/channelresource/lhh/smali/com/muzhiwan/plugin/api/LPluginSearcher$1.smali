.class final Lcom/muzhiwan/plugin/api/LPluginSearcher$1;
.super Lcom/muzhiwan/plugin/EasyFor;
.source "LPluginSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muzhiwan/plugin/api/LPluginSearcher;->listAllPluginFromDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/muzhiwan/plugin/EasyFor",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/Collection;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 35
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    iput-object p2, p0, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;->val$infos:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/muzhiwan/plugin/EasyFor;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public onNewElement(Ljava/io/File;)V
    .locals 5
    .param p1, "element"    # Ljava/io/File;

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 42
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;->val$context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/muzhiwan/plugin/LPluginTool;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :goto_0
    new-instance v3, Lcom/muzhiwan/plugin/bean/LPluginInfo;

    invoke-direct {v3}, Lcom/muzhiwan/plugin/bean/LPluginInfo;-><init>()V

    .line 49
    .local v3, "info":Lcom/muzhiwan/plugin/bean/LPluginInfo;
    invoke-virtual {v3, v0}, Lcom/muzhiwan/plugin/bean/LPluginInfo;->setApkIcon(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v3, v2}, Lcom/muzhiwan/plugin/bean/LPluginInfo;->setApkPath(Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;->val$infos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void

    .line 44
    .end local v3    # "info":Lcom/muzhiwan/plugin/bean/LPluginInfo;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onNewElement(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/muzhiwan/plugin/api/LPluginSearcher$1;->onNewElement(Ljava/io/File;)V

    return-void
.end method

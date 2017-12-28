.class Lcom/anzhi/plugin/loader/PluginManager$1;
.super Ljava/lang/Thread;
.source "PluginManager.java"


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginManager;

.field private final synthetic b:Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;

.field private final synthetic c:Landroid/content/pm/PackageInfo;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginManager;Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->a:Lcom/anzhi/plugin/loader/PluginManager;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->b:Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;

    iput-object p3, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->c:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->d:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->b:Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->b:Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;

    iget-object v1, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->c:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v2, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->a:Lcom/anzhi/plugin/loader/PluginManager;

    iget-object v3, p0, Lcom/anzhi/plugin/loader/PluginManager$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/anzhi/plugin/loader/PluginManager;->getPluginPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/anzhi/plugin/loader/OnPluginDownloadCallback;->onCheckPluginUpdate(ILjava/lang/String;)Z

    .line 255
    :cond_0
    return-void
.end method

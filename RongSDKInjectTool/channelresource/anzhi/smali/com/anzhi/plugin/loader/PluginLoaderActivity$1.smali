.class Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;
.super Ljava/lang/Object;
.source "PluginLoaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    const-string v1, "setActivity"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    const-string v1, "setHandler"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    invoke-static {v4}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->a(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)Landroid/os/Handler;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    const-string v1, "onCreate"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/anzhi/plugin/loader/PluginLoaderActivity$1;->a:Lcom/anzhi/plugin/loader/PluginLoaderActivity;

    invoke-static {v4}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->b(Lcom/anzhi/plugin/loader/PluginLoaderActivity;)Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/anzhi/plugin/loader/PluginLoaderActivity;->invoke(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

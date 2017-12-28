.class Lcom/anzhi/plugin/loader/PluginManager$3;
.super Ljava/lang/Thread;
.source "PluginManager.java"


# instance fields
.field final synthetic a:Lcom/anzhi/plugin/loader/PluginManager;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/anzhi/plugin/loader/PluginManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->a:Lcom/anzhi/plugin/loader/PluginManager;

    iput-object p2, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->b:Ljava/lang/String;

    .line 447
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/anzhi/plugin/loader/PluginManager$3;)Lcom/anzhi/plugin/loader/PluginManager;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->a:Lcom/anzhi/plugin/loader/PluginManager;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 451
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->a:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->b(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->a:Lcom/anzhi/plugin/loader/PluginManager;

    invoke-static {v0}, Lcom/anzhi/plugin/loader/PluginManager;->b(Lcom/anzhi/plugin/loader/PluginManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/anzhi/plugin/loader/PluginManager$3$1;

    iget-object v2, p0, Lcom/anzhi/plugin/loader/PluginManager$3;->b:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/anzhi/plugin/loader/PluginManager$3$1;-><init>(Lcom/anzhi/plugin/loader/PluginManager$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 461
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
